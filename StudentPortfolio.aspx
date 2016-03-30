<%@ Page Language="C#" AutoEventWireup="true" CodeFile="StudentPortfolio.aspx.cs" Inherits="StudentPortfolio" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
   
        <asp:Label ID="Label1" runat="server" Text="Files:"></asp:Label>
    
        <asp:FileUpload ID="FileUpload1" runat="server" />
        <asp:Button ID="Button1" runat="server" Text="Upload" OnClick="Button1_Click" />
        
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="PieceID">
            <Columns>
                <asp:BoundField HeaderText="PieceID" DataField="PieceID" />
                <asp:BoundField HeaderText="Piece Name" DataField="PieceName" />
                <asp:TemplateField HeaderText="Portfolio">
                    <ItemTemplate>
                      
                        <img src="ShowImage.ashx?PieceID=<%# Eval("PieceID")%>" alt="<%# Eval("PieceName") %>" />
                        
                    </ItemTemplate>

                </asp:TemplateField>
            </Columns>
        </asp:GridView>

        <br />
    
    </div>
    </form>
</body>
</html>
