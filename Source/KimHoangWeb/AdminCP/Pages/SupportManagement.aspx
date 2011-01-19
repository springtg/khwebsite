<%@ Page Title="" Language="C#" MasterPageFile="~/AdminCP/Master/Admin.Master" AutoEventWireup="true"
    CodeBehind="SupportManagement.aspx.cs" Inherits="KimHoangWeb.AdminCP.Pages.SupportManagement" %>

<%@ Register Assembly="KimHoangWeb" Namespace="KimHoangWeb.AdminCP.Controls" TagPrefix="KimHoang" %>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <title>Kim Hoàng :: Quản lý Hỗ Trợ Trực Tuyến </title>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="content_inner">
        <h2>
            Quản lý Hỗ Trợ Trực Tuyến</h2>
        <div class="clear">
        </div>
        <div>
            <kimhoang:kimhoanggridview id="GridView1" runat="server" enablemodelvalidation="True"
                allowpaging="True" allowsorting="True" autogeneratecolumns="False" datasourceid="SqlDataSource1"
                datakeynames="Id" alternatingrowstyle-cssclass="AltRowStyle" headerstyle-cssclass="HeaderStyle"
                cssclass="GridViewStyle" pagerstyle-cssclass="PagerStyle" rowstyle-cssclass="RowStyle"
                selectedrowstyle-cssclass="SelectedRowStyle" editrowstyle-cssclass="EditRowStyle"
                onrowcommand="GridView1_RowCommand" width="100%" showfooter="True" showfooterwhenempty="True"
                showheaderwhenempty="True" onrowdatabound="GridView1_RowDataBound">
                <AlternatingRowStyle CssClass="AltRowStyle"></AlternatingRowStyle>
                <Columns>
                    <asp:TemplateField HeaderText="Mã" ItemStyle-HorizontalAlign="Center" SortExpression="ID">
                        <ItemTemplate>
                            <asp:Label ID="lblID" runat="server" Text='<%#Eval("Id") %>'>
                            </asp:Label>
                        </ItemTemplate>
                        <FooterTemplate >
                            <asp:ImageButton ToolTip="Thêm Mới" ID="btnInsert" ImageUrl="~/AdminCP/Styles/Images/add_new.png" ImageAlign="Left" runat="server" CommandName="Add" Text="Insert" />
                        </FooterTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Mã Hỗ Trợ" SortExpression="NickId">
                        <ItemTemplate>
                            <asp:Label ID="lbl_NickId" runat="server" Text='<%#Eval("NickId") %>'>
                            </asp:Label>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txt_NickId" runat="server" Width="100%" Text='<%#Bind("NickId") %>'>
                            </asp:TextBox>
                        </EditItemTemplate>
                        <FooterTemplate>
                            <asp:TextBox ID="txt_I_NickId" Width="99%" runat="server">
                            </asp:TextBox>
                        </FooterTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Loại Hỗ Trợ" SortExpression="Support_Type_Id">
                        <ItemTemplate>
                            <asp:Label ID="lbl_Support_Type_Id" runat="server" Text='<%#Eval("Support_Type_Id") %>'>
                            </asp:Label>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txt_Support_Type_Id" runat="server" Width="100%" Text='<%#Bind("Support_Type_Id") %>'>
                            </asp:TextBox>
                        </EditItemTemplate>
                        <FooterTemplate>
                            <asp:TextBox ID="txt_I_Support_Type_Id" Width="99%" runat="server">
                            </asp:TextBox>
                        </FooterTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Tên Hiễn Thị" SortExpression="Display_Name">
                        <ItemTemplate>
                            <asp:Label ID="lbl_Display_Name" runat="server" Text='<%#Eval("Display_Name") %>'>
                            </asp:Label>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txt_Display_Name" Width="100%" runat="server" Text='<%#Bind("Display_Name") %>'>
                            </asp:TextBox>
                        </EditItemTemplate>
                        <FooterTemplate>
                            <asp:TextBox ID="txt_I_Display_Name" Width="99%" runat="server">
                            </asp:TextBox>
                        </FooterTemplate>
                    </asp:TemplateField>
                    <asp:CommandField ButtonType="Image" EditImageUrl="~/AdminCP/Styles/Images/edit.png"
                        DeleteImageUrl="~/AdminCP/Styles/Images/editdelete.png" ShowDeleteButton="True"
                        ShowEditButton="True" 
                        CancelImageUrl="~/AdminCP/Styles/Images/page_cancel.png" 
                        UpdateImageUrl="~/AdminCP/Styles/Images/Save.png" />
                </Columns>
                <EditRowStyle CssClass="EditRowStyle"></EditRowStyle>
                <HeaderStyle CssClass="HeaderStyle"></HeaderStyle>
                <PagerStyle CssClass="PagerStyle"></PagerStyle>
                <RowStyle CssClass="RowStyle"></RowStyle>
                <SelectedRowStyle CssClass="SelectedRowStyle"></SelectedRowStyle>
                <EmptyDataRowStyle BackColor="LightBlue" ForeColor="Red" />
                <EmptyDataTemplate>
                    <%=ConfigurationManager.AppSettings["EmptyData"]%>
                </EmptyDataTemplate>
            </kimhoang:kimhoanggridview>
        </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:KimHoangConnection %>"
            SelectCommand="USP_ADMIN_SEL_SUPPORT" SelectCommandType="StoredProcedure" InsertCommand="USP_ADMIN_INS_SUPPORT"
            InsertCommandType="StoredProcedure" DeleteCommand="USP_ADMIN_DEL_SUPPORT" DeleteCommandType="StoredProcedure"
            UpdateCommand="USP_ADMIN_UPD_SUPPORT" UpdateCommandType="StoredProcedure">
            <InsertParameters>
                <asp:Parameter Name="NickId" Type="String" />
                <asp:Parameter Name="Display_Name" Type="String" />
                <asp:Parameter Name="Support_Type_Id" Type="Int32" />
                <asp:SessionParameter Name="Crt_By" SessionField="LoginUserName" Type="String" />
                <asp:SessionParameter Name="Language_Id" SessionField="LanguageId" Type="Int32" DefaultValue="1" />
            </InsertParameters>
            <DeleteParameters>
                <asp:Parameter Name="Id" Type="Int32" />
                <asp:Parameter Name="Crt_By" Type="String" />
                <asp:Parameter Name="Language_Id" Type="Int32" />
            </DeleteParameters>
            <UpdateParameters>
                <asp:Parameter Name="Id" Type="Int32" />
                <asp:Parameter Name="NickId" Type="String" />
                <asp:Parameter Name="Display_Name" Type="String" />
                <asp:Parameter Name="Support_Type_Id" Type="Int32" />
                <asp:SessionParameter Name="Crt_By" SessionField="LoginUserName" Type="String" />
                <asp:SessionParameter Name="Language_Id" SessionField="LanguageId" Type="Int32" DefaultValue="1" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </div>
</asp:Content>
