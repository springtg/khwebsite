<%@ Page Title="" Language="C#" MasterPageFile="~/Master/Main.master" AutoEventWireup="true" Inherits="index" Codebehind="Home.aspx.cs" %>

<%@ Register Src="~/Mods/Main/ucTopMenu.ascx" TagName="TopMenu" TagPrefix="kimhoang" %>
<%@ Register Src="~/Mods/Main/Address.ascx" TagName="Address" TagPrefix="kimhoang" %>
<%@ Register Src="~/Mods/Main/ucCompanyInfo.ascx" TagName="CompanyInfo" TagPrefix="kimhoang" %>
<%@ Register Src="~/Mods/Main/ucCloud.ascx" TagName="ucCloud" TagPrefix="kimhoang" %>
<%@ Register Src="Mods/Main/ucFlash.ascx" TagName="ucFlash" TagPrefix="kimhoang" %>
<%@ Register Src="Mods/Main/ucNavigate.ascx" TagName="ucNavigate" TagPrefix="kimhoang" %>
<%@ Register Src="~/Mods/Main/MenuLeft.ascx" TagName="MenuLeft" TagPrefix="kimhoang" %>
<%@ Register Src="Mods/Main/ucSupport.ascx" TagName="ucSupport" TagPrefix="kimhoang" %>
<%@ Register Src="Mods/Main/ucRate.ascx" TagName="ucRate" TagPrefix="kimhoang" %>
<%@ Register Src="Mods/Main/ucOnline.ascx" TagName="ucOnline" TagPrefix="kimhoang" %>
<%@ Register Src="Mods/Main/ucLinkSite.ascx" TagName="ucLinkSite" TagPrefix="kimhoang" %>
<asp:Content ID="Content1" ContentPlaceHolderID="TitleContentPlaceHolder" runat="Server">
Công ty thiết kế Kim Hoàng
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="HeaderPlaceHolder" runat="Server">
    <link rel="Shortcut Icon" href="Img/logokh.ico" type="image/x-icon" />
    <link href="Css/Menu.css" rel="stylesheet" type="text/css" />
    <link href="Css/Panel/screen.css" rel="stylesheet" type="text/css" />
    <link href="Css/Panel/screen.css.m.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript">
        /*
        *#######################
        *		 ON PAGE LOAD
        *#######################
        */
        $(document).ready(function () {

            // init the Sortables
            $(".column").sortable({
                connectWith: $(".column")
		, placeholder: 'widget-placeholder'
		, cursor: 'move'
                //	use a helper-clone that is append to 'body' so is not 'contained' by a pane
		, helper: function (evt, ui) { return $(ui).clone().appendTo('body').show(); }
		, over: function (evt, ui) {
		    var 
									$target_UL = $(ui.placeholder).parent()
								, targetWidth = $target_UL.width()
								, helperWidth = ui.helper.width()
								, padding = parseInt(ui.helper.css('paddingLeft'))
												+ parseInt(ui.helper.css('paddingRight'))
												+ parseInt(ui.helper.css('borderLeftWidth'))
												+ parseInt(ui.helper.css('borderRightWidth'))
								;
		    //if (( (helperWidth + padding) - targetWidth ) > 20)
		    ui.helper
										.height('auto')
										.width(targetWidth - padding)
									;
		}
            });

            $("#draggable").draggable({
                //	use a helper-clone that is append to 'body' so is not 'contained' by a pane
                helper: function () { return $(this).clone().appendTo('body').css('zIndex', 5).show(); }
		, cursor: 'move'
            });

            $('#droppable').droppable({
                accept: '#draggable'
		, drop: function () { alert('The Draggable was Dropped!'); }
            });

        });
    </script>
    <script src="Mods/Main/JS/Main.js" type="text/javascript"></script>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MenuContentPlaceHolder" runat="Server">
    <kimhoang:TopMenu ID="TopMenu1" runat="server" />
    <kimhoang:CompanyInfo ID="CompanyInfo" runat="server" />
    <kimhoang:ucCloud ID="ucCloud" runat="server" />
    <kimhoang:Address ID="Address" runat="server" />
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="HeaderContentPlaceHolder" runat="Server">
    <kimhoang:ucFlash ID="ucFlash1" runat="server" />
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="LeftContentPlaceHolder" runat="Server">
    <div style="height: 100%; width: 100%;" class="column resizable">
        <div class="module green-module ">
            <div class="moduleFrame moduleunHighlight">
                <div class="moduleHeaderContainer">
                    <div class="moduleHeader green" style="cursor: move;">
                        <a class="showHide" href="javascript:void(0)" style="visibility: hidden; width: 0pt;">
                             <img width="15" height="15" src="Img/s.gif" class="icon actions-window-collapse"
                                alt="Collapse" title="Collapse"></a> <a class="ico" href="javascript:void(0)" style="display: block;">
                                    <img width="26" height="26" class="hicon" src="Img/chat.png"
                                        style="display: block;"></a>
                        <h2 class="title">
                            DANH MỤC</h2>
                    </div>
                </div>
                <div class="moduleContent socialwizard socialNetworkWizard" id="m_1713525360">
                    <div class="content">
                       <kimhoang:MenuLeft ID="MenuLeft" runat="server" />
                    </div>
                </div>
            </div>
        </div>
        <div class="module green-module ">
            <div class="moduleFrame moduleunHighlight">
                <div class="moduleHeaderContainer">
                    <div class="moduleHeader green" style="cursor: move;">
                        <a class="showHide" href="javascript:void(0)" style="visibility: hidden; width: 0pt;">
                           <img width="15" height="15" src="Img/s.gif" class="icon actions-window-collapse"
                                alt="Collapse" title="Collapse"></a> <a class="ico" href="javascript:void(0)" style="display: block;">
                                    <img width="26" height="26" class="hicon" src="Img/chat.png"
                                        style="display: block;"></a>
                        <h2 class="title">
                            LIÊN KẾT SITE</h2>
                    </div>
                </div>
                <div class="moduleContent socialwizard socialNetworkWizard" id="Div1">
                    <div class="content">
                        <kimhoang:ucLinkSite ID="ucLinkSite" runat="server" />
                        <div class="loader even" style="display: none;">
                            Loading...</div>
                    </div>
                </div>
            </div>
        </div>
        <div class="module green-module ">
            <div class="moduleFrame moduleunHighlight">
                <div class="moduleHeaderContainer">
                    <div class="moduleHeader green" style="cursor: move;">
                        <a class="showHide" href="javascript:void(0)" style="visibility: hidden; width: 0pt;">
                           <img width="15" height="15" src="Img/s.gif" class="icon actions-window-collapse"
                                alt="Collapse" title="Collapse"></a> <a class="ico" href="javascript:void(0)" style="display: block;">
                                    <img width="26" height="26" class="hicon" src="Img/chat.png"
                                        style="display: block;"></a>
                        <h2 class="title">
                            THÔNG TIN TRUY CẬP</h2>
                    </div>
                </div>
                <div class="moduleContent socialwizard socialNetworkWizard" id="Div5">
                    <div class="content">
                        <kimhoang:ucOnline ID="ucRate1" runat="server" />
                        <div class="loader even" style="display: none;">
                            Loading...</div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content6" ContentPlaceHolderID="CenterContentPlaceHolder" runat="Server">
    <div style="height: 100%; width: 100%;" class="column resizable">
        <div class="module green-module ">
            <div class="moduleFrame moduleunHighlight">
                <div class="moduleHeaderContainer">
                    <div class="moduleHeader green" style="cursor: move;">
                        <a class="showHide" href="javascript:void(0)" style="visibility: hidden; width: 0pt;">
 <img width="15" height="15" src="Img/s.gif" class="icon actions-window-collapse"
                                alt="Collapse" title="Collapse"></a> <a class="ico" href="javascript:void(0)" style="display: block;">
                                    <img width="26" height="26" class="hicon" src="Img/chat.png"
                                        style="display: block;"></a>
                        <h2 id="ContentTitle" class="title">
                         </h2>
                    </div>
                </div>
                <div class="moduleContent socialwizard socialNetworkWizard" id="KimHoangMainContent"
                    style="height: 731px">
                    <div class="content">
                        <div class="loader even" style="display: none;">
                            Loading...</div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content7" ContentPlaceHolderID="RightContentPlaceHolder" runat="Server">
    <div style="height: 457px; width: 100%;" class="column resizable">
        <div class="module green-module ">
            <div class="moduleFrame moduleunHighlight">
                <div class="moduleHeaderContainer">
                    <div class="moduleHeader green" style="cursor: move;">
                        <a class="showHide" href="javascript:void(0)" style="visibility: hidden; width: 0pt;">
                           
                            <img width="15" height="15" src="Img/s.gif" class="icon actions-window-collapse"
                                alt="Collapse" title="Collapse"></a> <a class="ico" href="javascript:void(0)" style="display: block;">
                                    <img width="26" height="26" class="hicon" src="Img/chat.png"
                                        style="display: block;"></a>
                        <h2 class="title">
                            HỖ TRỢ TRỰC TUYẾN</h2>
                    </div>
                </div>
                <div class="moduleContent socialwizard socialNetworkWizard" id="Div2">
                    <div class="content">
                        <kimhoang:ucSupport ID="ucSupport1" runat="server" />
                        <div class="loader even" style="display: none;">
                            Loading...</div>
                    </div>
                </div>
            </div>
        </div>
        <div class="module green-module ">
            <div class="moduleFrame moduleunHighlight">
                <div class="moduleHeaderContainer">
                    <div class="moduleHeader green" style="cursor: move;">
                        <a class="showHide" href="javascript:void(0)" style="visibility: hidden; width: 0pt;">
                            <img width="15" height="15" src="Img/s.gif" class="icon actions-window-collapse"
                                alt="Collapse" title="Collapse"></a> <a class="ico" href="javascript:void(0)" style="display: block;">
                                    <img width="26" height="26" class="hicon" src="Img/chat.png"
                                        style="display: block;"></a>
                        <h2 class="title">
                            TIN TỨC</h2>
                    </div>
                </div>
                <div class="moduleContent socialwizard socialNetworkWizard" id="Div3">
                  
                    <div class="content">
                    Đang cập nhật
                        <div class="loader even" style="display: none;">
                            Loading...</div>
                        <div class="setup goodCenter">
                            .................
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="module green-module ">
            <div class="moduleFrame moduleunHighlight">
                <div class="moduleHeaderContainer">
                    <div class="moduleHeader green" style="cursor: move;">
                        <a class="showHide" href="javascript:void(0)" style="visibility: hidden; width: 0pt;">
                             <img width="15" height="15" src="Img/s.gif" class="icon actions-window-collapse"
                                alt="Collapse" title="Collapse"></a> <a class="ico" href="javascript:void(0)" style="display: block;">
                                    <img width="26" height="26" class="hicon" src="Img/chat.png"
                                        style="display: block;"></a>
                        <h2 class="title">
                            ĐÁNH GIÁ</h2>
                    </div>
                </div>
                <div class="moduleContent socialwizard socialNetworkWizard" id="Div6">
                   
                    <div class="content">
                    Đang cập nhật
                        <div class="loader even" style="display: none;">
                            Loading...</div>
                        <div class="setup goodCenter">
                            .................
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="module green-module ">
            <div class="moduleFrame moduleunHighlight">
                <div class="moduleHeaderContainer">
                    <div class="moduleHeader green" style="cursor: move;">
                        <a class="showHide" href="javascript:void(0)" style="visibility: hidden; width: 0pt;">
                           <img width="15" height="15" src="Img/s.gif" class="icon actions-window-collapse"
                                alt="Collapse" title="Collapse"></a> <a class="ico" href="javascript:void(0)" style="display: block;">
                                    <img width="26" height="26" class="hicon" src="Img/chat.png"
                                        style="display: block;"></a>
                        <h2 class="title">
                            TỈ GIÁ</h2>
                    </div>
                </div>
                <div class="moduleContent socialwizard socialNetworkWizard" id="Div7">
                    <div class="content">
                        <kimhoang:ucRate ID="ucRate" runat="server" />
                        <div class="loader even" style="display: none;">
                            Loading...</div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
