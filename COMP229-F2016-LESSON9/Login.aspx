<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Recipe Login Page</title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
        .auto-style2 {
            width: 100%;
        }
        .auto-style3 {
            width: 524px;
            text-align: right;
        }
        .auto-style4 {
            text-align: left;
        }
        .auto-style5 {
            margin-left: 0px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="auto-style1">
    
        <strong>Recipe Login Page</strong></div>
        <table class="auto-style2" align="center">
            <tr>
                <td class="auto-style3">Username:</td>
                <td class="auto-style1">
    
        <strong>
                    <asp:TextBox ID="LoginUserTextBox" runat="server" Width="178px"></asp:TextBox>
                    </strong>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="LoginUserTextBox" ErrorMessage="Please enter Username" Font-Italic="True" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">Password:</td>
                <td class="auto-style1">
                    <asp:TextBox ID="LoginPasswordTextBox" runat="server" TextMode="Password" Width="180px" CssClass="auto-style5"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="LoginPasswordTextBox" ErrorMessage="Please enter Password" Font-Italic="True" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style4">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="LoginButton" runat="server" OnClick="LoginButton_Click" Text="Login" Width="79px" />
                </td>
                <td><a href="RegistrationPage.aspx">New Users May Register Here</a></td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style1">
                </td>
                <td><a href="Default.aspx">Or click here to continue to the Recipe Page</a></td>
            </tr>
        </table>
    </form>
</body>
</html>


