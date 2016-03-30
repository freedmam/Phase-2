    <%@ Page Language="C#" AutoEventWireup="true" CodeFile="appForm.aspx.cs" Inherits="appForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 182px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
   
        <table style="width:100%;">
            <tr>
                <td colspan="2">
                    <asp:Label ID="Label4" runat="server" Text="Application Form"></asp:Label>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <asp:Label ID="Label1" runat="server" Text="Today's Date"></asp:Label>
                </td>
                <td>
        <asp:TextBox ID="txtDateOfEnroll" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <asp:Label ID="Label2" runat="server" Text="First Name"></asp:Label>
                </td>
                <td>
        <asp:TextBox ID="txtFirstName" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <asp:Label ID="Label3" runat="server" Text="Last Name"></asp:Label>
                </td>
                <td>
            <asp:TextBox ID="txtLastName" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <asp:Label ID="Label5" runat="server" Text="Academy Site:"></asp:Label>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">
        <asp:CheckBox ID="chkStephens" runat="server" Text="St. Stephen's Church" />
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">
        <asp:CheckBox ID="chkRiverSide" runat="server" Text="RiverSide Center" />
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
        </div>
        <section>
            <asp:Button ID="btnToVolunteer" runat="server" OnClick="Button1_Click" Text="Next" />
    </section>
        &nbsp;</form>
</body>
</html>
