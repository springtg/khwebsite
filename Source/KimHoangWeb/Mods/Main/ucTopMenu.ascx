<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ucTopMenu.ascx.cs" Inherits="KimHoangWeb.Mods.Main.ucTopMenu" %>
<div style="height: 20px;">
    <div style="float: left">
        <%--<ul class="art-menu">
    <asp:Literal ID="ltrMenuTop" runat="server" EnableViewState="false"></asp:Literal>
    </ul>--%>
        <ul class="art-menu">
            <li><a link="Mods/Main/Main.aspx" tabid="2" href="javascript:void(0);" class="active">
                <span class="t">Trang chủ</span></a></li>
            <li class="art-menu-li-separator"><span class="art-menu-separator"></span></li>
            <li><a link="Mods/News/_News.aspx" tabid="3" href="javascript:void(0);" class=""><span
                class="t">Tin tức</span></a></li>
            <li class="art-menu-li-separator"><span class="art-menu-separator"></span></li>
            <li><a link="Mods/Customer/_Customer.aspx" tabid="4" href="javascript:void(0);" class="">
                <span class="t">Khách hàng</span></a></li>
            <li class="art-menu-li-separator"><span class="art-menu-separator"></span></li>
            <li><a link="Mods/About/_About.aspx" tabid="5" href="javascript:void(0);" class=""><span
                class="t">Giới thiệu</span></a></li>
            <li class="art-menu-li-separator"><span class="art-menu-separator"></span></li>
            <li><a link="Mods/Job/_Job.aspx" tabid="6" href="javascript:void(0);" class=""><span
                class="t">Tuyển dụng</span></a></li>
            <li class="art-menu-li-separator"><span class="art-menu-separator"></span></li>
            <li><a link="Mods/Contact/_Contact.aspx" tabid="7" href="javascript:void(0);" class="">
                <span class="t">Liên hệ</span></a></li>
        </ul>
    </div>
    <div style="float: right;">
        <img style="height: 20px;" src="Img/United.png" />
        <img style="height: 20px;" src="Img/Vietnam.png" />
    </div>
</div>
