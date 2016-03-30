<%@ Page Language="C#" AutoEventWireup="true" CodeFile="staffDashboard.aspx.cs" Inherits="staffDashboard" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
<style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style3 {
            width: 181px;
        }
        .auto-style6 {
            width: 113px;
        }
        .auto-style8 {
            width: 15px;
        }
        .auto-style9 {
            width: 67px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
          <table class="auto-style1">
            <tr>
                <td class="auto-style6">
                    <asp:Label ID="lblStaffDashboard" runat="server" Text="Staff Dashboard"></asp:Label>
                </td>
                <td class="auto-style8">&nbsp;</td>
                <td class="auto-style9">&nbsp;</td>
                <td class="auto-style3">
                    <asp:Button ID="btnHome" runat="server" Text="Home" Width="70px" />
                &nbsp;<asp:Button ID="btnAccount" runat="server" Text="Account" Width="70px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style8">&nbsp;</td>
                <td class="auto-style9">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style8">&nbsp;</td>
                <td class="auto-style9">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style6">
                    <asp:Button ID="btnPortfolio" runat="server" Text="Portfolios" Width="150px" />
                </td>
                <td class="auto-style8">&nbsp;</td>
                <td class="auto-style9">
                    <asp:Button ID="btnCatalog" runat="server" Text="Course Catalog" Width="150px" />
                </td>
                <td class="auto-style3">
                    <asp:Button ID="btnViewAttendance" runat="server" Text="Attendance" Width="150px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style8">&nbsp;</td>
                <td class="auto-style9">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style6">
                    <asp:Button ID="btnClasses" runat="server" Text="Classes" Width="150px"/>
                </td>
                <td class="auto-style8">&nbsp;</td>
                <td class="auto-style9">
                    <asp:Button ID="btnMessageInbox" runat="server" Text="Message Inbox" Width="150px" />
                </td>
                <td class="auto-style3">
                    <asp:Button ID="btnPeople" runat="server" Text="People" Width="150px" PostBackUrl="peopleDisplay.aspx"/>
                </td>
            </tr>
            <tr>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style8">&nbsp;</td>
                <td class="auto-style9">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style6">
                    <asp:Button ID="btnEvaluations" runat="server" Text="View Evaluations" Width="150px" />
                </td>
                <td class="auto-style8">&nbsp;</td>
                <td class="auto-style9">
                    <asp:Button ID="btnViewProgress" runat="server" Text="View Progress" Width="150px" />
                </td>
                <td class="auto-style3"><asp:Button ID="btnDonations" runat="server" Text="Donations" Width="150px" OnClick="btnDonations_Click" /></td>
                
            </tr>
            <tr>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style8">&nbsp;</td>
                <td class="auto-style9">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
