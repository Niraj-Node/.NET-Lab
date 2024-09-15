<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="final.aspx.cs" Inherits="BookingApp.final" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Order Summary</title>
</head>
<body>
    <form id="form1" runat="server">
        <div style="text-align: center;">
            <h2>Your Order Summary</h2>
            <asp:Label ID="lblItems" runat="server" Text=""></asp:Label>
            <br /><br />
            <asp:Label ID="lblTotalAmount" runat="server" Text=""></asp:Label>
        </div>
    </form>
</body>
</html>