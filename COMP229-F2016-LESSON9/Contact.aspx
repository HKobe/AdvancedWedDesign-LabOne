<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Contact.aspx.cs" Inherits="Contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">


    <br />
    <asp:Label ID="LabelMessage" runat="server" Text="Enter your Message" style="font-size: large"></asp:Label>
    <br />
    <table class="nav-justified">
        <tr>
            <td class="modal-sm" style="width: 286px; height: 32px;">    <asp:Label ID="YourNameLabel" runat="server" Text="Your Name:"></asp:Label></td>
            <td style="height: 32px">    
                <asp:TextBox ID="YourNameTextBox" runat="server" Width="460px"></asp:TextBox>
            </td>
            <td style="height: 32px">    </td>        
        </tr>
        <tr>
            <td class="modal-sm" style="width: 286px">    <asp:Label ID="EmailAddressLabel" runat="server" Text="Enter Your  Email Address: "></asp:Label></td>
            <td>
                <asp:TextBox ID="EmailTextBox" runat="server" TextMode="Email" Width="460px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="modal-sm" style="width: 286px">    <asp:Label ID="SubjectLabel" runat="server" Text="Subject: "/></td>
            <td>
                <asp:TextBox ID="SubjectTextBox" runat="server" Width="460px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="modal-sm" style="width: 286px"><asp:Label ID="MessageLabel" runat="server" Text="Message: "/> </td>
            <td>
                <asp:TextBox ID="MessageTextBox" runat="server" Height="96px" TextMode="MultiLine" Width="460px"></asp:TextBox>
            </td>
        </tr>
    </table>


    <asp:Button ID="SubmitBtn" runat="server" OnClick="SubmitBtn_Click" Text="Submit" />
    <input id="ResetBtn" type="reset" value="reset" />

</asp:Content>

