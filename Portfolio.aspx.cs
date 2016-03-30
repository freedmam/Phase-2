using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Web.Security;
using System.Data.SqlClient;
using System.Text;
using System.Globalization;
//using System.Windows.Forms;

public partial class WebSite1_Portfolio : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        fillSojourner();
        fillBeginner();
        fillIntermediate();
        fillAdvanced();

    }

    //Filling Country Dropdown box
    public void fillSojourner()
    {
        try
        {
            System.Data.SqlClient.SqlConnection sc = new System.Data.SqlClient.SqlConnection();
            sc.ConnectionString = @"Server = Localhost;Database = C1;Trusted_Connection = Yes;";
            sc.Open();
            System.Data.SqlClient.SqlCommand insert = new System.Data.SqlClient.SqlCommand();
            insert.Connection = sc;
            insert.CommandText = "Select FirstName, LastName from Student Where Level = 'Sojourner'";
            insert.ExecuteNonQuery();

            SqlDataReader reader = insert.ExecuteReader();

            while (reader.Read())
            {
                cboSojourner.Items.Add(reader["Level"].ToString());

            }
            sc.Close();

        }
        catch (Exception e)
        {
            //txtOutput.Text = e.ToString();
        }

    }

    public void fillBeginner()
    {
        try
        {
            System.Data.SqlClient.SqlConnection sc = new System.Data.SqlClient.SqlConnection();
            sc.ConnectionString = @"Server = Localhost;Database = C1;Trusted_Connection = Yes;";
            sc.Open();
            System.Data.SqlClient.SqlCommand insert = new System.Data.SqlClient.SqlCommand();
            insert.Connection = sc;
            insert.CommandText = "Select FirstName, LastName from Student Where Level = 'Beginner'";
            insert.ExecuteNonQuery();

            SqlDataReader reader = insert.ExecuteReader();

            while (reader.Read())
            {
                cboBeginner.Items.Add(reader["Level"].ToString());

            }
            sc.Close();

        }
        catch (Exception e)
        {
            //txtOutput.Text = e.ToString();
        }

    }


    public void fillIntermediate()
    {
        try
        {
            System.Data.SqlClient.SqlConnection sc = new System.Data.SqlClient.SqlConnection();
            sc.ConnectionString = @"Server = Localhost;Database = C1;Trusted_Connection = Yes;";
            sc.Open();
            System.Data.SqlClient.SqlCommand insert = new System.Data.SqlClient.SqlCommand();
            insert.Connection = sc;
            insert.CommandText = "Select FirstName, LastName from Student Where Level = 'Intermediate'";
            insert.ExecuteNonQuery();

            SqlDataReader reader = insert.ExecuteReader();

            while (reader.Read())
            {
                cboIntermediate.Items.Add(reader["Level"].ToString());

            }
            sc.Close();

        }
        catch (Exception e)
        {
            //txtOutput.Text = e.ToString();
        }

    }


    public void fillAdvanced()
    {
        try
        {
            System.Data.SqlClient.SqlConnection sc = new System.Data.SqlClient.SqlConnection();
            sc.ConnectionString = @"Server = Localhost;Database = C1;Trusted_Connection = Yes;";
            sc.Open();
            System.Data.SqlClient.SqlCommand insert = new System.Data.SqlClient.SqlCommand();
            insert.Connection = sc;
            insert.CommandText = "Select FirstName, LastName from Student Where Level = 'Advanced'";
            insert.ExecuteNonQuery();

            SqlDataReader reader = insert.ExecuteReader();

            while (reader.Read())
            {
                cboAdvanced.Items.Add(reader["Level"].ToString());

            }
            sc.Close();

        }
        catch (Exception e)
        {
            //txtOutput.Text = e.ToString();
        }

    }
}
