using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class educationForm : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnToSkills_Click(object sender, EventArgs e)
    {
        Session["LastSchool"] = txtLastSchool.Text;
        Session["GraduationYear"] = txtGraduationYear.Text;
        Session["Major"] = txtMajor.Text;
        Session["FurtherEducation"] = txtFurtherEducation.Text;
        Session["Salary"] = txtSalary.Text;
        Session["CareerGoals"] = txtCareerGoals.Text;

        //currently employed 
        if (rdoEmployedYes.Checked == true)
        {
            Session["CurrentlyEmployed"] = "Yes";
        }
        else if (rdoEmployedNo.Checked == true)
        {
            Session["CurrentlyEmployed"] = "No";
        }

        //artistic resume
        if (rdoArtResumeYes.Checked == true)
        {
            Session["ArtisticResume"] = "Yes";
        }
        else if (rdoArtResumeNo.Checked == true)
        {
            Session["ArtisticResume"] = "No";
        }
        Response.Redirect("SkillMastery.aspx");
    }
}