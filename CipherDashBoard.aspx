<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CipherDashBoard.aspx.cs" Inherits="CipherDashBoard" %>
<%@ Register assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" namespace="System.Web.UI.DataVisualization.Charting" tagprefix="asp" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
<style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 164px;
        }
        .auto-style4 {
            width: 164px;
            height: 30px;
        }
        .auto-style13 {
            width: 130px;
        }
        .auto-style14 {
            width: 130px;
            height: 30px;
        }
        .auto-style16 {
            width: 20px;
            height: 30px;
        }
        .auto-style17 {
            width: 20px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table class="auto-style1">
            <tr>
                <td class="auto-style13">
                    <asp:Label ID="lblCipherDashboard" runat="server" Text="Cipher Dashboard"></asp:Label>
                </td>
                <td class="auto-style17">&nbsp;</td>
                <td class="auto-style2">
                    <asp:Button ID="btnHome" runat="server" Text="Home" Width="70px" />
                &nbsp;
                    <asp:Button ID="btnAccount" runat="server" Text="Account" Width="70px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style14"></td>
                <td class="auto-style16"></td>
                <td class="auto-style4">
                    </td>
            </tr>
            <tr>
                <td class="auto-style13">
                    &nbsp;</td>
                <td class="auto-style17">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style13">
                    <asp:Button ID="btnPortfolio" runat="server" Text="Portfolio"  Width="150px" OnClick="btnPortfolio_Click" />
                </td>
                <td class="auto-style17">&nbsp;</td>
                <td class="auto-style2">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style13">
                    &nbsp;</td>
                <td class="auto-style17">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style13">
                    <asp:Button ID="btnStudentProgress" runat="server" Text="View Student Progress" Width="150px" />
                </td>
                <td class="auto-style17">
                    <asp:Chart ID="Chart1" runat="server" Height="278px" Width="468px" DataSourceID="C1">
                        <series>
                            <asp:Series Name="Series1" ChartArea="Cipher Donations" XValueMember="DateOfDonation" YValueMembers="Amount" IsXValueIndexed="True">
                            </asp:Series>
                        </series>
                        <chartareas>
                            <asp:ChartArea Name="Cipher Donations">
                                <AxisY Title="Donation Amount">
                                </AxisY>
                                <AxisX Title="Donation Date">
                                    <LabelStyle Interval="Auto" />
                                </AxisX>
                            </asp:ChartArea>
                        </chartareas>
                        <Titles>
                            <asp:Title Name="Title1" Text="Cipher Donations">
                            </asp:Title>
                        </Titles>
                    </asp:Chart>
                    <asp:SqlDataSource ID="C1" runat="server" ConnectionString="<%$ ConnectionStrings:C1ConnectionString %>" SelectCommand="SELECT [Amount], [DateOfDonation] FROM [Donation]"></asp:SqlDataSource>
                </td>
                <td class="auto-style2">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style13">
                    &nbsp;</td>
                <td class="auto-style17">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style13">
                    <asp:Button ID="btnCatalog" runat="server" Text="Course Catalog" Width="150px" />
                </td>
                <td class="auto-style17">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style13">
                    &nbsp;</td>
                <td class="auto-style17">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style13">
                    <asp:Button ID="btnMessageInbox" runat="server" Text="Message Inbox" Width="150px" />
                </td>
                <td class="auto-style17">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style13">&nbsp;</td>
                <td class="auto-style17">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style13">&nbsp;</td>
                <td class="auto-style17">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style13">&nbsp;</td>
                <td class="auto-style17">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>

