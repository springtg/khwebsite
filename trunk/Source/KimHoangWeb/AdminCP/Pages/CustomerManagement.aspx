<%@ Page Title="" Language="C#" MasterPageFile="~/AdminCP/Master/Admin.Master" AutoEventWireup="true"
    CodeBehind="CustomerManagement.aspx.cs" Inherits="KimHoangWeb.AdminCP.Pages.CustomerManagement" %>

<%@ Register Assembly="KimHoangWeb" Namespace="KimHoangWeb.AdminCP.Controls" TagPrefix="KimHoang" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Kim Hoàng :: Quản lý Khách Hàng </title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="content_inner">
        <h2>
            Quản lý Khách Hàng</h2>
        <div class="clear">
        </div>
        <div>
            <KimHoang:KimHoangGridView ID="gvCustomer" runat="server" EnableModelValidation="True"
                AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource1"
                DataKeyNames="Id" AlternatingRowStyle-CssClass="AltRowStyle" HeaderStyle-CssClass="HeaderStyle"
                CssClass="GridViewStyle" PagerStyle-CssClass="PagerStyle" RowStyle-CssClass="RowStyle"
                SelectedRowStyle-CssClass="SelectedRowStyle" EditRowStyle-CssClass="EditRowStyle"
                Width="100%" ShowFooter="true" ShowFooterWhenEmpty="true" ShowHeader="true" ShowHeaderWhenEmpty="true"
                OnRowCommand="gvCustomer_RowCommand">
                <AlternatingRowStyle CssClass="AltRowStyle"></AlternatingRowStyle>
                <EditRowStyle CssClass="EditRowStyle"></EditRowStyle>
                <HeaderStyle CssClass="HeaderStyle"></HeaderStyle>
                <PagerStyle CssClass="PagerStyle"></PagerStyle>
                <RowStyle CssClass="RowStyle"></RowStyle>
                <SelectedRowStyle CssClass="SelectedRowStyle"></SelectedRowStyle>
                <EmptyDataRowStyle BackColor="LightBlue" ForeColor="Red" />
                <EmptyDataTemplate>
                    <%=ConfigurationManager.AppSettings["EmptyData"]%>
                </EmptyDataTemplate>
                <Columns>
                    <asp:TemplateField HeaderText="Mã Khách Hàng" SortExpression="ID">
                        <ItemTemplate>
                            <asp:Label ID="lblID" runat="server" Text='<%#Eval("Id") %>'>
                            </asp:Label>
                        </ItemTemplate>
                        <FooterTemplate>
                            <asp:Button ID="btnInsert" runat="server" CommandName="Add" Text="Insert" />
                        </FooterTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Tên Khách Hàng" SortExpression="Company_Name">
                        <ItemTemplate>
                            <asp:Label ID="lbl_Company_Name" runat="server" Text='<%#Eval("Company_Name") %>'>
                            </asp:Label>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txt_Company_Name" runat="server" Width="100%" Text='<%#Bind("Company_Name") %>'>
                            </asp:TextBox>
                        </EditItemTemplate>
                        <FooterTemplate>
                            <asp:TextBox ID="txt_I_Company_Name" Width="99%" runat="server">
                            </asp:TextBox>
                        </FooterTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Logo Khách Hàng" SortExpression="Logo">
                        <ItemTemplate>
                            <asp:Image ID="img_Logo" runat="server" ImageUrl='../Img_Logo/<%#Eval("Logo") %>'>
                            </asp:Image>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:FileUpload ID="txt_Logo" runat="server" Width="100%" Text='../Img_Logo/<%#Bind("Logo") %>'>
                            </asp:FileUpload>
                        </EditItemTemplate>
                        <FooterTemplate>
                            <asp:FileUpload ID="txt_I_Logo"  Width="99%" runat="server">
                            </asp:FileUpload>
                        </FooterTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Website Khách Hàng" SortExpression="Website">
                        <ItemTemplate>
                            <asp:Label ID="lbl_Website" runat="server" Text='<%#Eval("Website") %>'>
                            </asp:Label>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txt_Website" runat="server" Width="100%" Text='<%#Bind("Website") %>'>
                            </asp:TextBox>
                        </EditItemTemplate>
                        <FooterTemplate>
                            <asp:TextBox ID="txt_I_Website" Width="99%" runat="server">
                            </asp:TextBox>
                        </FooterTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Email Khách Hàng" SortExpression="Email">
                        <ItemTemplate>
                            <asp:Label ID="lbl_Email" runat="server" Text='<%#Eval("Email") %>'>
                            </asp:Label>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txt_Email" runat="server" Width="100%" Text='<%#Bind("Email") %>'>
                            </asp:TextBox>
                        </EditItemTemplate>
                        <FooterTemplate>
                            <asp:TextBox ID="txt_I_Email" Width="99%" runat="server">
                            </asp:TextBox>
                        </FooterTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="ĐT Khách Hàng" SortExpression="Phone">
                        <ItemTemplate>
                            <asp:Label ID="lbl_Phone" runat="server" Text='<%#Eval("Phone") %>'>
                            </asp:Label>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txt_Phone" runat="server" Width="100%" Text='<%#Bind("Phone") %>'>
                            </asp:TextBox>
                        </EditItemTemplate>
                        <FooterTemplate>
                            <asp:TextBox ID="txt_I_Phone" Width="99%" runat="server">
                            </asp:TextBox>
                        </FooterTemplate>
                    </asp:TemplateField>
                </Columns>
            </KimHoang:KimHoangGridView>
        </div>
    </div>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:KimHoangConnection %>"
        SelectCommand="USP_ADMIN_SEL_CUSTOMER" SelectCommandType="StoredProcedure" InsertCommand="USP_ADMIN_INS_CUSTOMER"
        InsertCommandType="StoredProcedure" DeleteCommand="USP_ADMIN_DEL_CUSTOMER" DeleteCommandType="StoredProcedure"
        UpdateCommand="USP_ADMIN_UPD_CUSTOMER" UpdateCommandType="StoredProcedure">
        <InsertParameters>
            <asp:Parameter Name="Company_Name" Type="String" />
            <asp:Parameter Name="Logo" Type="String" />
            <asp:Parameter Name="Website" Type="String" />
            <asp:Parameter Name="Email" Type="String" />
            <asp:Parameter Name="Phone" Type="String" />
        </InsertParameters>
        <DeleteParameters>
            <asp:Parameter Name="Id" Type="Int32" />
        </DeleteParameters>
        <UpdateParameters>
            <asp:Parameter Name="Id" Type="Int32" />
            <asp:Parameter Name="Company_Name" Type="String" />
            <asp:Parameter Name="Logo" Type="String" />
            <asp:Parameter Name="Website" Type="String" />
            <asp:Parameter Name="Email" Type="String" />
            <asp:Parameter Name="Phone" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>
