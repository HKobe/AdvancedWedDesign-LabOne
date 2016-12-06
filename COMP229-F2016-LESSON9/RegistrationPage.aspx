<%@ Page Language="C#" AutoEventWireup="true" CodeFile="RegistrationPage.aspx.cs" Inherits="RegistrationPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Registration</title>
    <style type="text/css">
        .auto-style4 {
            width: 100%;
        }
        .auto-style5 {
            width: 289px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
        <table class="auto-style4">
            <tr>
                <td class="auto-style5">User Name:</td>
                <td>
                    <asp:TextBox ID="UsrTxtBox" runat="server" Width="180px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="UsrTxtBox" ErrorMessage="User Name Required" Font-Italic="True" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5">Email: </td>
                <td>
                    <asp:TextBox ID="EmailTextBox" runat="server" Width="180px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="EmailTextBox" ErrorMessage="Email Required" Font-Italic="True" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5">Password</td>
                <td>
                    <asp:TextBox ID="PasswordTextBox" runat="server" TextMode="Password" Width="180px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="PasswordTextBox" ErrorMessage="Password Required" Font-Italic="True" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5">Confirm&nbsp; Password: </td>
                <td>
                    <asp:TextBox ID="ConfirmPasswordTextBox" runat="server" TextMode="Password" Width="180px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Confirm Password Required" Font-Italic="True" ForeColor="Red" ControlToValidate="ConfirmPasswordTextBox"></asp:RequiredFieldValidator>
                    </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5">Country: </td>
                <td>
                    <asp:DropDownList ID="DDLCountry" runat="server" Width="180px">
                        <asp:ListItem>Select Country</asp:ListItem>
                        <asp:ListItem>Canada</asp:ListItem>
                        <asp:ListItem>USA</asp:ListItem>
                        <asp:ListItem>Mexico</asp:ListItem>
                        <asp:ListItem>Lebanon</asp:ListItem>
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="DDLCountry" ErrorMessage="Country Selection required" Font-Italic="True" ForeColor="Red" InitialValue="Select Country"></asp:RequiredFieldValidator>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5">&nbsp;</td>
                <td>
                    <asp:Button ID="SubmitButton" runat="server" OnClick="SubmitButton_Click" Text="Submit" />
                    <input id="ResetButton" type="reset" value="reset" /></td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5">&nbsp;</td>
                <td>
                    <asp:Label ID="lblResult" runat="server" Text="Status"></asp:Label>
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </form>
</body>
</html>
