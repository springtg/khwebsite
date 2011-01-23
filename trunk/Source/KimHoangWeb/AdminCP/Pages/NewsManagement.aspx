<%@ Page Title="" Language="C#" MasterPageFile="~/AdminCP/Master/Admin.Master" AutoEventWireup="true"
    CodeBehind="NewsManagement.aspx.cs" Inherits="KimHoangWeb.AdminCP.Pages.NewsManagement" %>

<%@ Register Assembly="KimHoangWeb" Namespace="KimHoangWeb.AdminCP.Controls" TagPrefix="cc1" %>
<%@ Register Assembly="FredCK.FCKeditorV2" Namespace="FredCK.FCKeditorV2" TagPrefix="FCKeditorV2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Kim Hoang ::
        <%=KimHoangWeb.KimHoangBasePage.GetValueFromConfig("NewsManagement_Title" , Application["LanguageCode"])%>
    </title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="content_inner">
        <h2>
            <%=KimHoangWeb.KimHoangBasePage.GetValueFromConfig("NewsManagement_Title" , Application["LanguageCode"])%></h2>
        <div class="clear">
        </div>
    </div>
    <div>
        <table border="0" cellpadding="0" cellspacing="0" width="100%">
            <tr>
                <td>
                    Ngôn ngữ:
                </td>
            </tr>
            <tr>
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>
                    Tiêu đề:
                </td>
            </tr>
            <tr>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    Nội dung:
                </td>
            </tr>
            <tr>
                <td>
                    <FCKeditorV2:FCKeditor ID="FCKeditor1" Width="100%" Height="280px" runat="server"
                        BasePath="../Scripts/fckeditor/" SkinPath="skins/office2003/" ToolbarStartExpanded="false">
                    </FCKeditorV2:FCKeditor>
                </td>
            </tr>
        </table>
        <!--noi dung o day-->
    </div>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:KimHoangConnection %>"
        SelectCommand="SELECT [Id], [NickId], [Support_Type_Id], [Display_Name] FROM [SUPPORT]"
        InsertCommand="INSERT INTO [Employees] ([FirstName],[LastName],[Department], [Location]) VALUES (@FirstName, @LastName, @Department, @Location)">
        <InsertParameters>
            <asp:Parameter Name="FirstName" Type="String" />
            <asp:Parameter Name="LastName" Type="String" />
            <asp:Parameter Name="Department" Type="String" />
            <asp:Parameter Name="Location" Type="String" />
        </InsertParameters>
    </asp:SqlDataSource>
</asp:Content>
