<%@ Page Language="C#" AutoEventWireup="true" CodeFile="peopleDisplay.aspx.cs" Inherits="peopleDisplay" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <h2>People</h2>
    <div>
        <asp:GridView ID="gv1" runat="server"></asp:GridView>
        <asp:DropDownList ID="ddApplicantID" runat="server">
        </asp:DropDownList>
        <asp:Button ID="Button1" runat="server" Text="Verify" OnClick="Button1_Click" />
        <asp:Button ID="Button2" runat="server" Text="Not Verified" OnClick="Button2_Click" />
    </div>
    </form>
</body>
</html>
