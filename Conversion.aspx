<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Conversion.aspx.vb" Inherits="Conversion" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" type="text/css" href="StyleSheet.css"/>
    <title>Conversion Page</title>
</head>
<body>
    <!--Hunter Glisson-->

    <form id="frmConversion" runat="server">
    <div>
        <h2>Conversion Page</h2>
        <h3><asp:Label ID="lblAssigname" runat="server" Text=""></asp:Label></h3>
        <a href="Navigation.aspx">Go back to Index...</a>

        <label for="txtConversion">Number:</label><asp:TextBox ID="txtConversion" runat="server"></asp:TextBox>

        <label for="chk8bit">8-bit</label><asp:CheckBox ID="chk8bit" runat="server" />

        <asp:Button ID="btnConvert" runat="server" class="btnsingle" Text="Convert" />

       <asp:Label ID="lblError" runat="server" CssClass="error" Text=""></asp:Label>
       <asp:Label ID="lblAnswer" runat="server" Text="Binary: "></asp:Label>
    </div>
    </form>
</body>
</html>
