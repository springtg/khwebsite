<%@ Control Language="C#" AutoEventWireup="true" Inherits="Mods_Main_ucCloud" Codebehind="ucCloud.ascx.cs" %>
<script src="js/plugin/cloud/swfobject.js" type="text/javascript"></script>
<div class="widgetCloud">
<div id="wp-cumulus" >
  <script type="text/javascript">
      function show() {alert("dd");}
     var flashvars = {
         tcolor: "0x333333",
         tcolor2: "0x333333",
         hicolor: "0x000000",
         tspeed: "100",
         distr: "true",
         mode: "tags"
     };
     var params = {
         allowScriptAccess: "always"
     };
     params.wmode = "transparent";
     d = "<a href='" + encodeURIComponent("javascript::alert(24)") + "' class='tag-link-24' title='15 topics' style='font-size: 30pt;'>Dịch vụ quà tặng</a>" +
        "<a href='" + encodeURIComponent("javascript:void(0)") + "' class='tag-link-24' title='15 topics' style='font-size: 30pt;' onclick='show(); return false'>Thiết kế và In ấn</a>" +
        "<a href='" + encodeURIComponent("#") + "' class='tag-link-24' title='15 topics' style='font-size: 30pt;' onclick='show();'>Thiết kế web</a>" +
        "<a href='" + encodeURIComponent("#") + "' class='tag-link-24' title='15 topics' style='font-size: 30pt;' onclick='show();'>Phần mền quản lý</a>" +
        "<a href='" + encodeURIComponent("http://cfviet.co.cc/forum-f17/") + "' class='tag-link-24' title='15 topics' style='font-size: 30pt;'target='_blank'>Quảng cáo</a>";
     flashvars.tagcloud = "<tags>" + d + "</tags>";
     swfobject.embedSWF("js/plugin/cloud/tagcloud.swf?r=6483824", "wp-cumulus", "200", "75", "9", "expressInstall.swf", flashvars, params);
			</script>
			</div></div>
            