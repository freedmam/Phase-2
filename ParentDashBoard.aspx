<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ParentDashBoard.aspx.cs" Inherits="ParentDashBoard" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
<style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 194px;
        }
        .auto-style5 {
            height: 23px;
        }
        .auto-style6 {
            width: 194px;
            height: 23px;
        }
        .auto-style7 {
            width: 339px;
        }
        .auto-style8 {
            height: 23px;
            width: 339px;
        }
        .auto-style10 {
            width: 377px;
        }
        .auto-style11 {
            height: 23px;
            width: 377px;
        }
    #Submit1 {
        width: 150px;
    }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table class="auto-style1">
            <tr>
                <td class="auto-style7">
                    <asp:Label ID="lblParentDashboard" runat="server" Text="Parent Dashboard"></asp:Label>
                </td>
                <td>&nbsp;</td>
                <td class="auto-style10">&nbsp;</td>
                <td>&nbsp;</td>
                <td class="auto-style2">
                    <asp:Button ID="btnParentHome" runat="server" Text="Home" Width="70px"  />
                    &nbsp;
                    <asp:Button ID="btnAccount" runat="server" Text="Account" Width="70" />
                </td>
                <td>
                    &nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style7">&nbsp;</td>
                <td>&nbsp;</td>
                <td class="auto-style10">
                    &nbsp;</td>
                <td>&nbsp;</td>
                <td class="auto-style2">
                    &nbsp;
                </td>
                <td>
                    &nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style8">
                    </td>
                <td class="auto-style5"></td>
                <td class="auto-style11">
                    </td>
                <td class="auto-style5"></td>
                <td class="auto-style6"></td>
                <td class="auto-style5">
                    </td>
                <td class="auto-style5"></td>
                <td class="auto-style5"></td>
                <td class="auto-style5"></td>
                <td class="auto-style5"></td>
                <td class="auto-style5"></td>
                <td class="auto-style5"></td>
            </tr>
            <tr>
                <td class="auto-style7">
                    <asp:Button ID="btnPortfolio" runat="server" Text="Portfolio" Width="150px" />
                </td>
                <td>&nbsp;</td>
                <td class="auto-style10">
                    &nbsp;</td>
                <td>&nbsp;</td>
                <td class="auto-style2">
                    <asp:Label ID="lblStudentAttendence" runat="server" Text="Student Attendance"></asp:Label>
                    <br />
                    <asp:TextBox ID="txtStudentAttendence" runat="server" Enabled="False"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style7">
                    <asp:Button ID="btnParentCourseCatalog" runat="server" Text="Course Catalog" Width="150px"/>
                </td>
                <td>&nbsp;</td>
                <td class="auto-style10">
                    <asp:Label ID="lblStudentClasses" runat="server" Text="Student Enrolled Classes"></asp:Label>
                    <br />
                    <asp:ListBox ID="lstStudentClasses" runat="server" Width="217px"></asp:ListBox>
                </td>
                <td>&nbsp;</td>
                <td class="auto-style2">
                    <asp:Label ID="lblStudentBuck" runat="server" Text="Student Bucks"></asp:Label>
                    <asp:TextBox ID="txtStudentBuck" runat="server" Enabled="False"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style8">
                    </td>
                <td class="auto-style5"></td>
                <td class="auto-style11"></td>
                <td class="auto-style5"></td>
                <td class="auto-style6"></td>
                <td class="auto-style5">
                </td>
                <td class="auto-style5"></td>
                <td class="auto-style5"></td>
                <td class="auto-style5"></td>
                <td class="auto-style5"></td>
                <td class="auto-style5"></td>
                <td class="auto-style5"></td>
            </tr>
            <tr>
                <td class="auto-style7">
                    <asp:Button ID="btnParentEvaluation" runat="server" Text="View Evaluations" Width="150px" />
                    <br />
                    <br />
                    <input id="Submit1" type="submit" value="Submit Evaluations" /><br />
                    <br />
&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    </td>
                <td>&nbsp;</td>
                <td class="auto-style10">&nbsp;</td>
                <td>&nbsp;</td>
                <td class="auto-style2">
                    <asp:Button ID="btnParentMessageInbox" runat="server" Text="Message Inbox" Width="150px" />
                </td>
                <td>
                    &nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            </table>
    
    </div>
    </form>
    <p>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <img alt="" src="" style="height: 94px; width: 213px" /></p>

</body>
</html>
