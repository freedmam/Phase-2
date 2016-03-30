<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Portfolio.aspx.cs" Inherits="WebSite1_Portfolio" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style3 {
            width: 16px;
            height: 34px;
        }
        .auto-style4 {
            height: 34px;
            width: 8px;
        }
        .auto-style5 {
            width: 16px;
            height: 23px;
        }
        .auto-style6 {
            height: 23px;
            width: 8px;
        }
        .auto-style7 {
            height: 34px;
            width: 309px;
        }
        .auto-style8 {
            width: 309px;
        }
        .auto-style9 {
            height: 23px;
            width: 309px;
        }
        .auto-style10 {
            height: 34px;
            width: 150px;
        }
        .auto-style11 {
            width: 150px;
        }
        .auto-style12 {
            height: 23px;
            width: 150px;
        }
        .auto-style13 {
            width: 8px;
        }
        .auto-style14 {
            width: 16px;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table class="auto-style1">
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="lblPortfolio" runat="server" Text="Portfolios"></asp:Label>
                </td>
                <td class="auto-style4"></td>
                <td class="auto-style10"></td>
                <td class="auto-style7">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="btnHome" runat="server" Text="Home" Width ="70" />
                &nbsp;
                    <asp:Button ID="btnAccount" runat="server" Text="Account" Width ="70"  />
                </td>
            </tr>
            <tr>
                <td class="auto-style14">&nbsp;</td>
                <td class="auto-style13">&nbsp;</td>
                <td class="auto-style11">&nbsp;
                    <asp:Label ID="lblSojourner" runat="server" Text="Sojourner"></asp:Label>
                    <br />
                    <asp:DropDownList ID="cboSojourner" runat="server" Height="25px" Width="125px" >
                    </asp:DropDownList>
                </td>
                <td class="auto-style8">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5"></td>
                <td class="auto-style6"></td>
                <td class="auto-style12">
                    &nbsp;
                    <asp:Label ID="lblBeginner" runat="server" Text="Beginner"></asp:Label>
                    <br />
                    <asp:DropDownList ID="cboBeginner" runat="server" Height="25px" Width="125px">
                    </asp:DropDownList>
                    <br />
                </td>
                <td class="auto-style9"></td>
            </tr>
            <tr>
                <td class="auto-style5"></td>
                <td class="auto-style6"></td>
                <td class="auto-style12">&nbsp;
                    <asp:Label ID="lblIntermediate" runat="server" Text="Intermediate"></asp:Label>
                    <br />
                    <asp:DropDownList ID="cboIntermediate" runat="server" Height="25px" Width="125px">
                    </asp:DropDownList>
                    <br />
                </td>
                <td class="auto-style9"></td>
            </tr>
            <tr>
                <td class="auto-style14">&nbsp;</td>
                <td class="auto-style13">&nbsp;</td>
                <td class="auto-style11">
                    &nbsp;
                    <asp:Label ID="lblAdvanced" runat="server" Text="Advanced"></asp:Label>
                    <br />
                    <asp:DropDownList ID="cboAdvanced" runat="server" Height="25px" Width="125px">
                    </asp:DropDownList>
                    <br />
                </td>
                <td class="auto-style8">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style14">
                    <asp:Button ID="btnGoToPortfolio" runat="server" Text="Go To Portfolio" Width="150px" />
                </td>
                <td class="auto-style13">&nbsp;</td>
                <td class="auto-style11">&nbsp;</td>
                <td class="auto-style8">&nbsp;<input id="File1" type="file" />&nbsp;
                    <asp:Button ID="Button1" runat="server" Text="Submit" />
                    </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>