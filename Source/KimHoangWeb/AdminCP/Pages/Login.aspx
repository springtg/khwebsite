<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="KimHoangWeb.AdminCP.Pages.Login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../Styles/additional.css" rel="stylesheet" type="text/css" />
    <link href="../Styles/main.css" rel="stylesheet" type="text/css" />
    <link href="../Styles/screen.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <div class="login_form">
        <h2>
            <asp:Literal ID="Literal1" runat="server" Text="Vui lòng đăng nhập" /></h2>
        <div>
            <asp:Label ID="Label_Error" runat="server" ForeColor="Red"></asp:Label>
        </div>
        <label class="lb_large">
            <asp:Literal ID="Literal2" runat="server" Text="Tên đăng nhập" />:</label>
        <div class="login_field">
            <asp:TextBox ID="TextBox_UserName" CssClass="textbox_medium" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*"
                ControlToValidate="TextBox_UserName"></asp:RequiredFieldValidator>
        </div>
        <div class="clear">
        </div>
        <label class="lb_large">
            <asp:Literal ID="Literal3" runat="server" Text="Mật Khẩu" />:</label>
        <div class="login_field">
            <asp:TextBox ID="TextBox_Password" CssClass="textbox_medium" runat="server" TextMode="Password"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*"
                ControlToValidate="TextBox_Password"></asp:RequiredFieldValidator>
        </div>
        <div class="clear">
        </div>
        <asp:Button ID="Button_Login" runat="server" Text="Đăng nhập"
            CssClass="btn_small login_btn" OnClick="Button_Login_Click" />
    </div>
    </div>
    </form>
</body>
</html>
