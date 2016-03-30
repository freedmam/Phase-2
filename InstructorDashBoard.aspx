<%@ Page Language="C#" AutoEventWireup="true" CodeFile="InstructorDashBoard.aspx.cs" Inherits="InstructorDashBoard" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
 <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 164px;
        }
        .auto-style4 {
            width: 166px;
        }
        .auto-style5 {
            width: 215px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table class="auto-style1">
            <tr>
                <td class="auto-style5">
                    <asp:Label ID="lblInstructorDashboard" runat="server" Text="Instructor Dashboard"></asp:Label>
                </td>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style2">
                    <asp:Button ID="btnHome" runat="server" Text="Home" Width="70px" />
                &nbsp;
                    <asp:Button ID="btnAccount" runat="server" Text="Account" Width="70px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style2">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5">
                    &nbsp;</td>
                <td class="auto-style4">
                    &nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5">
                    <asp:Button ID="btnInstructorViewPortfolio" runat="server" Text="View Portfolio" Width="150px" />
                </td>
                <td class="auto-style4">
                    &nbsp;</td>
                <td class="auto-style2">
                    <asp:Button ID="btnInstructorEvent" runat="server" Text="Create Event" Width="150px"/>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">
                    <asp:Button ID="btnLessonPlans" runat="server" Text="Lesson Plans" Width="150px" />
                </td>
                <td class="auto-style4">
                    <asp:Label ID="lblEnrolledClasses" runat="server" Text="Instructor Enrolled Classes"></asp:Label>
                    <br />
                    <asp:ListBox ID="lstStudentClasses" runat="server" Width="162px" OnSelectedIndexChanged="lstStudentClasses_SelectedIndexChanged"></asp:ListBox>
                </td>
                <td class="auto-style2">
                    <asp:Button ID="btnInstructorViewAttendance" runat="server" Text="Class Attendance" Width="150px" OnClick="btnInstructorViewAttendance_Click" />
                </td>
            </tr>
            <tr>
                <td class="auto-style5">
                    <asp:Button ID="btnViewInstructorEvals" runat="server" Text="View Evaluations" Width="150px" />
                    <br />
                    <br />
                    <asp:Button ID="btSubmitInstructorEvals" runat="server" Text="Submit Evaluations" Width="150px" />
                    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    </td>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style2">
                    <asp:Button ID="btnInstructorMessageInbox" runat="server" Text="Message Inbox" Width="150px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style5">
                    &nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5">
                &nbsp;&nbsp;<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </td>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
            </tr>
            </table>
    
    </div>
    </form>
</body>
</html>
