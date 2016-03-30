<%@ Page Language="C#" AutoEventWireup="true" CodeFile="userContact.aspx.cs" Inherits="userContact" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        Application Form: Contact<br />
        <br />
        Cell Phone#&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtCell" runat="server"></asp:TextBox>
        &nbsp;&nbsp; Street&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="txtStreet" runat="server"></asp:TextBox>
&nbsp;<br />
        Home Phone# 
        <asp:TextBox ID="txtHomePhone" runat="server"></asp:TextBox>
        &nbsp;&nbsp; City&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtCity" runat="server"></asp:TextBox>
        <br />
        Email&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
        &nbsp;&nbsp; State&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="txtState" runat="server"></asp:TextBox>
&nbsp;<br />
        Date of Birth&nbsp;&nbsp;<asp:TextBox ID="txtDoB" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp; Zip Code&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="txtZip" runat="server"></asp:TextBox>
&nbsp;<br />
        Age&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="txtAge" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp; Country&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
        <asp:TextBox ID="txtCountry" runat="server"></asp:TextBox>
        <br />
        DC Card&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="txtDCCard" runat="server"></asp:TextBox>
&nbsp;<br />
        <br />
        I Identify my gender as:<br />
        <asp:RadioButton ID="rdoBoyYoungMan" runat="server" GroupName="Gender" Text="Boy/Young Man" />
        <br />
        <asp:RadioButton ID="rdoGirlYoungWoman" runat="server" GroupName="Gender" Text="Girl/Young Woman" />
        <br />
        <asp:RadioButton ID="rdoGenderQueer" runat="server" GroupName="Gender" Text="Genderqueer" />
        <br />
        <asp:RadioButton ID="rdoTrans" runat="server" GroupName="Gender" Text="Trans/Transgender" />
        <br />
        <asp:RadioButton ID="rdoOther" runat="server" GroupName="Gender" Text="Other" />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        Race and/or ethnic identity<br />
        <asp:RadioButton ID="rdoAmericanIndian" runat="server" GroupName="Ethnicity" Text="American Indian or Alaska Native" />
        <br />
        <asp:RadioButton ID="rdoAsian" runat="server" GroupName="Ethnicity" Text="Asian or Pacific Islander" />
        <br />
        <asp:RadioButton ID="rdoBlackorAfrican" runat="server" GroupName="Ethnicity" Text="Black or African American" />
        <br />
        <asp:RadioButton ID="rdoLatina" runat="server" GroupName="Ethnicity" Text="Latina/-o" />
        <br />
        <asp:RadioButton ID="rdoWhite" runat="server" GroupName="Ethnicity" Text="White" />
        <br />
        <asp:RadioButton ID="rdoBiRacial" runat="server" GroupName="Ethnicity" Text="Bi-racial" />
        <br />
        <asp:RadioButton ID="rdoOtherRace" runat="server" GroupName="Ethnicity" Text="Other" />
        <br />
        &nbsp;
    
        <br />
        <br />
        <asp:Button ID="btnToEmergencyContact" runat="server" OnClick="btnToEmergencyContact_Click" Text="Next" />
    
    </div>
    </form>
</body>
</html>
