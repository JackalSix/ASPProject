<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Math.aspx.vb" Inherits="Math" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" type="text/css" href="StyleSheet.css"/>
    <title>Math Page</title>
</head>
<body>
<!--Hunter Glisson-->

    <form id="frmMath" runat="server">
    <div>
        <h2>Math</h2>
        <h3><asp:Label ID="lblAssigname" runat="server" Text=""></asp:Label></h3>
        <a href="Navigation.aspx">Go back to Index...</a>

        <label for="txtInput1">Number 1:</label><asp:TextBox ID="txtInput1" runat="server"></asp:TextBox>
        <label for="txtInput2">Number 2:</label><asp:TextBox ID="txtInput2" runat="server"></asp:TextBox>

        <label for="radMoney">Money Math</label><asp:RadioButton ID="radMoney" runat="server" Checked="True" GroupName="mathType" />
        <label for="radFunny">Funny Math</label><asp:RadioButton ID="radFunny" runat="server" GroupName="mathType" />

        <asp:Button ID="btnCalc" runat="server" class="btnsingle" Text="Calculate" />

        <asp:Label ID="lblError" runat="server" Text="" CssClass="error"></asp:Label>
        <asp:Label ID="lblAnswer" runat="server" Text=""></asp:Label>
    </div>
    </form>
</body>
</html>
