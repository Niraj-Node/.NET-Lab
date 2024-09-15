<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="cookiedemo.aspx.cs" Inherits="BookingApp.cookiedemo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:TextBox ID="tbName" runat="server" placeholder="Enter your name"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
            <asp:Button ID="Button1" runat="server" OnClick="save" Text="save" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button2" runat="server" OnClick="retrive" Text="Retrive" />
&nbsp;&nbsp;&nbsp;
            <asp:Label ID="lb" runat="server"></asp:Label>
            <br />
            <asp:Button ID="Button3" runat="server" OnClick="delete" Text="Delete Existing cookie" />
        </div>
    </form>
</body>
</html>
