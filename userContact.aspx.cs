using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class userContact : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnToEmergencyContact_Click(object sender, EventArgs e)
    {
        Session["CellPhone"] = txtCell.Text;
        Session["HomePhone"] = txtHomePhone.Text;
        Session["Email"] = txtEmail.Text;
        Session["DateOfBirth"] = txtDoB.Text;
        Session["Age"] = txtAge.Text;
        Session["DCCard"] = txtDCCard.Text;
        Session["Street"] = txtStreet.Text;
        Session["City"] = txtCity.Text;
        Session["State"] = txtState.Text;
        Session["Zip"] = txtZip.Text;
        Session["Country"] = txtCountry.Text;

        //if statement for gender identity
        if (rdoBoyYoungMan.Checked == true)
        {
            Session["Gender"] = "Boy/Young Man";
        }
        else if (rdoGirlYoungWoman.Checked == true)
        {
            Session["Gender"] = "Girl/Young Woman";
        }
        else if (rdoGenderQueer.Checked == true)
        {
            Session["Gender"] = "Genderqueer";
        }
        else if (rdoTrans.Checked == true)
        {
            Session["Gender"] = "Trans/Transgender";
        }
        else if (rdoOther.Checked == true)
        {
            Session["Gender"] = "Other";
        }

        //if statements for race identity
        if (rdoAmericanIndian.Checked == true)
        {
            Session["Race"] = "American Indian";
        }
        else if (rdoAsian.Checked == true)
        {
            Session["Race"] = "Asian or Pacific Islander";
        }
        else if (rdoBlackorAfrican.Checked == true)
        {
            Session["Race"] = "Black or Aferican American";
        }
        else if (rdoLatina.Checked == true)
        {
            Session["Race"] = "Latina";
        }
        else if (rdoWhite.Checked == true)
        {
            Session["Race"] = "White";
        }
        else if (rdoBiRacial.Checked == true)
        {
            Session["Race"] = "BiRacial";
        }
        else if (rdoOtherRace.Checked == true)
        {
            Session["Race"] = "Other";
        }

        Response.Redirect("emergencyContact.aspx");
    }
}