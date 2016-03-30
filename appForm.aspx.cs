using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class appForm : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Session["DateOfEnrollment"] = txtDateOfEnroll.Text;
        Session["FirstName"] = txtFirstName.Text;
        Session["LastName"] = txtLastName.Text;
        if (chkRiverSide.Checked == true)
        {
            Session["RiverSide"] = "RiverSide Center";
        }
        if (chkStephens.Checked == true)
        {
            Session["Stephens"] = "St. Stephen's Church";
        }
        //Insert into student 
        string dateOfEnrollment = Session["DateOfEnrollment"] as string;

        Session["Stephens"] = null;


        Session["Hello"] = "hello";
        Response.Redirect("Volunteer.aspx");



    }
}