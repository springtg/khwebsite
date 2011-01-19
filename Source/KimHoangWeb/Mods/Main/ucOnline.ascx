<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ucOnline.ascx.cs" Inherits="KimHoangWeb.Mods.Main.ucOnline" %>
<%--<span style="font-size: 10px;">
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
</span>--%>
<asp:Panel ID="Panel1" runat="server" Width="200px" GroupingText="Thống Kê Truy Cập">
    <table cellpadding="0" cellspacing="0" width="100%">
        <tr>
            <td style="width: 50%; padding-left: 10px">
                <img src="Common/Images/Import.png" />
                Đang online:
            </td>
            <td style="width: 50%">
                <% =Application["visitors_online"].ToString()%>
            </td>
        </tr>
        <tr>
            <td style="width: 50%; padding-left: 10px">
                <img src="Common/Images/25.png" />Hôm nay:
            </td>
            <td style="width: 50%">
                <% =Application["HomNay"].ToString()  %>
            </td>
        </tr>
        <tr>
            <td style="width: 50%; padding-left: 10px">
                <img src="Common/Images/25.png" />
                Hôm qua:
            </td>
            <td style="width: 50%">
                <% =Application["HomQua"].ToString()  %>
            </td>
        </tr>
        <tr>
            <td style="width: 50%; padding-left: 10px">
                <img src="Common/Images/AddUser.jpg" />
                Tuần này:
            </td>
            <td style="width: 50%">
                <% =Application["TuanNay"].ToString()  %>
            </td>
        </tr>
        <tr>
            <td style="width: 50%; padding-left: 10px">
                <img src="Common/Images/AddUser.jpg" />
                Tuần trước:
            </td>
            <td style="width: 50%">
                <% =Application["TuanTruoc"].ToString()  %>
            </td>
        </tr>
        <tr>
            <td style="width: 50%; padding-left: 10px">
                <img src="Common/Images/User.png" />
                Tháng này:
            </td>
            <td style="width: 50%">
                <% =Application["ThangNay"].ToString()  %>
            </td>
        </tr>
        <tr>
            <td style="width: 50%; padding-left: 10px">
                <img src="Common/Images/User.png" />
                Tháng trước:
            </td>
            <td style="width: 50%">
                <% =Application["ThangTruoc"].ToString()  %>
            </td>
        </tr>
        <tr>
            <td style="width: 50%; padding-left: 10px">
                <img src="Common/Images/02.jpg" />Tất cả:
            </td>
            <td style="width: 50%">
                <% =Application["TatCa"].ToString()%>
            </td>
        </tr>
    </table>
</asp:Panel>
