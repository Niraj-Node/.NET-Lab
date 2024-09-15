<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="checkViewState.aspx.cs" Inherits="BookingApp.checkViewState" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" AssociatedControlID="rbChoice" Text="do you wan to see past"></asp:Label>
            <br />
            <asp:RadioButtonList ID="rbChoice" runat="server">
                <asp:ListItem Selected="True">YES</asp:ListItem>
                <asp:ListItem>NO</asp:ListItem>
            </asp:RadioButtonList>
            <br />
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="sure" />
        </div>
    </form>
</body>
</html>
