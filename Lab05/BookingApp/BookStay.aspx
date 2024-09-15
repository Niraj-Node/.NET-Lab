<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BookingApp.aspx.cs" Inherits="BookingApp.BookStay" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 237px;
        }
        .auto-style3 {
            width: 237px;
            height: 26px;
        }
        .auto-style4 {
            height: 26px;
        }
        .auto-style5 {
            width: 427px;
        }
        .auto-style6 {
            height: 26px;
            width: 427px;
        }
        .auto-style7 {
            width: 237px;
            height: 33px;
        }
        .auto-style8 {
            width: 427px;
            height: 33px;
        }
        .auto-style9 {
            height: 33px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="lablName" runat="server" Text="What's your name?"></asp:Label>
                    </td>
                    <td class="auto-style5">
                        <asp:TextBox ID="tbName" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorName" runat="server" ControlToValidate="tbName" ErrorMessage="Name is required" text="Please enter name" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="lblAdult" runat="server" Text="How many Adults?"></asp:Label>
                    </td>
                    <td class="auto-style5">
                        <asp:TextBox ID="tbACount" runat="server" TextMode="Number"></asp:TextBox>
                    </td>
                    <td>
                        <asp:CompareValidator ID="CompareValidatorCount" runat="server" ControlToValidate="tbACount" ErrorMessage="Value must be must than 0." ForeColor="Red" Operator="GreaterThan" Type="Integer" ValueToCompare="0"></asp:CompareValidator>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorCount" runat="server" ControlToValidate="tbACount" ErrorMessage="Count is required." ForeColor="Red"></asp:RequiredFieldValidator>
                        <!-- New Range Validator -->
                        <asp:RangeValidator ID="RangeValidatorAdults" runat="server" ControlToValidate="tbACount" ErrorMessage="Count must be between 1 and 6." ForeColor="Red" MinimumValue="1" MaximumValue="6" Type="Integer"></asp:RangeValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="lblRoomType" runat="server" Text="You are interested in..."></asp:Label>
                    </td>
                    <td class="auto-style5">
                        <asp:RadioButtonList ID="rblistRoomType" runat="server">
                            <asp:ListItem Selected="True" Value="studio">Studio</asp:ListItem>
                            <asp:ListItem Value="suit">Suit</asp:ListItem>
                            <asp:ListItem Value="delux">Delux</asp:ListItem>
                            <asp:ListItem Value="double">Double</asp:ListItem>
                            <asp:ListItem Value="single">Single</asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="lblOpFeatutes" runat="server" Text="Actually interested in..."></asp:Label>
                    </td>
                    <td class="auto-style5">
                        <asp:CheckBoxList ID="cklistOpFacility" runat="server" OnSelectedIndexChanged="cklistOpFacility_SelectedIndexChanged">
                            <asp:ListItem Value="Swimmingpool">Swimming Pool</asp:ListItem>
                            <asp:ListItem Value="gym">Gym</asp:ListItem>
                            <asp:ListItem Value="Tenniscourt">Tennis Court</asp:ListItem>
                            <asp:ListItem Value="Horseriding">Horse Riding</asp:ListItem>
                        </asp:CheckBoxList>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="lblFoodPref" runat="server" Text="We enjoy!"></asp:Label>
                    </td>
                    <td class="auto-style5">
                        <asp:DropDownList ID="ddlFoodPref" runat="server" OnSelectedIndexChanged="ddlFoodPref_SelectedIndexChanged">
                            <asp:ListItem Selected="True" Value="0">Please Select</asp:ListItem>
                            <asp:ListItem Value="veg">Veg</asp:ListItem>
                            <asp:ListItem Value="non-veg">Non-veg</asp:ListItem>
                            <asp:ListItem Value="jain">Jain</asp:ListItem>
                            <asp:ListItem Value="swaminarayan">Swaminarayan</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td>
                        <asp:CompareValidator ID="CompareValidatorFood" runat="server" ControlToValidate="ddlFoodPref" ErrorMessage="Please select your food preference" ForeColor="Red" Operator="NotEqual" ValueToCompare="0"></asp:CompareValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="lblPassword" runat="server" Text="My secret is"></asp:Label>
                    </td>
                    <td class="auto-style5">
                        <asp:TextBox ID="tbPassword" runat="server" OnTextChanged="tbACount0_TextChanged" TextMode="Password"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidatorSecret" runat="server" ControlToValidate="tbPassword" ErrorMessage="Secret must be alphanumreic string of length 6" ForeColor="Red" ValidationExpression="[0-9|a-z|A-Z]{6}"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style7"></td>
                    <td class="auto-style8">
                        <asp:Button ID="btnSubmit" runat="server" OnClick="btnSubmit_Click" Text="Book" />
                    </td>
                    <td class="auto-style9"></td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style5">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3"></td>
                    <td class="auto-style6"></td>
                    <td class="auto-style4"></td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/checkViewState.aspx" Target="_self">Can ViewState Travel?</asp:HyperLink>
                    </td>
                    <td class="auto-style3">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>

        <!-- Validation Summary -->
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" 
            ForeColor="Fuchsia"
            HeaderText="Please correct the following errors:"
            DisplayMode="BulletList"
            ShowMessageBox="False" 
            ShowSummary="True">
        </asp:ValidationSummary>

        <p>
            &nbsp;</p>
    </form>
</body>
</html>
