//-------------------------------------------------------------------------------------------
//                                  formatter.date
//-------------------------------------------------------------------------------------------
(function ($) {
    $.formatter = {};
    $.formatter.date = {
        opts: {
            dayNames: [
			    "Sun", "Mon", "Tue", "Wed", "Thr", "Fri", "Sat",
			    "Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"
		    ],
            monthNames: [
			    "Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec",
			    "January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"
		    ],
            AmPm: ["am", "pm", "AM", "PM"],
            S: function (j) { return j < 11 || j > 13 ? ['st', 'nd', 'rd', 'th'][Math.min((j - 1) % 10, 3)] : 'th' },
            srcformat: 'm/d/Y',
            newformat: 'm/d/Y',
            masks: {
                ISO8601Long: "Y-m-d H:i:s",
                ISO8601Short: "Y-m-d",
                ShortDate: "n/j/Y",
                LongDate: "l, F d, Y",
                FullDateTime: "l, F d, Y g:i:s A",
                MonthDay: "F d",
                ShortTime: "g:i A",
                LongTime: "g:i:s A",
                SortableDateTime: "Y-m-d\\TH:i:s",
                UniversalSortableDateTime: "Y-m-d H:i:sO",
                YearMonth: "F, Y"
            }
        },
        DateFormat: function (format, date, newformat) {
            var token = /\\.|[dDjlNSwzWFmMntLoYyaABgGhHisueIOPTZcrU]/g,
			    timezone = /\b(?:[PMCEA][SDP]T|(?:Pacific|Mountain|Central|Eastern|Atlantic) (?:Standard|Daylight|Prevailing) Time|(?:GMT|UTC)(?:[-+]\d{4})?)\b/g,
			    timezoneClip = /[^-+\dA-Z]/g,
			    pad = function (value, length) {
			        value = String(value);
			        length = parseInt(length, 10) || 2;
			        while (value.length < length) { value = '0' + value; }
			        return value;
			    },
		    ts = { m: 1, d: 1, y: 1970, h: 0, i: 0, s: 0, u: 0 },
		    timestamp = 0, dM, k, hl,
		    dateFormat = ["i18n"];
            // Internationalization strings
            dateFormat["i18n"] = {
                dayNames: this.opts.dayNames,
                monthNames: this.opts.monthNames
            };
            if (format in this.opts.masks) { format = this.opts.masks[format]; }
            date = date.split(/[\\\/:_;.\t\T\s-]/);
            format = format.split(/[\\\/:_;.\t\T\s-]/);
            // parsing for month names
            for (k = 0, hl = format.length; k < hl; k++) {
                if (format[k] == 'M') {
                    dM = $.inArray(date[k], dateFormat.i18n.monthNames);
                    if (dM !== -1 && dM < 12) { date[k] = dM + 1; }
                }
                if (format[k] == 'F') {
                    dM = $.inArray(date[k], dateFormat.i18n.monthNames);
                    if (dM !== -1 && dM > 11) { date[k] = dM + 1 - 12; }
                }
                ts[format[k].toLowerCase()] = parseInt(date[k], 10);
            }
            ts.m = parseInt(ts.m, 10) - 1;
            var ty = ts.y;
            if (ty >= 70 && ty <= 99) { ts.y = 1900 + ts.y; }
            else if (ty >= 0 && ty <= 69) { ts.y = 2000 + ts.y; }
            timestamp = new Date(ts.y, ts.m, ts.d, ts.h, ts.i, ts.s, ts.u);
            if (newformat in this.opts.masks) {
                newformat = this.opts.masks[newformat];
            } else if (!newformat) {
                newformat = 'Y-m-d';
            }
            var 
		    G = timestamp.getHours(),
		    i = timestamp.getMinutes(),
		    j = timestamp.getDate(),
			n = timestamp.getMonth() + 1,
			o = timestamp.getTimezoneOffset(),
			s = timestamp.getSeconds(),
			u = timestamp.getMilliseconds(),
			w = timestamp.getDay(),
			Y = timestamp.getFullYear(),
			N = (w + 6) % 7 + 1,
			z = (new Date(Y, n - 1, j) - new Date(Y, 0, 1)) / 86400000,
			flags = {
			    // Day
			    d: pad(j),
			    D: dateFormat.i18n.dayNames[w],
			    j: j,
			    l: dateFormat.i18n.dayNames[w + 7],
			    N: N,
			    S: this.opts.S(j),
			    //j < 11 || j > 13 ? ['st', 'nd', 'rd', 'th'][Math.min((j - 1) % 10, 3)] : 'th',
			    w: w,
			    z: z,
			    // Week
			    W: N < 5 ? Math.floor((z + N - 1) / 7) + 1 : Math.floor((z + N - 1) / 7) || ((new Date(Y - 1, 0, 1).getDay() + 6) % 7 < 4 ? 53 : 52),
			    // Month
			    F: dateFormat.i18n.monthNames[n - 1 + 12],
			    m: pad(n),
			    M: dateFormat.i18n.monthNames[n - 1],
			    n: n,
			    t: '?',
			    // Year
			    L: '?',
			    o: '?',
			    Y: Y,
			    y: String(Y).substring(2),
			    // Time
			    a: G < 12 ? this.opts.AmPm[0] : this.opts.AmPm[1],
			    A: G < 12 ? this.opts.AmPm[2] : this.opts.AmPm[3],
			    B: '?',
			    g: G % 12 || 12,
			    G: G,
			    h: pad(G % 12 || 12),
			    H: pad(G),
			    i: pad(i),
			    s: pad(s),
			    u: u,
			    // Timezone
			    e: '?',
			    I: '?',
			    O: (o > 0 ? "-" : "+") + pad(Math.floor(Math.abs(o) / 60) * 100 + Math.abs(o) % 60, 4),
			    P: '?',
			    T: (String(timestamp).match(timezone) || [""]).pop().replace(timezoneClip, ""),
			    Z: '?',
			    // Full Date/Time
			    c: '?',
			    r: '?',
			    U: Math.floor(timestamp / 1000)
			};
            return newformat.replace(token, function ($0) {
                return $0 in flags ? flags[$0] : $0.substring(1);
            });
        },
        //var a = $.formatter.date.format('07/15/2010', 'm/d/Y', 'd-m-Y');
        format: function (value, srcformat, newformat) {
            newformat = newformat + '';
            newformat = newformat.replace('dd', 'd');
            newformat = newformat.replace('YYYY', 'Y');
            newformat = newformat.replace('YY', 'Y');
            newformat = newformat.replace('MM', 'm');
            newformat = newformat.replace('M', 'm');
            return this.DateFormat(srcformat, value.toLocaleString(), newformat);
        }
    };
} (jQuery));

//-------------------------------------------------------------------------------------------
//                                  formatter.string
//-------------------------------------------------------------------------------------------
(function ($) {
    $.formatter.string = {
        format: function jQuery_dotnet_string_format(text) {
            //check if there are two arguments in the arguments list
            if (arguments.length <= 1) {
                //if there are not 2 or more arguments there's nothing to replace
                //just return the text
                return text;
            }
            //decrement to move to the second argument in the array
            var tokenCount = arguments.length - 2;
            for (var token = 0; token <= tokenCount; ++token) {
                //iterate through the tokens and replace their placeholders from the text in order
                text = text.replace(new RegExp("\\{" + token + "\\}", "gi"), arguments[token + 1]);
            }
            return text;
        }
    };
} (jQuery));


//-------------------------------------------------------------------------------------------
//                                  formatter.number
//-------------------------------------------------------------------------------------------
(function ($) {
    function FormatData(dec, group, neg) {
        this.dec = dec;
        this.group = group;
        this.neg = neg;
    };

    function formatCodes(locale) {
        // default values
        var dec = ".";
        var group = ",";
        var neg = "-";

        if (locale == "us" ||
        locale == "ae" ||
        locale == "eg" ||
        locale == "il" ||
        locale == "jp" ||
        locale == "sk" ||
        locale == "th" ||
        locale == "cn" ||
        locale == "hk" ||
        locale == "tw" ||
        locale == "au" ||
        locale == "ca" ||
        locale == "gb" ||
        locale == "ar" ||
        locale == "in") {
            dec = ".";
            group = ",";
        }

        else if (locale == "de" ||
        locale == "vn" ||
        locale == "es" ||
        locale == "dk" ||
        locale == "at" ||
        locale == "gr" ||
        locale == "br") {
            dec = ",";
            group = ".";
        }
        else if (locale == "cz" ||
        locale == "fr" ||
        locale == "fi" ||
        locale == "ru" ||
        locale == "se") {
            group = " ";
            dec = ",";
        }
        else if (locale == "ch") {
            group = "'";
            dec = ".";
        }

        return new FormatData(dec, group, neg);
    };    

    //-------------------------------------------------------------------------------
    jQuery.fn.parse = function(options) {
        var options = jQuery.extend({}, jQuery.fn.parse.defaults, options);
        var formatData = formatCodes(options.locale.toLowerCase());
        var dec = formatData.dec;
        var group = formatData.group;
        var neg = formatData.neg;

        var valid = "1234567890.-";
        var array = [];
        this.each(function() {

            var text = new String(jQuery(this).text());
            if (jQuery(this).is(":input"))
                text = new String(jQuery(this).val());

            // now we need to convert it into a number
            while (text.indexOf(group) > -1)
                text = text.replace(group, '');
            text = text.replace(dec, ".").replace(neg, "-");
            var validText = "";
            var hasPercent = false;
            if (text.charAt(text.length - 1) == "%")
                hasPercent = true;
            for (var i = 0; i < text.length; i++) {
                if (valid.indexOf(text.charAt(i)) > -1)
                    validText = validText + text.charAt(i);
            }
            var number = new Number(validText);
            if (hasPercent) {
                number = number / 100;
                number = number.toFixed(validText.length - 1);
            }
            array.push(number);
        });
        return array;
    };

    jQuery.fn.format = function(options) {
        //iMarket ---------------------------------------------------------------------
        if(options.locale == null)
        {
            if(typeof(iMarkets)!='undefined')
                options.locale = iMarkets.Server.Culture1; // vn, us, ...
            else if(typeof(parent)!='undefined' && typeof(parent.iMarkets)!='undefined')
                options.locale = iMarkets.Server.Culture1; // vn, us, ...
        }
        //-----------------------------------------------------------------------------

        var options = jQuery.extend({}, jQuery.fn.format.defaults, options);
        var formatData = formatCodes(options.locale.toLowerCase());
        var dec = formatData.dec;
        var group = formatData.group;
        var neg = formatData.neg;
        var validFormat = "0#-,.";
        return this.each(function() {

            var text = new String(jQuery(this).text());
            if (jQuery(this).is(":input"))
                text = new String(jQuery(this).val());

            // strip all the invalid characters at the beginning and the end
            // of the format, and we'll stick them back on at the end
            // make a special case for the negative sign "-" though, so 
            // we can have formats like -$23.32
            var prefix = "";
            var negativeInFront = false;
            for (var i = 0; i < options.format.length; i++) {
                if (validFormat.indexOf(options.format.charAt(i)) == -1)
                    prefix = prefix + options.format.charAt(i);
                else if (i == 0 && options.format.charAt(i) == '-') {
                    negativeInFront = true;
                    continue;
                }
                else
                    break;
            }
            var suffix = "";
            for (var i = options.format.length - 1; i >= 0; i--) {
                if (validFormat.indexOf(options.format.charAt(i)) == -1)
                    suffix = options.format.charAt(i) + suffix;
                else
                    break;
            }

            options.format = options.format.substring(prefix.length);
            options.format = options.format.substring(0, options.format.length - suffix.length);


            // now we need to convert it into a number
            while (text.indexOf(group) > -1)
                text = text.replace(group, '');
            var number = new Number(text.replace(dec, ".").replace(neg, "-"));

            // special case for percentages
            if (suffix == "%")
                number = number * 100;

            var returnString = "";

            var decimalValue = number % 1;
            if (options.format.indexOf(".") > -1) {
                var decimalPortion = dec;
                var decimalFormat = options.format.substring(options.format.lastIndexOf(".") + 1);
                var decimalString = new String(decimalValue.toFixed(decimalFormat.length));
                decimalString = decimalString.substring(decimalString.lastIndexOf(".") + 1);
                for (var i = 0; i < decimalFormat.length; i++) {
                    if (decimalFormat.charAt(i) == '#' && decimalString.charAt(i) != '0') {
                        decimalPortion += decimalString.charAt(i);
                        continue;
                    }
                    else if (decimalFormat.charAt(i) == '#' && decimalString.charAt(i) == '0') {
                        var notParsed = decimalString.substring(i);
                        if (notParsed.match('[1-9]')) {
                            decimalPortion += decimalString.charAt(i);
                            continue;
                        }
                        else {
                            break;
                        }
                    }
                    else if (decimalFormat.charAt(i) == "0") {
                        decimalPortion += decimalString.charAt(i);
                    }
                }
                returnString += decimalPortion
            }
            else
                number = Math.round(number);

            var ones = Math.floor(number);
            if (number < 0)
                ones = Math.ceil(number);

            var onePortion = "";
            if (ones == 0) {
                onePortion = "0";
            }
            else {
                // find how many digits are in the group
                var onesFormat = "";
                if (options.format.indexOf(".") == -1)
                    onesFormat = options.format;
                else
                    onesFormat = options.format.substring(0, options.format.indexOf("."));
                var oneText = new String(Math.abs(ones));
                var groupLength = 9999;
                if (onesFormat.lastIndexOf(",") != -1)
                    groupLength = onesFormat.length - onesFormat.lastIndexOf(",") - 1;
                var groupCount = 0;
                for (var i = oneText.length - 1; i > -1; i--) {
                    onePortion = oneText.charAt(i) + onePortion;

                    groupCount++;

                    if (groupCount == groupLength && i != 0) {
                        onePortion = group + onePortion;
                        groupCount = 0;
                    }

                }
            }
            returnString = onePortion + returnString;

            // handle special case where negative is in front of the invalid
            // characters
            if (number < 0 && negativeInFront && prefix.length > 0) {
                prefix = neg + prefix;
            }
            else if (number < 0) {
                returnString = neg + returnString;
            }

            if (!options.decimalSeparatorAlwaysShown) {
                if (returnString.lastIndexOf(dec) == returnString.length - 1) {
                    returnString = returnString.substring(0, returnString.length - 1);
                }
            }
            returnString = prefix + returnString + suffix;

            if (jQuery(this).is(":input"))
                jQuery(this).val(returnString);
            else
                jQuery(this).text(returnString);

        });
    };

    jQuery.fn.parse.defaults = {
        locale: "us",
        decimalSeparatorAlwaysShown: false
    };

    jQuery.fn.format.defaults = {
        format: "#,###.00",
        locale: "us",
        decimalSeparatorAlwaysShown: false
    };
} (jQuery));

(function ($) {
    $.formatter.number = {
        format: function(number, options) {
            var $tmp = $("<input type='text'></input>");
            $tmp.attr('value', number);
            //iMarket ---------------------------------------------------------------------
            if(options.locale == null)
            {
                if(typeof(iMarkets.Server.Culture1)!='undefined') {
                    options.locale = iMarkets.Server.Culture1; // vn, us, ...
                }
//                if(typeof(parent)!='undefined' && typeof(parent.iMarkets.Server.Culture1)!='undefined') {
//                    options.locale = parent.iMarkets.Server.Culture1; // vn, us, ...
//                }
            }
            //-----------------------------------------------------------------------------
            $tmp.format(options);
            return $tmp.val();
        },
        formatScale: function(value, displayScale, displayDecimal, culture)
        {//#,###            
            var val = value * displayScale;
            $.preferCulture(culture);
            var numValue = $.parseFloat(val, "n", "en-US");
            ret = $.format(numValue, "n" + displayDecimal);
            return ret;
        }
    };
} (jQuery));