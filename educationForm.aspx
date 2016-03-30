<%@ Page Language="C#" AutoEventWireup="true" CodeFile="educationForm.aspx.cs" Inherits="educationForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        Education and Employment History Form<br />
        <br />
        Education:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Employment:<br />
        Name of Last School&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="txtLastSchool" runat="server"></asp:TextBox>
&nbsp;Currently Employed?
        <asp:RadioButton ID="rdoEmployedYes" runat="server" Text="Yes" GroupName="Employed" />
        <asp:RadioButton ID="rdoEmployedNo" runat="server" Text="No" GroupName="Employed" />
        <br />
        Year of Graduation&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="txtGraduationYear" runat="server"></asp:TextBox>&nbsp;&nbsp; Salary per hour?&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtSalary" runat="server"></asp:TextBox>
        <br />
        What did you study?&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="txtMajor" runat="server"></asp:TextBox>&nbsp;&nbsp; Career Goals&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtCareerGoals" runat="server"></asp:TextBox>
        <br />
        Any plans for Further Education?&nbsp;&nbsp; <asp:TextBox ID="txtFurtherEducation" runat="server"></asp:TextBox>
        &nbsp;&nbsp; Artistic Resume?&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:RadioButton ID="rdoArtResumeYes" runat="server" Text="Yes" GroupName="ArtisticResume" />
        <asp:RadioButton ID="rdoArtResumeNo" runat="server" Text="No" GroupName="ArtisticResume" />
    
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
        <br />
        <br />
&nbsp;<asp:Button ID="btnToSkills" runat="server" Text="Next" OnClick="btnToSkills_Click" />
    
    </div>
    </form>
</body>
</html>
