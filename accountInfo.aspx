<%@ Page Language="C#" AutoEventWireup="true" CodeFile="accountInfo.aspx.cs" Inherits="accountInfo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
<style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style3 {
            width: 161px;
        }
        .auto-style4 {
            width: 180px;
        }
        .auto-style5 {
            width: 135px;
        }
        .auto-style6 {
            width: 403px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table class="auto-style1">
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="lblAccountPage" runat="server" Text="Account Information"></asp:Label>
                </td>
                <td class="auto-style4">&nbsp;</td>
                <td>&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style6">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
                <td>&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style6">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="lblCellPhone" runat="server" Text="Cell Phone Number:"></asp:Label>
                </td>
                <td class="auto-style4">
                    <asp:TextBox ID="txtCellPhoneNumber" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
                <td class="auto-style5">
                    <asp:Label ID="lblstreet" runat="server" Text="Street:"></asp:Label>
                </td>
                <td class="auto-style6">
                    <asp:TextBox ID="txtStreet" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                    &nbsp;</td>
                <td class="auto-style4">
                    &nbsp;</td>
                <td>&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style6">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="lblHomePhone" runat="server" Text="Home Phone Number:"></asp:Label>
                </td>
                <td class="auto-style4">
                    <asp:TextBox ID="txtHomePhoneNumber" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
                <td class="auto-style5">
                    <asp:Label ID="lblState" runat="server" Text="State:"></asp:Label>
                </td>
                <td class="auto-style6">
                    <asp:TextBox ID="txtState" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
                <td>&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style6">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="lblEmail" runat="server" Text="Email Address:"></asp:Label>
                </td>
                <td class="auto-style4">
                    <asp:TextBox ID="txtEmailAddress" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
                <td class="auto-style5">
                    <asp:Label ID="lblCity" runat="server" Text="City:"></asp:Label>
                </td>
                <td class="auto-style6">
                    <asp:TextBox ID="txtCity" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                    &nbsp;</td>
                <td class="auto-style4">
                    &nbsp;</td>
                <td>&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style6">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="lblDateOfBirth" runat="server" Text="Date Of Birth:"></asp:Label>
                </td>
                <td class="auto-style4">
                    <asp:TextBox ID="txtDateOfBirth" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
                <td class="auto-style5">
                    <asp:Label ID="lblZip" runat="server" Text="Zip Code:"></asp:Label>
                </td>
                <td class="auto-style6">
                    <asp:TextBox ID="txtZipCode" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                    &nbsp;</td>
                <td class="auto-style4">
                    &nbsp;</td>
                <td>&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style6">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="lblOneCard" runat="server" Text="One Card Number:"></asp:Label>
                </td>
                <td class="auto-style4">
                    <asp:TextBox ID="txtOneCard" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
                <td class="auto-style5">
                    <asp:Label ID="lblWardofResidence" runat="server" Text="Ward Of Residence:"></asp:Label>
                </td>
                <td class="auto-style6">
                    <asp:DropDownList ID="cboWardOfResidence" runat="server">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                    &nbsp;</td>
                <td class="auto-style4">
                    &nbsp;</td>
                <td>&nbsp;</td>
                <td class="auto-style5">
                    &nbsp;</td>
                <td class="auto-style6">
                    &nbsp;<asp:Button ID="btnUpdate" runat="server" Text="Update" Width="150" OnClick="btnUpdate_Click" />
&nbsp;</td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>

