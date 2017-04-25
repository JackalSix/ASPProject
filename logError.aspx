<%@ Page Language="VB" AutoEventWireup="false" CodeFile="logError.aspx.vb" Inherits="logError" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" type="text/css" href="StyleSheet.css"/>
    <title>Error Page</title>
</head>
<body>
<!--Hunter Glisson-->

    <form id="frmError" runat="server">
    <div>
        <h2>Login Error</h2>
        <h3><asp:Label ID="lblAssigname" runat="server" Text=""></asp:Label></h3>

        <p>The username and/or password entered was incorrect</p>
        <asp:Button ID="btnLogAgain" runat="server" class="btnsingle" Text="Try Again..." PostBackUrl="Default.aspx" />
    </div>
    </form>
</body>
</html>
