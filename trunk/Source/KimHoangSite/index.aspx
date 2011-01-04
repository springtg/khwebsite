<%@ Page Title="" Language="C#" MasterPageFile="~/Master/Main.master" AutoEventWireup="true"
    CodeFile="index.aspx.cs" Inherits="index" %>

<%@ Register Src="Mods/Main/TopMenu.ascx" TagName="TopMenu" TagPrefix="kimhoang" %>
<%@ Register Src="~/Mods/Main/Address.ascx" TagName="Address" TagPrefix="kimhoang" %>
<%@ Register Src="~/Mods/Main/ucCompanyInfo.ascx" TagName="CompanyInfo" TagPrefix="kimhoang" %>
<%@ Register Src="Mods/Main/ucFlash.ascx" TagName="ucFlash" TagPrefix="kimhoang" %>
<%@ Register Src="Mods/Main/ucNavigate.ascx" TagName="ucNavigate" TagPrefix="kimhoang" %>
<asp:Content ID="Content1" ContentPlaceHolderID="TitleContentPlaceHolder" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="HeaderPlaceHolder" runat="Server">
    <link href="Css/Menu.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MenuContentPlaceHolder" runat="Server">
    <kimhoang:TopMenu ID="TopMenu1" runat="server" />
    <kimhoang:CompanyInfo ID="CompanyInfo" runat="server" />
    <kimhoang:Address ID="Address" runat="server" />
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="HeaderContentPlaceHolder" runat="Server">
    <kimhoang:ucFlash ID="ucFlash1" runat="server" />
</asp:Content>
<asp:Content ID="ContentNav" ContentPlaceHolderID="NavPlaceHolder" runat="server">
    <kimhoang:ucNavigate ID="ucNavigate1" runat="server" />
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="LeftContentPlaceHolder" runat="Server">
    <div class="cstyletabitem" style="width: 99%">
        <div class="cBox Style2greenbox">
            <div class="art-vmenublockheader">
                <div class="l">
                </div>
                <div class="r">
                </div>
                <div class="t">
                    DANH MỤC</div>
            </div>
            <div class="bC_BG">
                <div class="bC_I">
                    <div style="padding: 7px 3px 10px;">
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
            <div class="bB_L">
                <div class="bB_R">
                    <div class="bB_BG">
                        <!---->
                    </div>
                </div>
            </div>
        </div>
        <div class="cBox Style2greenbox">
            <div class="art-vmenublockheader">
                <div class="l">
                </div>
                <div class="r">
                </div>
                <div class="t">
                    LIÊN KẾT SITE</div>
            </div>
            <div class="bC_BG">
                <div class="bC_I">
                    <div style="padding: 7px 3px 10px;">
                        <div style="padding: 3px;">
                            <div style="width: 10px;" class="fleft">
                                <div class="nutimg">
                                </div>
                            </div>
                            <div class="fleft">
                                <select>
                                    <option>go.vn</option>
                                    <option>thong tin cong nghe</option>
                                    <option>Khoa học</option>
                                </select>
                            </div>
                            <div class="clearboth">
                                <!---->
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="bB_L">
                <div class="bB_R">
                    <div class="bB_BG">
                        <!---->
                    </div>
                </div>
            </div>
        </div>
        <div class="cBox Style2greenbox">
            <div class="art-vmenublockheader">
                <div class="l">
                </div>
                <div class="r">
                </div>
                <div class="t">
                    THÔNG TIN TRUY CẬP</div>
            </div>
            <div class="bC_BG">
                <div class="bC_I">
                    <div style="padding: 7px 3px 10px;">
                        <span style="font-size: 10px;">
                            <div class="pb5">
                            </div>
                            <img style="border: medium none;" src="pic/web/customerpic/online.gif">&nbsp;&nbsp;Trực
                            tuyến: <b>1</b>
                            <div class="pb5">
                            </div>
                            <img style="border: medium none;" src="pic/web/customerpic/online.gif">&nbsp;&nbsp;Tổng
                            số truy cập: <b>13</b>
                            <div class="pb5">
                            </div>
                            <img style="border: medium none;" src="pic/web/customerpic/online.gif">&nbsp;&nbsp;Tổng
                            số hits: <b>0</b>
                            <div class="pb5">
                            </div>
                        </span>
                    </div>
                </div>
            </div>
            <div class="bB_L">
                <div class="bB_R">
                    <div class="bB_BG">
                        <!---->
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content6" ContentPlaceHolderID="CenterContentPlaceHolder" runat="Server">
    <div class="cstyletabitem" style="width: 100%">
        <div class="cBox Style2greenbox">
            <div class="art-vmenublockheaderCenter">
                <div class="l">
                </div>
                <div class="r">
                </div>
                <div class="t">
                    DANH MỤC</div>
            </div>
            <div class="bC_BGCenter">
                <div class="bC_ICenter">
                    <div style="padding: 7px 3px 10px;">
                        <div style="padding: 3px;">
                            <div style="width: 10px;" class="fleft">
                                <div class="nutimg">
                                </div>
                            </div>
                            <div class="fleft">
                                <a href="?u=prd&amp;su=c&amp;cid=24" class="vmnucatelnk">Dich vu qua tang</a>
                            </div>
                            <div class="clearboth">
                                <!---->
                            </div>
                        </div>
                        <div style="padding: 3px;">
                            <div style="width: 10px;" class="fleft">
                                <div class="nutimg">
                                </div>
                            </div>
                            <div class="fleft">
                                <a href="?u=prd&amp;su=c&amp;cid=25" class="vmnucatelnk">Dich vu web</a>
                            </div>
                            <div class="clearboth">
                                <!---->
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content7" ContentPlaceHolderID="RightContentPlaceHolder" runat="Server">
    <div class="cstyletabitem" style="float: right; width: 99%">
        <div class="cBox Style2greenbox">
            <div class="art-vmenublockheader">
                <div class="l">
                </div>
                <div class="r">
                </div>
                <div class="t">
                    HỖ TRỢ TRỰC TUYẾN</div>
            </div>
            <div class="bC_BG">
                <div class="bC_I">
                    <div style="padding: 7px 3px 10px;">
                        <div style="width: 100%;">
                            <b>tqtrang</b>&nbsp;<a href="ymsgr:sendim?tqtrang07"><img border="0" src="http://opi.yahoo.com/online?u=tqtrang07&amp;m=g&amp;t=1"
                                alt="tqtrang"></a></div>
                        <div style="width: 100%;">
                            <b>ntxuan</b>&nbsp;<a href="ymsgr:sendim?tqtrang07"><img border="0" src="http://opi.yahoo.com/online?u=tqtrang07&amp;m=g&amp;t=1"
                                alt="tqtrang"></a></div>
                    </div>
                </div>
            </div>
            <div class="bB_L">
                <div class="bB_R">
                    <div class="bB_BG">
                        <!---->
                    </div>
                </div>
            </div>
        </div>
        <div class="cBox Style2greenbox">
            <div class="art-vmenublockheader">
                <div class="l">
                </div>
                <div class="r">
                </div>
                <div class="t">
                    TIN TỨC</div>
            </div>
            <div class="bC_BG">
                <div class="bC_I">
                    <div style="padding: 7px 3px 10px;">
                        <div style="padding: 3px;">
                            <div style="width: 10px;" class="fleft">
                                <div class="nutimg">
                                </div>
                            </div>
                            <div class="fleft">
                                <a href="?u=prd&amp;su=c&amp;cid=24" class="vmnucatelnk">Dich vu qua tang</a>
                            </div>
                            <div class="clearboth">
                                <!---->
                            </div>
                        </div>
                        <div style="padding: 3px;">
                            <div style="width: 10px;" class="fleft">
                                <div class="nutimg">
                                </div>
                            </div>
                            <div class="fleft">
                                <a href="?u=prd&amp;su=c&amp;cid=25" class="vmnucatelnk">Dich vu web</a>
                            </div>
                            <div class="clearboth">
                                <!---->
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="bB_L">
                <div class="bB_R">
                    <div class="bB_BG">
                        <!---->
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
