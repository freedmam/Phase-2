using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class skillMastery : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnNext_Click(object sender, EventArgs e)
    {
        Session["DJSkill"] = txtDJ.Text;
        Session["GraffitiSkill"] = txtGraffiti.Text;
        Session["MCing"] = txtMcing.Text;
        Session["Poetry"] = txtPoetry.Text;
        Session["PublicArt"] = txtPublicArt.Text;
        Session["BreakDancing"] = txtBreakDancing.Text;
        Session["MusicProduction"] = txtMusicProduction.Text;
        Session["Chess"] = txtChess.Text;
        Session["Photography"] = txtPhotography.Text;
        Session["HipHop"] = txtHipHopDance.Text;
        if (rboPastYes.Checked == true)
        {
            Session["PastClasses"] = "Yes";
        }
        else if (rboPastNo.Checked == true)
        {
            Session["PastClasses"] = "No";
        }
        Session["PastClassDescription"] = txtPastClasses.Text;

        Response.Redirect("StudentBio.aspx");
    }
}