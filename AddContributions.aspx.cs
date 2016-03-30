using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class AddContributions : System.Web.UI.Page
{
    string conStr = @"Server = LOCALHOST ; Database = C1; Trusted_Connection = Yes;";

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            CipherID();
        }
    }

    protected void btnSave_Click(object sender, EventArgs e)
    {
        int CipherID = int.Parse(dlCipherID.SelectedItem.Text);
        string amount = txtAmt.Text;
        string dateOfDonation = txtDonationDate.Text;

        using (SqlConnection sc = new SqlConnection(conStr))
        {
            sc.Open();
            String strquery = "Insert into dbo.Donation (CipherID, Amount, DateOfDonation) VALUES (@CipherID, @Amount, @DateOfDonation);";
            System.Data.SqlClient.SqlCommand insert = new System.Data.SqlClient.SqlCommand(strquery, sc);

            insert.Parameters.AddWithValue("@CipherID", CipherID);
            insert.Parameters.AddWithValue("@Amount", amount);
            insert.Parameters.AddWithValue("@DateOfDonation", dateOfDonation);

            insert.ExecuteNonQuery();
            lblConfirmation.Text = "Donation for CipherID: " + CipherID + "was entered successfully!";
        }
    }

    public void CipherID()
    {
        //Displaying CipherID from Cipher table into dropdown list in GUI
        try
        {
            System.Data.SqlClient.SqlConnection sc = new System.Data.SqlClient.SqlConnection();
            sc.ConnectionString = @"Server = LOCALHOST; Database=C1; Trusted_Connection=Yes;";

            //Creates a new sql select command to display employeeID
            System.Data.SqlClient.SqlCommand select = new System.Data.SqlClient.SqlCommand("Select * from dbo.Cipher;", sc);
            sc.Open();

            dlCipherID.DataSource = select.ExecuteReader();
            dlCipherID.DataTextField = "CipherID";
            dlCipherID.DataBind();

            sc.Close();
        }
        catch (SqlException ex)
        {
            System.Console.WriteLine(ex);
        }
    }
}