using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class emergencyContact : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnToPhysician_Click(object sender, EventArgs e)
    {
        Session["ContactFName"] = txtContactFName.Text;
        Session["ContactLName"] = txtContactLName.Text;
        //Session["ContactRelation"] = txtContactRelation.Text;
        //Session["ContactPhone"] = txtContactPhone.Text;
        //Session["ContactEmail"] = txtContactEmail.Text;

        string contactFName = txtContactFName.Text;
        string contactLName = txtContactLName.Text;
        string contactRelation = txtContactRelation.Text;
        string contactCellPhone = txtContactCellPhone.Text; //
        string contactHomePhone = txtContactHomePhone.Text;
        string contactEmail = txtContactEmail.Text;
        //database has homeaddress attribute, maybe add to form?
        //database has dateOfBirht attribute, maybe add?
        //need to add cell phone, home phone to DB

        //Need to make a parameterized query
        System.Data.SqlClient.SqlConnection sc = new System.Data.SqlClient.SqlConnection();
        sc.ConnectionString = @"Server=.\Localhost;Database=C1;Trusted_Connection=Yes;";
        sc.Open();
        System.Data.SqlClient.SqlCommand insert = new System.Data.SqlClient.SqlCommand();
        insert.Connection = sc;
        insert.CommandText = "Insert into Emergency_Contact (FirstName, LastName, Relationship, CellPhoneNumber, HomePhoneNumber, EmailAddress ) Values ('";
        insert.CommandText += contactFName + "', '" + contactLName + "', '" + contactRelation + "', '" + contactCellPhone + "', '" + contactHomePhone +
            "', '" + contactEmail + "')";
        insert.ExecuteNonQuery();
        //txtFirstName.Text = insert.CommandText;
        Response.Redirect("EmergencyHealth.aspx");

    }
}