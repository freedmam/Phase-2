<%@ Page Language="C#" AutoEventWireup="true" CodeFile="studentSelfEvaluation.aspx.cs" Inherits="studentSelfEvaluation" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
 <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 181px;
        }
        .auto-style3 {
            width: 203px;
        }
        .auto-style4 {
            width: 212px;
        }
     .auto-style5 {
         width: 181px;
         height: 26px;
     }
     .auto-style6 {
         width: 203px;
         height: 26px;
     }
     .auto-style7 {
         width: 212px;
         height: 26px;
     }
     .auto-style8 {
         height: 26px;
     }
     .auto-style9 {
         width: 181px;
         height: 28px;
     }
     .auto-style10 {
         width: 203px;
         height: 28px;
     }
     .auto-style11 {
         width: 212px;
         height: 28px;
     }
     .auto-style12 {
         height: 28px;
     }
     .auto-style13 {
         width: 181px;
         height: 33px;
     }
     .auto-style14 {
         width: 203px;
         height: 33px;
     }
     .auto-style15 {
         width: 212px;
         height: 33px;
     }
     .auto-style16 {
         height: 33px;
     }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="lblStudentEvaluation" runat="server" Text="Student Self Evaluation"></asp:Label>
                </td>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style4">
                    <asp:Label ID="lblSkillEvaluation" runat="server" Text="Student Self Skill Evaluation"></asp:Label>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label1" runat="server" Text="How did you hear about this class?"></asp:Label>
                </td>
                <td class="auto-style3">
                    <asp:DropDownList ID="ddlHearAboutClass" runat="server">
                        <asp:ListItem>FaceBook</asp:ListItem>
                        <asp:ListItem>Twitter</asp:ListItem>
                        <asp:ListItem>Friend</asp:ListItem>
                        <asp:ListItem>Parent/Guardian</asp:ListItem>
                        <asp:ListItem>Teacher/Counselor</asp:ListItem>
                        <asp:ListItem>Not Sure</asp:ListItem>
                        <asp:ListItem>Other</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="auto-style4">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style4">
                    <asp:Label ID="lblStudentRecognition" runat="server" Text="Recognition (out of 5): "></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtStudentRecognition" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label2" runat="server" Text="Do you feel safe/comfortable in class?"></asp:Label>
                </td>
                <td class="auto-style3">
                    <asp:TextBox ID="txtComfort" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style4">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    &nbsp;</td>
                <td class="auto-style3">
                    &nbsp;</td>
                <td class="auto-style4">
                    <asp:Label ID="lblStudentTechnology" runat="server" Text="Technology (out of 5):"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtStudentTechnology" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label3" runat="server" Text="Please indicate what could be done to make you feel more safe/comfortable"></asp:Label>
                </td>
                <td class="auto-style3">
                    <asp:TextBox ID="txtComfortDescription" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style4">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style4">
                   <asp:Label ID="lblStudentScratching" runat="server" Text="Scratching (out of 5):"></asp:Label>
                </td>
                <td>
                   <asp:TextBox ID="txtStudentScratching" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label4" runat="server" Text="What skills have you developed since attending this class?"></asp:Label>
                </td>
                <td class="auto-style3">
                    <asp:TextBox ID="txtSkillsLearned" runat="server"></asp:TextBox>
                    <br />
                </td>
                <td class="auto-style4">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5"></td>
                <td class="auto-style6"></td>
                <td class="auto-style7">
                    <asp:Label ID="lblStudentProfessionalism" runat="server" Text="Being Professional (out of 5):"></asp:Label>
                </td>
                <td class="auto-style8">
                    <asp:TextBox ID="txtStudentProfessionalism" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style8"></td>
                <td class="auto-style8"></td>
                <td class="auto-style8"></td>
                <td class="auto-style8"></td>
                <td class="auto-style8"></td>
                <td class="auto-style8"></td>
            </tr>
            <tr>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style8">&nbsp;</td>
                <td class="auto-style8">&nbsp;</td>
                <td class="auto-style8">&nbsp;</td>
                <td class="auto-style8">&nbsp;</td>
                <td class="auto-style8">&nbsp;</td>
                <td class="auto-style8">&nbsp;</td>
                <td class="auto-style8">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label6" runat="server" Text="Please rank 1 (Completely Disagree) to 5 (Completely Agree)"></asp:Label>
                </td>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style4">
                    <asp:Label ID="lblStudentPresentation" runat="server" Text="Presentation (out of 35):"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtStudentPresentation" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    &nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style4">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label5" runat="server" Text="In class I get to..."></asp:Label>
                </td>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label7" runat="server" Text="Try new things"></asp:Label>
                </td>
                <td class="auto-style3">
                    <asp:TextBox ID="txtTryNew" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style4">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label8" runat="server" Text="Learn what it takes to be an artist"></asp:Label>
                </td>
                <td class="auto-style3">
                    <br />
                    <asp:TextBox ID="txtTakesToBeArtist" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style4">
                    <asp:Label ID="lblstudentparticipation" runat="server" Text="How would you describe your participation in class?"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtStudentParticipation" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style4">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label9" runat="server" Text="Use different art mediums"></asp:Label>
                </td>
                <td class="auto-style3">
                    <asp:TextBox ID="txtMediums" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style4">
                    <asp:Label ID="lblCompleteFinalPiece" runat="server" Text="Did you finish a final piece of work for All City?"></asp:Label>
                </td>
                <td>
                    <asp:RadioButton ID="rboyes" runat="server" Text="Yes" GroupName="FinalPiece" />
                    <asp:RadioButton ID="rboNo" runat="server" Text="No" GroupName="FinalPiece" />
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style4">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label10" runat="server" Text="Make friends"></asp:Label>
                </td>
                <td class="auto-style3">
                    <asp:TextBox ID="txtMakeFriends" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style4">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style13"></td>
                <td class="auto-style14"></td>
                <td class="auto-style15">
                    </td>
                <td class="auto-style16">
                    <asp:Button ID="btnSubmit" runat="server" OnClick="Button1_Click" Text="Submit Evaluation" />
                </td>
                <td class="auto-style16"></td>
                <td class="auto-style16"></td>
                <td class="auto-style16"></td>
                <td class="auto-style16"></td>
                <td class="auto-style16"></td>
                <td class="auto-style16"></td>
            </tr>
            <tr>
                <td class="auto-style5">
                    <asp:Label ID="Label11" runat="server" Text="This class has helped me to..."></asp:Label>
                </td>
                <td class="auto-style6"></td>
                <td class="auto-style7">
                    </td>
                <td class="auto-style8">
                    </td>
                <td class="auto-style8"></td>
                <td class="auto-style8"></td>
                <td class="auto-style8"></td>
                <td class="auto-style8"></td>
                <td class="auto-style8"></td>
                <td class="auto-style8"></td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style4">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label12" runat="server" Text="Be motivated to learn new things"></asp:Label>
                </td>
                <td class="auto-style3">
                    <asp:TextBox ID="txtLearnNew" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style4">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5"></td>
                <td class="auto-style6"></td>
                <td class="auto-style7">
                    &nbsp;</td>
                <td class="auto-style8">
                    </td>
                <td class="auto-style8"></td>
                <td class="auto-style8"></td>
                <td class="auto-style8"></td>
                <td class="auto-style8"></td>
                <td class="auto-style8"></td>
                <td class="auto-style8"></td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label13" runat="server" Text="Feel happy with myself"></asp:Label>
                </td>
                <td class="auto-style3">
                    <asp:TextBox ID="txtFeelHappyWSelf" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style4">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5"></td>
                <td class="auto-style6"></td>
                <td class="auto-style7">
                    </td>
                <td class="auto-style8">
                    </td>
                <td class="auto-style8"></td>
                <td class="auto-style8"></td>
                <td class="auto-style8"></td>
                <td class="auto-style8"></td>
                <td class="auto-style8"></td>
                <td class="auto-style8"></td>
            </tr>
            <tr>
                <td class="auto-style9">
                    <asp:Label ID="Label14" runat="server" Text="Use my art to deal with stress"></asp:Label>
                </td>
                <td class="auto-style10">
                    <asp:TextBox ID="txtDealWStress" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style11">
                    </td>
                <td class="auto-style12">
                    </td>
                <td class="auto-style12"></td>
                <td class="auto-style12"></td>
                <td class="auto-style12"></td>
                <td class="auto-style12"></td>
                <td class="auto-style12"></td>
                <td class="auto-style12"></td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style4">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label15" runat="server" Text="Respect people who are different than me"></asp:Label>
                </td>
                <td class="auto-style3">
                    <asp:TextBox ID="txtRespectDif" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style4">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style4">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label16" runat="server" Text="Resist negativity or negative peer influences"></asp:Label>
                </td>
                <td class="auto-style3">
                    <asp:TextBox ID="txtResistNeg" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style4">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style4">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label17" runat="server" Text="By participating in class..."></asp:Label>
                </td>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style4">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5">
                    <asp:Label ID="Label18" runat="server" Text="I feel comfortable being creative around my peers"></asp:Label>
                </td>
                <td class="auto-style6">
                    <asp:TextBox ID="txtComfortCreative" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style7">
                    </td>
                <td class="auto-style8">
                    </td>
                <td class="auto-style8"></td>
                <td class="auto-style8"></td>
                <td class="auto-style8"></td>
                <td class="auto-style8"></td>
                <td class="auto-style8"></td>
                <td class="auto-style8"></td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style4">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label19" runat="server" Text="I can talk about careers I'm interested in"></asp:Label>
                </td>
                <td class="auto-style3">
                    <asp:TextBox ID="txtTalkCareerInt" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style4">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style4">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label20" runat="server" Text="I know the steps needed to reach my career goals"></asp:Label>
                </td>
                <td class="auto-style3">
                    <asp:TextBox ID="txtStepsToGoals" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style4">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style4">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label21" runat="server" Text="I am sure that I will..."></asp:Label>
                </td>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style4">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label22" runat="server" Text="Continue growing as an artist"></asp:Label>
                </td>
                <td class="auto-style3">
                    <asp:TextBox ID="txtContinuedGrowth" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style4">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style4">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label23" runat="server" Text="Finish school (High School/College"></asp:Label>
                </td>
                <td class="auto-style3">
                    <asp:TextBox ID="txtFinishSchool" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style4">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style4">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label24" runat="server" Text="Be able to find and do well in a job that I enjoy"></asp:Label>
                </td>
                <td class="auto-style3">
                    <asp:TextBox ID="txtEnjoyJob" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style4">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
