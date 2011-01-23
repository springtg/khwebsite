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
        <div class="acp_inner">
            <div class="form_row">
                <span class="lb_largest float_left right">Ngôn ngữ: </span>
                <div class="form_field float_left">
                    <asp:DropDownList ID="ddl_Language" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddl_Language_SelectedIndexChanged">
                    </asp:DropDownList>
                </div>
                <div class="clear">
                </div>
            </div>
            <div class="form_row">
                <span class="lb_largest float_left right">Tên công ty:</span>
                <div class="form_field float_left">
                    <asp:TextBox ID="txt_CompanyName" class="textbox_large" runat="server"></asp:TextBox>
                </div>
                <div class="clear">
                </div>
            </div>
            <div class="form_row">
                <span class="lb_largest float_left right">Địa chỉ:</span>
                <div class="form_field float_left">
                    <asp:TextBox ID="txt_Address" runat="server" class="textbox_large"></asp:TextBox>
                </div>
                <div class="clear">
                </div>
            </div>
            <div class="form_row">
                <span class="lb_largest float_left right">Địa chỉ 1:</span>
                <div class="form_field float_left">
                    <asp:TextBox ID="txt_Address1" runat="server" class="textbox_large"></asp:TextBox>
                </div>
                <div class="clear">
                </div>
            </div>
            <div class="form_row">
                <span class="lb_largest float_left right">Địa chỉ 2:</span>
                <div class="form_field float_left">
                    <asp:TextBox ID="txt_Address2" runat="server" class="textbox_large"></asp:TextBox>
                </div>
                <div class="clear">
                </div>
            </div>
            <div class="form_row">
                <span class="lb_largest float_left right">Điện Thoại:</span>
                <div class="form_field float_left">
                    <asp:TextBox ID="txt_Tel" runat="server" class="textbox_large"></asp:TextBox>
                </div>
                <div class="clear">
                </div>
            </div>
            <div class="form_row">
                <span class="lb_largest float_left right">Điện Thoại 1:</span>
                <div class="form_field float_left">
                    <asp:TextBox ID="txt_Tel1" runat="server" class="textbox_large"></asp:TextBox>
                </div>
                <div class="clear">
                </div>
            </div>
            <div class="form_row">
                <span class="lb_largest float_left right">Điện Thoại 2:</span>
                <div class="form_field float_left">
                    <asp:TextBox ID="txt_Tel2" runat="server" class="textbox_large"></asp:TextBox>
                </div>
                <div class="clear">
                </div>
            </div>
            <div class="form_row">
                <span class="lb_largest float_left right">Email:</span>
                <div class="form_field float_left">
                    <asp:TextBox ID="txt_Email" runat="server" class="textbox_large"></asp:TextBox>
                </div>
                <div class="clear">
                </div>
            </div>
            <div class="form_row">
                <span class="lb_largest float_left right">Email 1:</span>
                <div class="form_field float_left">
                    <asp:TextBox ID="txt_Email1" runat="server" class="textbox_large"></asp:TextBox>
                </div>
                <div class="clear">
                </div>
            </div>
            <div class="form_row">
                <span class="lb_largest float_left right">Email 2:</span>
                <div class="form_field float_left">
                    <asp:TextBox ID="txt_Email2" runat="server" class="textbox_large"></asp:TextBox>
                </div>
                <div class="clear">
                </div>
            </div>
            <div class="form_row">
                <span class="lb_largest float_left right">Giới Thiệu</span>
                <div class="form_field float_left">
                    <FCKeditorV2:FCKeditor ID="txt_IntroductionInfo" Height="280px" runat="server" Width="800px"
                        BasePath="../Scripts/fckeditor/" SkinPath="skins/office2003/" ToolbarStartExpanded="false">
                    </FCKeditorV2:FCKeditor>
                </div>
                <div class="clear">
                </div>
            </div>
            <div>
            </div>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:KimHoangConnection %>"
                SelectCommand="USP_ADMIN_SEL_INTRODUCTION_INFO" SelectCommandType="StoredProcedure">
                <SelectParameters>
                    <asp:ControlParameter Name="Language_Id" ControlID="ddl_Language" Type="Int32" DefaultValue="1" />
                </SelectParameters>
            </asp:SqlDataSource>
            <div>
                <asp:Button ID="btn_Save" runat="server" Text="Lưu" OnClick="btn_Save_Click" />
                <asp:HiddenField ID="hdf_Introduction_id" runat="server" />
                <asp:HiddenField ID="hdf_Language_Id" runat="server" />
            </div>
        </div>
    </div>
    </div>
</asp:Content>
