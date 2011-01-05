<%@ Page Title="" Language="C#" MasterPageFile="~/Master/Main.master" AutoEventWireup="true" Inherits="index" Codebehind="Home.aspx.cs" %>

<%@ Register Src="~/Mods/Main/ucTopMenu.ascx" TagName="TopMenu" TagPrefix="kimhoang" %>
<%@ Register Src="~/Mods/Main/Address.ascx" TagName="Address" TagPrefix="kimhoang" %>
<%@ Register Src="~/Mods/Main/ucCompanyInfo.ascx" TagName="CompanyInfo" TagPrefix="kimhoang" %>
<%@ Register Src="~/Mods/Main/ucCloud.ascx" TagName="ucCloud" TagPrefix="kimhoang" %>
<%@ Register Src="Mods/Main/ucFlash.ascx" TagName="ucFlash" TagPrefix="kimhoang" %>
<%@ Register Src="Mods/Main/ucNavigate.ascx" TagName="ucNavigate" TagPrefix="kimhoang" %>
<%@ Register Src="Mods/Main/ucSupport.ascx" TagName="ucSupport" TagPrefix="kimhoang" %>
<%@ Register Src="Mods/Main/ucRate.ascx" TagName="ucRate" TagPrefix="kimhoang" %>
<%@ Register Src="Mods/Main/ucOnline.ascx" TagName="ucOnline" TagPrefix="kimhoang" %>
<%@ Register Src="Mods/Main/ucLinkSite.ascx" TagName="ucLinkSite" TagPrefix="kimhoang" %>
<asp:Content ID="Content1" ContentPlaceHolderID="TitleContentPlaceHolder" runat="Server">
Công ty thiết kế Kim Hoàng
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
                            <img width="15" height="15" src="http://cdn.netvibes.com/img/s.gif" class="icon actions-window-collapse"
                                alt="Collapse" title="Collapse"></a> <a class="ico" href="javascript:void(0)" style="display: block;">
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
                                    <li class=""><a href="" class=" active"><span class="l"></span><span class="r"></span><span
                                        class="t">Dịch vụ sáng tạo</span></a>
                                        <ul class=" active">
                                            <li class="art-vmenu-separator art-vmenu-separator art-vmenu-separator-first"><span
                                                class="art-vmenu-separator-span"></span></li>
                                            <li class=""><a href="page.html?i3s1" class="">Bộ nhận diện thương hiệu</a></li><li
                                                class="art-vsubmenu-separator"><span class="art-vsubmenu-separator-span"></span>
                                            </li>
                                            <li class=" active"><a class=" active" href="page.html">Bộ nhận diện sản phẩm</a></li><li
                                                class="art-vsubmenu-separator"><span class="art-vsubmenu-separator-span"></span>
                                            </li>
                                            <li class=""><a href="page.html?i3s3" class="">Ấn phẩm văn phòng</a></li
                                             <li class=""><a href="page.html?i3s3" class="">Thiết kế logo</a></li>
                                        </ul>
                                    </li>
                                    <li class="art-vmenu-separator"><span class="art-vmenu-separator-span"></span></li>
                                    <li class=""><a href="" class="active"><span class="l"></span><span class="r"></span><span
                                        class="t">Thiết kế Website</span></a>
                                        <ul class=" active">
                                            <li class="art-vmenu-separator art-vmenu-separator art-vmenu-separator-first"><span
                                                class="art-vmenu-separator-span"></span></li>
                                            <li class=""><a href="page.html?i3s1" class="">Thiết kế web</a></li><li class="art-vsubmenu-separator">
                                                <span class="art-vsubmenu-separator-span"></span></li>
                                            <li class=" active"><a class=" active" href="page.html">Giải pháp Email</a></li><li class="art-vsubmenu-separator">
                                                <span class="art-vsubmenu-separator-span"></span></li>
                                            <li class=""><a href="page.html?i3s3" class="">Domain-Hosting</a></li>
                                             <li class=""><a href="page.html?i3s3" class="">Bảo trì cập nhật</a></li>
                                        </ul>
                                    </li>
                                    <li class="art-vmenu-separator"><span class="art-vmenu-separator-span"></span></li>
                                    <li class=" active"><a href="page.html?i3" class=" active"><span class="l"></span><span
                                        class="r"></span><span class="t">Quảng cáo truyền thông</span></a>
                                        <ul class=" active">
                                            <li class="art-vmenu-separator art-vmenu-separator art-vmenu-separator-first"><span
                                                class="art-vmenu-separator-span"></span></li>
                                            <li class=""><a href="page.html?i3s1" class="">Quảng bá Google</a></li><li class="art-vsubmenu-separator">
                                                <span class="art-vsubmenu-separator-span"></span></li>
                                            <li class=" active"><a class=" active" href="page.html">Quảng bá Facebook</a></li><li class="art-vsubmenu-separator">
                                                <span class="art-vsubmenu-separator-span"></span></li>
                                            <li class=""><a href="page.html?i3s3" class="">Quảng bá Banner</a></li>
                                             <li class=""><a href="page.html?i3s3" class="">Quảng bá Web</a></li>
                                              <li class=""><a href="page.html?i3s3" class="">Tiếp thị trực tuyến </a></li>
                                               <li class=""><a href="page.html?i3s3" class="">Dịch vụ nội dung </a></li>
                                                <li class=""><a href="page.html?i3s3" class="">Quảng cáo báo chí </a></li>
                                        </ul>
                                    </li>
                                    <li class="art-vmenu-separator"><span class="art-vmenu-separator-span"></span></li>
                                    <li class=""><a href="page.html?i4" class="active"><span class="l"></span><span class="r">
                                    </span><span class="t">Dịch vụ quà tặng quảng cáo</span></a>
                                     <ul class=" active">
                                            <li class="art-vmenu-separator art-vmenu-separator art-vmenu-separator-first"><span
                                                class="art-vmenu-separator-span"></span></li>
                                            <li class=""><a href="page.html?i3s1" class="">Cập táp văn phòng</a></li><li class="art-vsubmenu-separator">
                                                <span class="art-vsubmenu-separator-span"></span></li>
                                            <li class=" active"><a class=" active" href="page.html">Sổ tay các loại</a></li><li class="art-vsubmenu-separator">
                                                <span class="art-vsubmenu-separator-span"></span></li>
                                            <li class=""><a href="page.html?i3s3" class="">Áo mưa</a></li>
                                             <li class=""><a href="page.html?i3s3" class="">Lịch năm - Thiệp</a></li>
                                              <li class=""><a href="page.html?i3s3" class="">Quà tặng khách hàng </a></li>
                                        </ul>
                                    
                                     </li>
                                    <li class="art-vmenu-separator"><span class="art-vmenu-separator-span"></span></li>
                                    <li class="active"><a href="page.html?i5" class="active"><span class="l"></span><span class="r">
                                    </span><span class="t">Phần mền quản lý</span></a>
                                    <ul class=" active">
                                            <li class="art-vmenu-separator art-vmenu-separator art-vmenu-separator-first"><span
                                                class="art-vmenu-separator-span"></span></li>
                                            <li class=""><a href="page.html?i3s1" class="">Quản lý khách hàng</a></li><li class="art-vsubmenu-separator">
                                                <span class="art-vsubmenu-separator-span"></span></li>
                                            <li class=" active"><a class=" active" href="page.html">Quản lý kho</a></li><li class="art-vsubmenu-separator">
                                                <span class="art-vsubmenu-separator-span"></span></li>
                                            <li class=""><a href="page.html?i3s3" class="">Quản lý công văn</a></li>
                                             <li class=""><a href="page.html?i3s3" class="">Phần mền chuyên dụng</a></li>
                                              <li class=""><a href="page.html?i3s3" class="">Tư vấn công nghệ thông tin</a></li>
                                          
                                        </ul>

                                      
                                    </li>
                                    <li class="art-vmenu-separator"><span class="art-vmenu-separator-span"></span></li>
                                    <li class=""><a href="page.html?i6" class="active"><span class="l"></span><span class="r">
                                    </span><span class="t">In ấn quảng cáo</span></a>
                                    
                                    
                                     </li>
                                    <li class="art-vmenu-separator"><span class="art-vmenu-separator-span"></span></li>
                                    <li class=""><a href="page.html?i7" class="active"><span class="l"></span><span class="r">
                                    </span><span class="t">Dịch vụ bảo hộ</span></a>
                                     </li>
                                   
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
                            <img width="15" height="15" src="http://cdn.netvibes.com/img/s.gif" class="icon actions-window-collapse"
                                alt="Collapse" title="Collapse"></a> <a class="ico" href="javascript:void(0)" style="display: block;">
                                    <img width="16" height="16" class="hicon" src="http://cdn.netvibes.com/proxy/favIcon.php?url=http%3A%2F%2Fcdn.netvibes.com%2Fimg%2Fwand.png"
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
                            <img width="15" height="15" src="http://cdn.netvibes.com/img/s.gif" class="icon actions-window-collapse"
                                alt="Collapse" title="Collapse"></a> <a class="ico" href="javascript:void(0)" style="display: block;">
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
        <div class="module green-module ">
            <div class="moduleFrame moduleunHighlight">
                <div class="moduleHeaderContainer">
                    <div class="moduleHeader green" style="cursor: move;">
                        <a class="showHide" href="javascript:void(0)" style="visibility: hidden; width: 0pt;">
                            <img width="15" height="15" src="http://cdn.netvibes.com/img/s.gif" class="icon actions-window-collapse"
                                alt="Collapse" title="Collapse"></a> <a class="ico" href="javascript:void(0)" style="display: block;">
                                    <img width="16" height="16" class="hicon" src="http://cdn.netvibes.com/proxy/favIcon.php?url=http%3A%2F%2Fcdn.netvibes.com%2Fimg%2Fwand.png"
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
                            <img width="15" height="15" src="http://cdn.netvibes.com/img/s.gif" class="icon actions-window-collapse"
                                alt="Collapse" title="Collapse"></a> <a class="ico" href="javascript:void(0)" style="display: block;">
                                    <img width="16" height="16" class="hicon" src="http://cdn.netvibes.com/proxy/favIcon.php?url=http%3A%2F%2Fcdn.netvibes.com%2Fimg%2Fwand.png"
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
                            <img width="15" height="15" src="http://cdn.netvibes.com/img/s.gif" class="icon actions-window-collapse"
                                alt="Collapse" title="Collapse"></a> <a class="ico" href="javascript:void(0)" style="display: block;">
                                    <img width="16" height="16" class="hicon" src="http://cdn.netvibes.com/proxy/favIcon.php?url=http%3A%2F%2Fcdn.netvibes.com%2Fimg%2Fwand.png"
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
                            <img width="15" height="15" src="http://cdn.netvibes.com/img/s.gif" class="icon actions-window-collapse"
                                alt="Collapse" title="Collapse"></a> <a class="ico" href="javascript:void(0)" style="display: block;">
                                    <img width="16" height="16" class="hicon" src="http://cdn.netvibes.com/proxy/favIcon.php?url=http%3A%2F%2Fcdn.netvibes.com%2Fimg%2Fwand.png"
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
                            <img width="15" height="15" src="http://cdn.netvibes.com/img/s.gif" class="icon actions-window-collapse"
                                alt="Collapse" title="Collapse"></a> <a class="ico" href="javascript:void(0)" style="display: block;">
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
