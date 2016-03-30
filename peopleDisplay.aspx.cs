using System;
using System.Collections.Generic;
using System.Linq;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

public partial class peopleDisplay : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            fillEIDinA();
        }
        
        //connect and display
        using (System.Data.SqlClient.SqlConnection scq = new System.Data.SqlClient.SqlConnection())
        using (SqlCommand cmdAll = scq.CreateCommand())
        {
            scq.ConnectionString = @"Server =Localhost;Database=C1;Trusted_Connection=Yes;";
            scq.Open();
            cmdAll.CommandText = "SELECT [ApplicantID], [firstName], [lastName], [verified] FROM [dbo].[Applicant]";
            SqlDataAdapter adapThis = new SqlDataAdapter(cmdAll);
            DataSet ds = new DataSet();
            adapThis.Fill(ds);
            gv1.DataSource = ds;
            gv1.DataBind();
            //close connection
            scq.Close();
        }
    }

    public void fillEIDinA()
    {
        try
        {

            //connect and display
            using (System.Data.SqlClient.SqlConnection scq = new System.Data.SqlClient.SqlConnection())
            using (SqlCommand cmdAll = scq.CreateCommand())
            {
                scq.ConnectionString = @"Server =Localhost;Database=C1;Trusted_Connection=Yes;";
                scq.Open();
                cmdAll.CommandText = "SELECT [ApplicantID] FROM [dbo].[Applicant]";
                SqlDataAdapter adapThis = new SqlDataAdapter(cmdAll);
                DataSet ds = new DataSet();
                adapThis.Fill(ds);

                ddApplicantID.DataTextField = ds.Tables[0].Columns["ApplicantID"].ToString();

                ddApplicantID.DataSource = ds.Tables[0];
                ddApplicantID.DataBind();

                //close connection
                scq.Close();
            }
        }
        catch (Exception)
        {
        }



    }
    protected void Button1_Click(object sender, System.EventArgs e)
    {
        //connect and display
        using (System.Data.SqlClient.SqlConnection scq = new System.Data.SqlClient.SqlConnection())
        using (SqlCommand cmdAll = scq.CreateCommand())
        {
            scq.ConnectionString = @"Server =Localhost;Database=C1;Trusted_Connection=Yes;";
            scq.Open();
            cmdAll.CommandText = " UPDATE [dbo].[Applicant] SET [verified] = 'TRUE' WHERE ApplicantID =" + ddApplicantID.SelectedItem.Text;
            cmdAll.ExecuteNonQuery();
            scq.Close();
            Response.Redirect(Request.RawUrl);
        }
    }
    protected void Button2_Click(object sender, System.EventArgs e)
    {
        //connect and display
        using (System.Data.SqlClient.SqlConnection scq = new System.Data.SqlClient.SqlConnection())
        using (SqlCommand cmdAll = scq.CreateCommand())
        {
            scq.ConnectionString = @"Server =Localhost;Database=C1;Trusted_Connection=Yes;";
            scq.Open();
            cmdAll.CommandText = " UPDATE [dbo].[Applicant] SET [verified] = 'FALSE' WHERE ApplicantID =" + ddApplicantID.SelectedItem.Text;
            cmdAll.ExecuteNonQuery();
            scq.Close();
            Response.Redirect(Request.RawUrl);
        }
    }
}