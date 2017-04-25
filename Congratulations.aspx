<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Congratulations.aspx.vb" Inherits="Congratulations" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" type="text/css" href="StyleSheet.css"/>
    <title>Account Created</title>
</head>
<body>
    <!--Hunter Glisson-->

    <form id="frmCongrats" runat="server">
    <div>
        <h2>Account Created</h2>
        <h3><asp:Label ID="lblAssigname" runat="server" Text=""></asp:Label></h3>
        <a href="Default.aspx">Go back to Login...</a>

        <p>Your account has successfully been created, your credentials are...</p>

        <label for="lblUserid">UserID:</label><asp:Label ID="lblUserid" runat="server" Text=""></asp:Label>
        <label for="lblPassword">Password:</label><asp:Label ID="lblPassword" runat="server" Text=""></asp:Label>
    </div>
    </form>
</body>
</html>
