<%@ Page Title="" Language="C#" MasterPageFile="~/AdminCP/Master/Admin.Master" AutoEventWireup="true"
    CodeBehind="NewsManagement.aspx.cs" Inherits="KimHoangWeb.AdminCP.Pages.NewsManagement" %>

<%@ Register Assembly="KimHoangWeb" Namespace="KimHoangWeb.AdminCP.Controls" TagPrefix="cc1" %>
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
