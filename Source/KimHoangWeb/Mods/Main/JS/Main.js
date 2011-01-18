$(function () {
    KimHoang.Mods.Main.LoadMainPage();
    $('ul.art-menu li a').live('click', function () {
        KimHoang.Mods.Main.SelectTopMenu($(this));
    });
 
});

if (typeof KimHoang == 'undefined')
    KimHoang = {};
if (typeof KimHoang.Mods == 'undefined')
    KimHoang.Mods = {};
//===============================//
KimHoang.Mods.Main = {
    SelectTopMenu: function (aObj) {
        var link = $(aObj).attr('link');
        var target = $(aObj).attr('target');
        var tabid = $(aObj).attr('tabid');
        var title = $(aObj).children().html();
        $("#ContentTitle").html(title);
        this.LoadIframe(link);
        return false;
    },
    LoadIframe: function (link) {
        var iframe = $.formatter.string.format('<iframe id="Kimhoang-iFrame" scrolling="auto" class="Kimhoang-iFrame" frameborder="0" width="100%" height="100%" src="{0}"></iframe>', link);
        $("#KimHoangMainContent").html(iframe);
    },
    LoadMainPage: function () {
        var iframe = $.formatter.string.format('<iframe id="Kimhoang-iFrame" scrolling="auto" class="Kimhoang-iFrame" frameborder="0" width="100%" height="100%" src="{0}"></iframe>', 'Mods/Main/Main.aspx');
        $("#KimHoangMainContent").html(iframe);
        $("#ContentTitle").html('Trang chủ');

    }
}
//===================================//
KimHoang.Mods.LeftMenu = {
    Init: function () {
        $('#khMenuLeft>li>a').live('click', function () {
            KimHoang.Mods.LeftMenu.SelectMenu($(this));
        });
    },
    SelectMenu: function (aObj) {
        var detail = $(aObj).attr('detail');      
        $("#KimHoangMainContent").html(detail);
        $("#ContentTitle").html($(aObj).html());
    }
}