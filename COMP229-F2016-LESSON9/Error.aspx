<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Error.aspx.cs" Inherits="Error" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        
    <div class="auto-style1">ERROR</div>
        <div class="auto-style1">
        <br /><br />
        <asp:Label ID="Label_ErrorFrom" runat="server" Text="Label">

        </asp:Label><br /><br />
        <asp:Label ID="Label_ErrorMessage" runat="server" Text="Label">

        </asp:Label><br /><br />
   
    
        </div>
   
    
    </form>
</body>
</html>
