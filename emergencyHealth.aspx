<%@ Page Language="C#" AutoEventWireup="true" CodeFile="emergencyHealth.aspx.cs" Inherits="emergencyHealth" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        Emergency Health Form<br />
        <br />
        Physician Name&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtPhysicianName" runat="server"></asp:TextBox>
        <br />
        Insurance Company&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        <asp:TextBox ID="txtInsuranceCo" runat="server"></asp:TextBox>
        <br />
        Insurance Group&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        <asp:TextBox ID="txtInsuranceGroup" runat="server"></asp:TextBox>
        <br />
        Policy Number&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtPolicyNumber" runat="server"></asp:TextBox>
        <br />
        Allergies/Diet Restrictions&nbsp;&nbsp;
        <asp:TextBox ID="txtAllergies" runat="server"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
        <br />
        <br />
&nbsp;<asp:Button ID="btnToEdu" runat="server" Text="Next" OnClick="btnToEdu_Click" />
        </div>
    </form>
</body>
</html>
