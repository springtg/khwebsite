<%@ Page Title="" Language="C#" MasterPageFile="~/AdminCP/Master/Admin.Master" AutoEventWireup="true"
    CodeBehind="SupportManagement.aspx.cs" Inherits="KimHoangWeb.AdminCP.Pages.SupportManagement" %>

<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="content_inner">
        <h2>
            Quản lý Hỗ Trợ Trực Tuyến</h2>
        <div class="clear">
        </div>
        <div>
            <asp:GridView ID="GridView1" runat="server" EnableModelValidation="True" AllowPaging="True"
                AllowSorting="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource1"
                DataKeyNames="Id" ShowFooter="True" AlternatingRowStyle-CssClass="AltRowStyle"
                HeaderStyle-CssClass="HeaderStyle" CssClass="GridViewStyle" PagerStyle-CssClass="PagerStyle"
                RowStyle-CssClass="RowStyle" SelectedRowStyle-CssClass="SelectedRowStyle" EditRowStyle-CssClass="EditRowStyle"
                OnRowCommand="GridView1_RowCommand">
                <AlternatingRowStyle CssClass="AltRowStyle"></AlternatingRowStyle>
                <Columns>
                    <asp:TemplateField HeaderText="ID" SortExpression="ID">
                        <ItemTemplate>
                            <asp:Label ID="lblID" runat="server" Text='<%#Eval("Id") %>'>
                            </asp:Label>
                        </ItemTemplate>
                        <FooterTemplate>
                            <asp:Button ID="btnInsert" runat="server" CommandName="Add" Text="Insert" />
                        </FooterTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="FirstName" SortExpression="NickId">
                        <ItemTemplate>
                            <asp:Label ID="lblFirstName" runat="server" Text='<%#Eval("NickId") %>'>
                            </asp:Label>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txtFirstName" runat="server" Text='<%#Bind("NickId") %>'>
                            </asp:TextBox>
                        </EditItemTemplate>
                        <FooterTemplate>
                            <asp:TextBox ID="txtFname" runat="server">
                            </asp:TextBox>
                        </FooterTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="LastName" SortExpression="Support_Type_Id">
                        <ItemTemplate>
                            <asp:Label ID="lblLastName" runat="server" Text='<%#Eval("Support_Type_Id") %>'>
                            </asp:Label>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txtLastName" runat="server" Text='<%#Bind("Support_Type_Id") %>'>
                            </asp:TextBox>
                        </EditItemTemplate>
                        <FooterTemplate>
                            <asp:TextBox ID="txtLname" runat="server">
                            </asp:TextBox>
                        </FooterTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Department" SortExpression="Display_Name">
                        <ItemTemplate>
                            <asp:Label ID="lblDepartment" runat="server" Text='<%#Eval("Display_Name") %>'>
                            </asp:Label>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txtDepartmentName" runat="server" Text='<%#Bind("Display_Name") %>'>
                            </asp:TextBox>
                        </EditItemTemplate>
                        <FooterTemplate>
                            <asp:TextBox ID="txtDept" runat="server">
                            </asp:TextBox>
                        </FooterTemplate>
                    </asp:TemplateField>
                    <asp:CommandField ButtonType="Image" EditImageUrl="~/AdminCP/Styles/Images/edit.png"
                        DeleteImageUrl="~/AdminCP/Styles/Images/editdelete.png" ShowDeleteButton="True"
                        ShowEditButton="True" />
                </Columns>
                <EditRowStyle CssClass="EditRowStyle"></EditRowStyle>
                <HeaderStyle CssClass="HeaderStyle"></HeaderStyle>
                <PagerStyle CssClass="PagerStyle"></PagerStyle>
                <RowStyle CssClass="RowStyle"></RowStyle>
                <SelectedRowStyle CssClass="SelectedRowStyle"></SelectedRowStyle>
                <emptydatarowstyle backcolor="LightBlue" forecolor="Red" />
                 <emptydatatemplate>
                 Khong co du lieu
                 </emptydatatemplate>
            </asp:GridView>
        </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:KimHoangConnection %>"
            SelectCommand="SELECT [Id], [NickId], [Support_Type_Id], [Display_Name] FROM [SUPPORT] WHERE DELETED = 0"
            InsertCommand ="INSERT INTO [Employees] ([FirstName],[LastName],[Department], [Location]) VALUES (@FirstName, @LastName, @Department, @Location)">
            <InsertParameters>
                <asp:Parameter Name="FirstName" Type="String" />
                <asp:Parameter Name="LastName" Type="String" />
                <asp:Parameter Name="Department" Type="String" />
                <asp:Parameter Name="Location" Type="String" />
            </InsertParameters>
        </asp:SqlDataSource>
    </div>
</asp:Content>
