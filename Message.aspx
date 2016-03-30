<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Message.aspx.cs" Inherits="Message" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
 <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 108px;
        }
        .auto-style3 {
            width: 108px;
            height: 23px;
        }
        .auto-style4 {
            height: 23px;
        }
        .auto-style5 {
            width: 359px;
        }
        .auto-style6 {
            height: 23px;
            width: 359px;
        }
        .auto-style7 {
            width: 226px;
        }
        .auto-style8 {
            height: 23px;
            width: 226px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="lblSendMessage" runat="server" Text="Send Message"></asp:Label>
                </td>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style7">
                    <asp:Button ID="btnHome" runat="server" Text="Home" Width="70" />
&nbsp;
                    <asp:Button ID="btnAccount" runat="server" Text="Account" Width="70" />
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style7">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3"></td>
                <td class="auto-style6"></td>
                <td class="auto-style8"></td>
                <td class="auto-style4"></td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style5">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="lblMessage" runat="server" Text="Message"></asp:Label>
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="TextBox1" runat="server" Height="100px" TextMode="MultiLine" Width="200px"></asp:TextBox>
                </td>
                <td class="auto-style7">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style7">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Button ID="btnSend" runat="server" Text="Send Message" Width="150" />
                </td>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style7">
                    <input id="File1" type="file" /></td>
                <td>&nbsp;</td>
            </tr>
            </table>
    
    </div>
    </form>
</body>
</html>
