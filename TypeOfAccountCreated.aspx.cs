using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class TypeOfAccountCreated : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnNext_Click(object sender, EventArgs e)
    {

        string firstName = txtFirstName.Text;
        string lastName = txtLastName.Text;
        string email = txtEmail.Text;
        string street = txtStreet.Text;
        string city = txtCity.Text;
        string state = txtState.Text;
        string zip = txtZip.Text;
        string country = txtCountry.Text;
        string phoneNumber = txtPhoneNumber.Text;
        string dateOfBirth = txtDoB.Text;
        string userType = ddlAccountType.SelectedValue;
        string userName = txtUsername.Text;
        int counter = 0;

        System.Data.SqlClient.SqlConnection sc = new System.Data.SqlClient.SqlConnection();
        sc.ConnectionString = @"Server=Localhost;Database=C1;Trusted_Connection=Yes;";
        sc.Open();
        System.Data.SqlClient.SqlCommand insert = new System.Data.SqlClient.SqlCommand();
        insert.Connection = sc;
        insert.CommandText = "Select count(username) from applicant where username = @username";
        insert.Parameters.AddWithValue("@username", userName);
        var reader = insert.ExecuteReader();
        reader.Read();
        counter = Convert.ToInt32(reader.GetInt32(0));
        sc.Close();

        if (counter >= 1)
        {
            lblError.Text = "Username already exists, please enter another username";
            txtUsername.Focus();
        }
        else if (txtSetPW.Text != txtVerifyPW.Text)
        {
            lblError.Text = "Passwords do not match, please re-enter passwords";
        }
        else
        {
            sc.Open();

            insert.CommandText = "Insert into Applicant (EmailAddress, FirstName, LastName, Street, City, ";
            insert.CommandText += "State, Zip, Country, PhoneNumber, DateOfBirth, UserType, Username) Values (";
            insert.CommandText += "@emailAddress, @firstName, @lastName, @street, @city, ";
            insert.CommandText += "@state, @zip, @country, @phoneNumber, @dateOfBirth, @userType, @userrname)";
            insert.Parameters.AddWithValue("@emailAddress", email);
            insert.Parameters.AddWithValue("@firstName", firstName);
            insert.Parameters.AddWithValue("@lastName", lastName);
            insert.Parameters.AddWithValue("@street", street);
            insert.Parameters.AddWithValue("@city", city);
            insert.Parameters.AddWithValue("@state", state);
            insert.Parameters.AddWithValue("@zip", zip);
            insert.Parameters.AddWithValue("@country", country);
            insert.Parameters.AddWithValue("@phoneNumber", phoneNumber);
            insert.Parameters.AddWithValue("@dateOfBirth", dateOfBirth);
            insert.Parameters.AddWithValue("@userType", userType);
            insert.Parameters.AddWithValue("@userrname", userName);
            //need to add cell phone, home phone ddl for applicant; need to include in parameterize sql ^

            insert.ExecuteNonQuery();

            sc.Close();
            
            Session["Username"] = userName;

            if (ddlAccountType.SelectedValue == "Student")
            {
                Response.Redirect("appForm.aspx");
            }
            else
            {
                Response.Redirect("ConfirmationCreatingAccount.aspx"); //redirects to thanks for submission
            }
        }

    }
}