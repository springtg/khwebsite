﻿<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ucOnline.ascx.cs" Inherits="KimHoangWeb.Mods.Main.ucOnline" %>
<span style="font-size: 10px;">
    <div class="pb5">
    </div>
    <img style="border: medium none;" src="pic/web/customerpic/online.gif">&nbsp;&nbsp;Trực
    tuyến: <b><%=Application["SLtruycap"]%></b>
    <div class="pb5">
    </div>
    <img style="border: medium none;" src="pic/web/customerpic/online.gif">&nbsp;&nbsp;Tổng
    số truy cập: <b>
        <asp:Label ID="tong" runat="server">   <%=Application["SLonline"] %></asp:Label></b>
    <div class="pb5">
    </div>
</span>