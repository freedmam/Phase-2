<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AddAttendance.aspx.cs" Inherits="AddAttendance" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
     <h1>Update Attendance</h1>
    <div>
        <asp:Label ID="lblID" runat="server" Text="Student: "></asp:Label>
        <asp:DropDownList ID="dlStudent" runat="server"></asp:DropDownList><br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;           
        <br />
        <asp:Label ID="lblAttendance" runat="server" Text="Attendance "></asp:Label>
        <asp:TextBox ID="txtAttendance" runat="server"></asp:TextBox> 
        <br />
        <br />
        <asp:Button ID="btnAdd" runat="server" Text="Add Attendance" OnClick="btnAdd_Click" />
        <br /> <br />
        <asp:Label ID="lblconfirm" runat="server" Text=" "></asp:Label>
    </div>
    </form>
</body>
</html>
