<%@ Page Language="C#" AutoEventWireup="true" CodeFile="emergencyContact.aspx.cs" Inherits="emergencyContact" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        Emergency Contact Form<br />
        <br />
        Emergency Contact First Name&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="txtContactFName" runat="server"></asp:TextBox>
&nbsp;<br />
        Emergency Contact Last Name&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        <asp:TextBox ID="txtContactLName" runat="server"></asp:TextBox>
        <br />
        Relation To Student&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        <asp:TextBox ID="txtContactRelation" runat="server"></asp:TextBox>
        <br />
        Emergency Contact Home Phone Number&nbsp;&nbsp;
        <asp:TextBox ID="txtContactHomePhone" runat="server"></asp:TextBox>
        <br />
        <br />
        Emergency Contact Cell Phone Number&nbsp;&nbsp;
        <asp:TextBox ID="txtContactCellPhone" runat="server"></asp:TextBox>
        <br />
        <br />
        Emergency Contact Email&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtContactEmail" runat="server"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
        <asp:Button ID="btnToPhysician" runat="server" Text="Next" OnClick="btnToPhysician_Click" />
        </div>
    </form>
</body>
</html>
