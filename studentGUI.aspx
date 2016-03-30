<%@ Page Language="C#" AutoEventWireup="true" CodeFile="studentGUI.aspx.cs" Inherits="studentGUI" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body style="height: 417px">
    <form id="form1" runat="server">
        <h1>Student Dashboard</h1>
    <div>
        <asp:Button ID="btnViewPortfolio" runat="server" Text="View Portfolio" />
        <div style="width: 299px; z-index: 1; left: 236px; top: 79px; position: absolute; height: 97px; margin-left: 2px">  Enrolled Classes:<br />
                <asp:TextBox ID="txtEnrolledClasses" runat="server" Height="66px" ReadOnly="True" Width="173px"></asp:TextBox></div>
        <br />
        <asp:Button ID="btnCourseCatalog" runat="server" Text="Course Catalog" /><br />
        <asp:Button ID="btnSelfEvaluations" runat="server" Text="Submit Self Evaluation" OnClick="btnSelfEvaluations_Click" /><br />
        <asp:Button ID="btnInstructorEvaluation"  runat="server" Text="Submit Instructor Evaluation" /><br />
        <asp:Button ID="btnClassEnrollment" runat="server" Text="Class Enrollment" /><br />
        <asp:Button ID="btnMessageInbox" runat="server" Text="Message Inbox" /><br />
    </div>

    <div style="z-index: 1; left: 588px; top: 19px; position: absolute; height: 31px; width: 160px">
        <asp:Button ID="btnHome" runat="server" Text="Home" width="70px" />&nbsp;&nbsp;
        <asp:Button ID="btnAccount" runat="server" Text="Account" />
    </div>

    <div style="z-index: 1; left: 573px; top: 79px; position: absolute; height: 57px; width: 258px">Attendance: <asp:TextBox ID="txtAttendance" runat="server" ReadOnly="True"></asp:TextBox><br />
        Bucks:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="txtBucks" runat="server" ReadOnly="True"></asp:TextBox>
    </div>

        <asp:Button ID="btnViewSelfEval" runat="server" OnClick="btnViewSelfEval_Click" Text="View Self Evaluation" />
        <asp:GridView ID="GridViewSelfEval" DataSourceId="srcSelfEval" runat="server" Visible="false" />
             <asp:SqlDataSource ID="srcSelfEval"
                 SelectCommand="Select * from Self_Eval"
                 ConnectionString="Server=PC\Localhost;Database=C1;Trusted_Connection=Yes;"
                 runat="server" />

    </form>
</body>
</html>


