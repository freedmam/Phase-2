using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class emergencyHealth : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnToEdu_Click(object sender, EventArgs e)
    {
        Session["PhysicianName"] = txtPhysicianName.Text;
        Session["InsuranceCo"] = txtInsuranceCo.Text;
        Session["InsuranceGroup"] = txtInsuranceGroup.Text;
        Session["PolicyNumber"] = txtPolicyNumber.Text;
        Session["Allergies"] = txtAllergies.Text;
        Response.Redirect("educationForm.aspx");
    }

}