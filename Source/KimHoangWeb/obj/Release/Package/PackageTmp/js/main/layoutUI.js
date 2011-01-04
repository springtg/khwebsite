
function loadIframePage(pane, $Pane) {
    if (!$Pane) $Pane = $('.ui-layout-' + pane);
    var $Iframe = $Pane.attr('tagName') == 'IFRAME' ? $Pane : $Pane.find('IFRAME:first');
    if (!$Iframe.length) return; // no iframe
    var 
			src = $Iframe.attr('src')
		, page = $Iframe.attr('longdesc')
		;
    if (page && src != page) $Iframe.attr('src', page);
}
var myLayout;
$(document).ready(function () {
    myLayout = $("body").layout({
        defaults: {
            fxName: "slide"
   , fxSpeed: "slow"
   , spacing_closed: 14
   , initClosed: true
        }
, north: {
    size: '0%'
    , spacing_closed: 0
    , spacing_open: 0
}
, south: {
    fxName: "none"
    ,size:50
   , spacing_closed: 0
     , spacing_open: 0
    , resizable : true 
   , closable : false 
   , togglerLength_closed: "100%"
  , initClosed: false


}
, east: {
size:'0%'
    ,spacing_closed: 0
    ,spacing_open: 0
}
, west: {
    spacing_closed: 0
}
    });



    //loadIframePage('west');
});