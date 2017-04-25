<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" type="text/css" href="StyleSheet.css"/>
    <title>Login Page</title>
</head>
<body>
<!--Hunter Glisson... Option Strict and Explicit ARE on in the config file-->

    <form id="frmHome" runat="server">
    <div>
        <h2>Login Page</h2>
        <h3><asp:Label ID="lblAssigname" runat="server" Text=""></asp:Label></h3>

        <label for="txtUser">Username:</label><asp:TextBox ID="txtUser" runat="server"></asp:TextBox>
        <label for="txtPass">Password:</label><asp:TextBox ID="txtPass" runat="server" TextMode="Password"></asp:TextBox>
        <div class="btngroup"><asp:Button ID="btnLogin" runat="server" Text="Login" /><asp:Button ID="btnRegister" runat="server" Text="Register" PostBackUrl="NewAccount.aspx" /></div>

    </div>
    </form>
</body>
</html>
