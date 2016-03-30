<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AddClass.aspx.cs" Inherits="AddClass" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Classes</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <h1>Add Class</h1>
        <asp:Label ID="lblClassName" runat="server" Text="Class Name: "></asp:Label>
        <asp:TextBox ID="txtClassName" runat="server"></asp:TextBox> <br />
        <asp:Label ID="lblClassDescription" runat="server" Text="Class Description: "></asp:Label>
        <asp:TextBox ID="txtDescription" runat="server"></asp:TextBox> <br />
        <asp:Label ID="lblCourseID" runat="server" Text="Course ID: "></asp:Label>
        <asp:DropDownList ID="dlcourseID" runat="server"></asp:DropDownList> <br /><br />
        <asp:Button ID="btnSave" runat="server" Text="Save Class" OnClick="btnSave_Click" /> 
        <asp:Button ID="btnLessonPlan" runat="server" Text="Upload Lesson Plans" OnClick="btnLessonPlan_Click" />
        <br /> <br />

         <asp:Label ID="lblConfirmation" runat="server" Text=""></asp:Label>
    </div>
    </form>
</body>
</html>
