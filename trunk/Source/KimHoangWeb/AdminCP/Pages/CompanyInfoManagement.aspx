<%@ Page Title="" Language="C#" MasterPageFile="~/AdminCP/Master/Admin.Master" AutoEventWireup="true"
    CodeBehind="CompanyInfoManagement.aspx.cs" Inherits="KimHoangWeb.AdminCP.Pages.CompanyInfoManagement" %>

<%@ Register Assembly="FredCK.FCKeditorV2" Namespace="FredCK.FCKeditorV2" TagPrefix="FCKeditorV2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Kim Hoang :: Quan Ly Gioi Thieu</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="content_inner">
        <h2>
            Quản lý Thông Tin Giới Thiệu Công Ty</h2>
        <div class="clear">
        </div>
        <div>
            Ngôn Ngữ:
            <asp:DropDownList ID="ddl_Language" runat="server" AutoPostBack="True">
            </asp:DropDownList>
            <%--<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:KimHoangConnection %>"
                SelectCommand="USP_ADMIN_SEL_LANGUAGE" SelectCommandType="StoredProcedure"></asp:SqlDataSource>--%>
        </div>
        <div>
            <FCKeditorV2:FCKeditor ID="FCKeditor1" Width="100%" Height="280px" runat="server"
                BasePath="../Scripts/fckeditor/" SkinPath="skins/office2003/">
            </FCKeditorV2:FCKeditor>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:KimHoangConnection %>"
                SelectCommand="USP_ADMIN_SEL_INTRODUCTION_INFO" SelectCommandType="StoredProcedure"
                
                >
                <SelectParameters>
                    <asp:ControlParameter Name="Language_Id" ControlID="ddl_Language" Type="Int32" DefaultValue="1" />
                </SelectParameters>
            </asp:SqlDataSource>
            <div>
            <asp:Button ID="btn_Save" runat="server" Text="Lưu" onclick="btn_Save_Click" />
                <asp:HiddenField ID="hdf_Introduction_id" runat="server" />
                <asp:HiddenField ID="hdf_Language_Id" runat="server" />
            </div>
        </div>
    </div>
</asp:Content>
