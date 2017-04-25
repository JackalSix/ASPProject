<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Navigation.aspx.vb" Inherits="Navigation" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" type="text/css" href="StyleSheet.css"/>
    <title>Navigation Page</title>
</head>
<body>
<!--Hunter Glisson-->

    <form id="frmNav" runat="server">
    <div>
        <h2><p></p><asp:Label ID="lblWelcome" runat="server" Text=""></asp:Label></h2>
        <h3><asp:Label ID="lblAssigname" runat="server" Text=""></asp:Label></h3>

        <nav>
            <ul>
                <li><a href="Default.aspx">Log Out</a></li>
                <li><a href="Math.aspx">Math</a></li>
                <li><a href="Conversion.aspx">Conversion</a></li>
            </ul>
        </nav>
    </div>
    </form>
</body>
</html>
