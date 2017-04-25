<%@ Page Language="VB" AutoEventWireup="false" CodeFile="NewAccount.aspx.vb" Inherits="NewAccount" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" type="text/css" href="StyleSheet.css"/>
    <title>New Account</title>
</head>
<body>
<!--Hunter Glisson-->
    <form id="frmNew" runat="server">
    <div>
        <h2>Create a New Account</h2>
        <h3><asp:Label ID="lblAssigname" runat="server" Text=""></asp:Label></h3>
        <a href="Default.aspx">Go back to Login...</a>

        <label for="txtLname">Last Name:</label><asp:TextBox ID="txtLname" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rqvLname" runat="server" ErrorMessage="Please enter a last name." ControlToValidate="txtLname" Display="None"></asp:RequiredFieldValidator>

        <label for="txtFname">First Name:</label><asp:TextBox ID="txtFname" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rqvFname" runat="server" ErrorMessage="Please enter a first name." ControlToValidate="txtFname" Display="None"></asp:RequiredFieldValidator>

        <label for="txtBirth">Birth Date:</label><asp:TextBox ID="txtBirth" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rqvBirth" runat="server" ErrorMessage="Please enter a birth date." ControlToValidate="txtBirth" Display="None"></asp:RequiredFieldValidator>
        <asp:RangeValidator ID="rvBirth" runat="server" ErrorMessage="Birth date must be between 01/01/1955 and 12/31/1995." ControlToValidate="txtBirth" Type="Date" MaximumValue="12/31/1995" MinimumValue="01/01/1955" Display="None"></asp:RangeValidator>

        <label for="txtUserid">User ID:</label><asp:TextBox ID="txtUserid" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rqvUserid" runat="server" ErrorMessage="Please enter a user ID." ControlToValidate="txtUserid" Display="None"></asp:RequiredFieldValidator>
        <asp:CustomValidator ID="cvUserid" runat="server" ErrorMessage="User ID must be at least five characters long." ControlToValidate="txtUserid" OnServerValidate="CheckLength" Display="None"></asp:CustomValidator>

        <label for="txtPassword">Password:</label><asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rqvPassword" runat="server" ErrorMessage="Please enter a password." ControlToValidate="txtPassword" Display="None"></asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="revPassword" runat="server" ErrorMessage="Password must begin with two upper case letters followed by a -, *, or = and then four numbers between two and eight." ControlToValidate="txtPassword" ValidationExpression="[A-Z]{2}[-*=][2-8]{4}" Display="None"></asp:RegularExpressionValidator>

        <label for="txtPassConf">Retype Password:</label><asp:TextBox ID="txtPassConf" runat="server" TextMode="Password"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please enter your password a second time" ControlToValidate="txtPassConf" Display="None"></asp:RequiredFieldValidator>
        <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Passwords do not match." ControlToValidate="txtPassConf" ControlToCompare="txtPassword" Display="None"></asp:CompareValidator>

        <div class="btngroup"><asp:Button ID="btnCreate" runat="server" Text="Create Account" />
        <asp:Button ID="btnCancel" runat="server" Text="Cancel" CausesValidation="False" /></div>

        <asp:Label ID="lblError" runat="server" Text=""></asp:Label>
        <asp:ValidationSummary ID="vsAccount" runat="server" />
    </div>
    </form>
</body>
</html>
