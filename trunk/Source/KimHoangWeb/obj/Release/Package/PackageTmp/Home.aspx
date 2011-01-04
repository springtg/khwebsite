<%@ Page Title="" Language="C#" MasterPageFile="~/Master/Main.master" AutoEventWireup="true"
    CodeFile="Home.aspx.cs" Inherits="index" %>

<%@ Register Src="~/Mods/Main/ucTopMenu.ascx" TagName="TopMenu" TagPrefix="kimhoang" %>
<%@ Register Src="~/Mods/Main/Address.ascx" TagName="Address" TagPrefix="kimhoang" %>
<%@ Register Src="~/Mods/Main/ucCompanyInfo.ascx" TagName="CompanyInfo" TagPrefix="kimhoang" %>
<%@ Register Src="~/Mods/Main/ucCloud.ascx" TagName="ucCloud" TagPrefix="kimhoang" %>
<%@ Register Src="Mods/Main/ucFlash.ascx" TagName="ucFlash" TagPrefix="kimhoang" %>
<%@ Register Src="Mods/Main/ucNavigate.ascx" TagName="ucNavigate" TagPrefix="kimhoang" %>
<%@ Register src="Mods/Main/ucSupport.ascx" tagname="ucSupport" tagprefix="kimhoang" %>
<%@ Register src="Mods/Main/ucRate.ascx" tagname="ucRate" tagprefix="kimhoang" %>
<%@ Register src="Mods/Main/ucOnline.ascx" tagname="ucOnline" tagprefix="kimhoang" %>
<asp:Content ID="Content1" ContentPlaceHolderID="TitleContentPlaceHolder" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="HeaderPlaceHolder" runat="Server">
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
                    <img   width="15" height="15" src="http://cdn.netvibes.com/img/s.gif" class="icon actions-window-collapse" alt="Collapse" title="Collapse"></a>
                    <a class="ico" href="javascript:void(0)" style="display: block;">
                    <img width="16" height="16" class="hicon" src="http://cdn.netvibes.com/proxy/favIcon.php?url=http%3A%2F%2Fcdn.netvibes.com%2Fimg%2Fwand.png"
                                                        style="display: block;"></a>
                                                        <h2 class="title">
                                                            DANH MỤC</h2>
                    </div>
                </div>
               
                <div class="moduleContent socialwizard socialNetworkWizard" id="m_1713525360">
                  
                    <div class="content">
                       <div class="art-vmenublockcontent">
                            <div class="art-vmenublockcontent-body">
                                <!-- block-content -->
                                <ul class="art-vmenu">
                                    <li class=""><a href="" class=""><span class="l"></span><span class="r">
                                    </span><span class="t">Dịch vụ tư vấn</span></a> </li>
                                    <li class="art-vmenu-separator"><span class="art-vmenu-separator-span"></span></li>
                                    <li class=""><a href="" class=""><span class="l"></span><span class="r">
                                    </span><span class="t">Dịch vụ quà tặng</span></a>
                                        <ul class="">
                                            <li class="art-vmenu-separator art-vmenu-separator art-vmenu-separator-first"><span
                                                class="art-vmenu-separator-span"></span></li>
                                            <li class=""><a href="page.html?" class="">Top 10</a></li>
                                        </ul>
                                    </li>
                                    <li class="art-vmenu-separator"><span class="art-vmenu-separator-span"></span></li>
                                    <li class=" active"><a href="page.html?i3" class=" active"><span class="l"></span><span
                                        class="r"></span><span class="t">Dịch vụ thiết kế & in ấn</span></a>
                                        <ul class=" active">
                                            <li class="art-vmenu-separator art-vmenu-separator art-vmenu-separator-first"><span
                                                class="art-vmenu-separator-span"></span></li>
                                            <li class=""><a href="page.html?i3s1" class="">Lịch tết</a></li><li class="art-vsubmenu-separator">
                                                <span class="art-vsubmenu-separator-span"></span></li>
                                            <li class=" active"><a class=" active" href="page.html">Sổ tay</a></li><li class="art-vsubmenu-separator">
                                                <span class="art-vsubmenu-separator-span"></span></li>
                                            <li class=""><a href="page.html?i3s3" class="">Prochure</a></li>
                                        </ul>
                                    </li>
                                    <li class="art-vmenu-separator"><span class="art-vmenu-separator-span"></span></li>
                                    <li class=""><a href="page.html?i4" class=""><span class="l"></span><span class="r">
                                    </span><span class="t">Dịch vụ phần mền</span></a> </li>
                                    <li class="art-vmenu-separator"><span class="art-vmenu-separator-span"></span></li>
                                    <li class=""><a href="page.html?i5" class=""><span class="l"></span><span class="r">
                                    </span><span class="t">Thiết kế website</span></a>
                                        <ul class="">
                                            <li class="art-vmenu-separator art-vmenu-separator art-vmenu-separator-first"><span
                                                class="art-vmenu-separator-span"></span></li>
                                            <li class=""><a href="page.html?i5s1" class="">2008</a>
                                                <ul class="">
                                                    <li class="art-vsubmenu-separator art-vsubmenu-separator art-vmenu-separator-first">
                                                        <span class="art-vsubmenu-separator-span"></span></li>
                                                    <li class=""><a href="page.html?i5s1s1" class="">January</a></li><li class="art-vsubmenu-separator">
                                                        <span class="art-vsubmenu-separator-span"></span></li>
                                                    <li class=""><a href="page.html?i5s1s2" class="">February</a></li><li class="art-vsubmenu-separator">
                                                        <span class="art-vsubmenu-separator-span"></span></li>
                                                    <li class=""><a href="page.html?i5s1s3" class="">March</a></li>
                                                </ul>
                                            </li>
                                            <li class="art-vsubmenu-separator"><span class="art-vsubmenu-separator-span"></span>
                                            </li>
                                            <li class=""><a href="page.html?i5s2" class="">2007</a>
                                                <ul class="">
                                                    <li class="art-vsubmenu-separator art-vsubmenu-separator art-vmenu-separator-first">
                                                        <span class="art-vsubmenu-separator-span"></span></li>
                                                    <li class=""><a href="page.html?i5s2s1" class="">January</a></li><li class="art-vsubmenu-separator">
                                                        <span class="art-vsubmenu-separator-span"></span></li>
                                                    <li class=""><a href="page.html?i5s2s2" class="">February</a></li><li class="art-vsubmenu-separator">
                                                        <span class="art-vsubmenu-separator-span"></span></li>
                                                    <li class=""><a href="page.html?i5s2s3" class="">March</a></li>
                                                </ul>
                                            </li>
                                            <li class="art-vsubmenu-separator"><span class="art-vsubmenu-separator-span"></span>
                                            </li>
                                            <li class=""><a href="page.html?i5s3" class="">2006</a>
                                                <ul class="">
                                                    <li class="art-vsubmenu-separator art-vsubmenu-separator art-vmenu-separator-first">
                                                        <span class="art-vsubmenu-separator-span"></span></li>
                                                    <li class=""><a href="page.html?i5s3s1" class="">January</a></li><li class="art-vsubmenu-separator">
                                                        <span class="art-vsubmenu-separator-span"></span></li>
                                                    <li class=""><a href="page.html?i5s3s2" class="">February</a></li><li class="art-vsubmenu-separator">
                                                        <span class="art-vsubmenu-separator-span"></span></li>
                                                    <li class=""><a href="page.html?i5s3s3" class="">March</a></li>
                                                </ul>
                                            </li>
                                        </ul>
                                    </li>
                                    <li class="art-vmenu-separator"><span class="art-vmenu-separator-span"></span></li>
                                    <li class=""><a href="page.html?i6" class=""><span class="l"></span><span class="r">
                                    </span><span class="t">Hosting/Mail</span></a> </li>
                                    <li class="art-vmenu-separator"><span class="art-vmenu-separator-span"></span></li>
                                    <li class=""><a href="page.html?i7" class=""><span class="l"></span><span class="r">
                                    </span><span class="t">About</span></a> </li>
                                    <li class="art-vmenu-separator"><span class="art-vmenu-separator-span"></span></li>
                                    <li class=""><a href="page.html?i8" class=""><span class="l"></span><span class="r">
                                    </span><span class="t">Contact</span></a> </li>
                                </ul>
                                <!-- /block-content -->
                                <div class="cleared">
                                </div>
                            </div>
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
                    <img   width="15" height="15" src="http://cdn.netvibes.com/img/s.gif" class="icon actions-window-collapse" alt="Collapse" title="Collapse"></a>
                    <a class="ico" href="javascript:void(0)" style="display: block;">
                    <img width="16" height="16" class="hicon" src="http://cdn.netvibes.com/proxy/favIcon.php?url=http%3A%2F%2Fcdn.netvibes.com%2Fimg%2Fwand.png"
                                                        style="display: block;"></a>
                                                        <h2 class="title">
                                                           LIÊN KẾT SITE</h2>
                    </div>
                </div>
               
                <div class="moduleContent socialwizard socialNetworkWizard" id="Div1">
                    <div class="title">
                        <strong>29/5/2010</strong>
                    </div>
                    <div class="step">
                        Title</div>
                    <div class="step1">
                        Detail</div>
                    <div class="step2" style="display: none;">
                    </div>
                    <div class="content">
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
                    <img   width="15" height="15" src="http://cdn.netvibes.com/img/s.gif" class="icon actions-window-collapse" alt="Collapse" title="Collapse"></a>
                    <a class="ico" href="javascript:void(0)" style="display: block;">
                    <img width="16" height="16" class="hicon" src="http://cdn.netvibes.com/proxy/favIcon.php?url=http%3A%2F%2Fcdn.netvibes.com%2Fimg%2Fwand.png"
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
     <div class="module red-module ">
            <div class="moduleFrame moduleunHighlight">
                <div class="moduleHeaderContainer">
                    <div class="moduleHeader red" style="cursor: move;">
                    <a class="showHide" href="javascript:void(0)" style="visibility: hidden; width: 0pt;">
                    <img   width="15" height="15" src="http://cdn.netvibes.com/img/s.gif" class="icon actions-window-collapse" alt="Collapse" title="Collapse"></a>
                    <a class="ico" href="javascript:void(0)" style="display: block;">
                    <img width="16" height="16" class="hicon" src="http://cdn.netvibes.com/proxy/favIcon.php?url=http%3A%2F%2Fcdn.netvibes.com%2Fimg%2Fwand.png"
                                                        style="display: block;"></a>
                                                        <h2 class="title">
                                                         -----</h2>
                    </div>
                </div>
               
                <div class="moduleContent socialwizard socialNetworkWizard" id="KimHoangMainContent" style="height:497px">
                    <div class="title">
                        <strong>29/5/2010</strong>
                    </div>
                    <div class="step">
                        Title</div>
                    <div class="step1">
                        Detail</div>
                    <div class="step2" style="display: none;">
                    </div>
                    <div class="content">
                        <div class="loader even" style="display: none;">
                            Loading...</div>
                        <div class="setup goodCenter">
                            .................
                        </div>
                       
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
                    <img   width="15" height="15" src="http://cdn.netvibes.com/img/s.gif" class="icon actions-window-collapse" alt="Collapse" title="Collapse"></a>
                    <a class="ico" href="javascript:void(0)" style="display: block;">
                    <img width="16" height="16" class="hicon" src="http://cdn.netvibes.com/proxy/favIcon.php?url=http%3A%2F%2Fcdn.netvibes.com%2Fimg%2Fwand.png"
                                                        style="display: block;"></a>
                                                        <h2 class="title">
                                                          HỖ TRỢ TRỰC TUYẾN</h2>
                    </div>
                </div>
                <div class="moduleContent socialwizard socialNetworkWizard" id="Div2">
                    <div class="content">
                    <kimhoang:ucsupport ID="ucSupport1" runat="server" />
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
                    <img   width="15" height="15" src="http://cdn.netvibes.com/img/s.gif" class="icon actions-window-collapse" alt="Collapse" title="Collapse"></a>
                    <a class="ico" href="javascript:void(0)" style="display: block;">
                    <img width="16" height="16" class="hicon" src="http://cdn.netvibes.com/proxy/favIcon.php?url=http%3A%2F%2Fcdn.netvibes.com%2Fimg%2Fwand.png"
                                                        style="display: block;"></a>
                                                        <h2 class="title">
                                                            TIN TỨC</h2>
                    </div>
                </div>
               
                <div class="moduleContent socialwizard socialNetworkWizard" id="Div3">
                    <div class="title">
                        <strong>29/5/2010</strong>
                    </div>
                    <div class="step">
                        Title</div>
                    <div class="step1">
                        Detail</div>
                    <div class="step2" style="display: none;">
                    </div>
                    <div class="content">
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
                    <img   width="15" height="15" src="http://cdn.netvibes.com/img/s.gif" class="icon actions-window-collapse" alt="Collapse" title="Collapse"></a>
                    <a class="ico" href="javascript:void(0)" style="display: block;">
                    <img width="16" height="16" class="hicon" src="http://cdn.netvibes.com/proxy/favIcon.php?url=http%3A%2F%2Fcdn.netvibes.com%2Fimg%2Fwand.png"
                                                        style="display: block;"></a>
                                                        <h2 class="title">
                                                            ĐÁNH GIÁ</h2>
                    </div>
                </div>
               
                <div class="moduleContent socialwizard socialNetworkWizard" id="Div6">
                    <div class="title">
                        <strong>29/5/2010</strong>
                    </div>
                    <div class="step">
                        Title</div>
                    <div class="step1">
                        Detail</div>
                    <div class="step2" style="display: none;">
                    </div>
                    <div class="content">
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
                    <img   width="15" height="15" src="http://cdn.netvibes.com/img/s.gif" class="icon actions-window-collapse" alt="Collapse" title="Collapse"></a>
                    <a class="ico" href="javascript:void(0)" style="display: block;">
                    <img width="16" height="16" class="hicon" src="http://cdn.netvibes.com/proxy/favIcon.php?url=http%3A%2F%2Fcdn.netvibes.com%2Fimg%2Fwand.png"
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
