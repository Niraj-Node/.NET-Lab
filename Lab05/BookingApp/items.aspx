<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="items.aspx.cs" Inherits="BookingApp.items" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Menu Selection</title>
</head>
<body>
    <form id="form1" runat="server">
        <div style="text-align: center;">
            <h2>Select Items from the Menu</h2>
            <asp:CheckBoxList ID="cbListMenuItems" runat="server">
                <asp:ListItem Value="100">Pizza - $100</asp:ListItem>
                <asp:ListItem Value="50">French Fries - $50</asp:ListItem>
                <asp:ListItem Value="80">Sandwich - $80</asp:ListItem>
                <asp:ListItem Value="120">Burger - $120</asp:ListItem>
                <asp:ListItem Value="40">Vada Pav - $40</asp:ListItem>
                <asp:ListItem Value="30">Cold Drink - $30</asp:ListItem>
            </asp:CheckBoxList>
            <br /><br />
            <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" />
            <br /><br />
        </div>
    </form>
</body>
</html>
