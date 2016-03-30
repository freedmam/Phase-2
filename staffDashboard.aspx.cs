using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class staffDashboard : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnPeople_Click(object sender, EventArgs e)
    {
        Response.Redirect("peopleDisplay.aspx");
    }

    protected void btnDonations_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/AddContributions.aspx");
    }

    protected void btnClasses_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/AddClass.aspx");
    }
    protected void btnViewAttendance_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/AddAttendance.aspx");
    }
}