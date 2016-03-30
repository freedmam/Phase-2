<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ClassEnrollment.aspx.cs" Inherits="ClassEnrollment" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
<style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 140px;
        }
        .auto-style3 {
            width: 172px;
        }
        .auto-style4 {
            width: 200px;
        }
        .auto-style5 {
            width: 21px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="lblClassEnrollment" runat="server" Text="Class Enrollment"></asp:Label>
                </td>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style4">
                    <asp:Button ID="btnHome" runat="server" Text="Home" Width="70" /> 
                    &nbsp; 
                    <asp:Button ID="Button2" runat="server" Text="Account" Width="70" />
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    &nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style3">
                    <asp:Label ID="lblEnroll" runat="server" Text="Select Classes to Enroll:"></asp:Label>
                </td>
                <td class="auto-style4">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style3">
                    <asp:ListBox ID="ListBox1" runat="server" Height="123px" Width="264px"></asp:ListBox>
                </td>
                <td class="auto-style4">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Button ID="btnCourseCatalog" runat="server" Text="Course Catalog" Width="150" />
                </td>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style4">
                    <asp:Button ID="btnSubmit" runat="server" Text="Submit Classes" Width="150" />
                </td>
            </tr>
            </table>
    
    </div>
    </form>
</body>
</html>
