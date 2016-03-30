<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AddContributions.aspx.cs" Inherits="AddContributions" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <h1>Cipher Contributions</h1>
        <asp:Label ID="lblcipherID" runat="server" Text="CipherID: "></asp:Label> <br />
        <asp:DropDownList ID="dlCipherID" runat="server"></asp:DropDownList> <br />
        <asp:Label ID="lblDonation" runat="server" Text="Donation Amount: "></asp:Label> 
        <asp:TextBox ID="txtAmt" runat="server"></asp:TextBox> <br />
        <asp:Label ID="lblDonationDate" runat="server" Text="Donation Date: "></asp:Label>
        <asp:TextBox ID="txtDonationDate" runat="server"></asp:TextBox>
        <br /> <br />

        <asp:Button ID="btnSave" runat="server" Text="Save Donation" OnClick="btnSave_Click" /> <br /> <br />
        <asp:Label ID="lblConfirmation" runat="server" Text=""></asp:Label>
    
    </div>
    </form>
</body>
</html>
