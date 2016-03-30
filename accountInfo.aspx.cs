using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class accountInfo : System.Web.UI.Page
{
    
    protected void Page_Load(object sender, EventArgs e)
    {
        PopulateStudentFields(studentID);
        fillWardResidence();
    }
    protected void btnUpdate_Click(object sender, EventArgs e)
    {
        UpdateStudent();
    }

    //Automatically filling Student Account Fields with Current Information
    public void PopulateStudentFields(int StudentID)
    {
        try
        {
            System.Data.SqlClient.SqlConnection sc = new System.Data.SqlClient.SqlConnection();
            sc.ConnectionString = @"Server = Localhost ; Database = C1; Trusted_Connection = Yes;";
            sc.Open();
            System.Data.SqlClient.SqlCommand insert = new System.Data.SqlClient.SqlCommand();
            insert.Connection = sc;

            insert.CommandText = "Select * from Student where StudentID = @StudentID";
            insert.Parameters.AddWithValue("@StudentID", StudentID);
            insert.ExecuteNonQuery();

            SqlDataReader reader = insert.ExecuteReader();

            while (reader.Read())
            {
                txtCellPhoneNumber.Text = (reader["CellPhoneNumber"].ToString());
                txtHomePhoneNumber.Text = (reader["HomePhoneNumber"].ToString());
                txtEmailAddress.Text = (reader["EmailAddress"].ToString());
                txtDateOfBirth.Text = (reader["DateOfBirth"].ToString());
                txtOneCard.Text = (reader["OneCard"].ToString());
                txtStreet.Text = (reader["Street"].ToString());
                txtState.Text = (reader["State"].ToString());
                txtCity.Text = (reader["City"].ToString());
                txtZipCode.Text = (reader["ZipCode"].ToString());
                cboWardOfResidence.SelectedValue = (reader["Ward"].ToString());
                //cboWardOfResidence.SelectedValue = (reader["WardOfResidence"].ToString());


            }
            sc.Close();

        }
        catch (Exception)
        {
            //txtOutput.Text = "Error Connecting ";
        }

    }

    public void fillWardResidence()
    {
        try
        {
            System.Data.SqlClient.SqlConnection sc = new System.Data.SqlClient.SqlConnection();
            sc.ConnectionString = @"Server = Localhost;Database = C1;Trusted_Connection = Yes;";
            sc.Open();
            System.Data.SqlClient.SqlCommand insert = new System.Data.SqlClient.SqlCommand();
            insert.Connection = sc;
            insert.CommandText = "Select Ward from Student";
            insert.ExecuteNonQuery();

            SqlDataReader reader = insert.ExecuteReader();

            while (reader.Read())
            {
                cboWardOfResidence.Items.Add(reader["Ward"].ToString());

            }
            sc.Close();

        }
        catch (Exception e)
        {
            //txtOutput.Text = e.ToString();
        }
    }

    public void UpdateStudent()
    {

        try
        {
            System.Data.SqlClient.SqlConnection sc = new System.Data.SqlClient.SqlConnection();
            sc.ConnectionString = @"Server = Localhost ; Database = C1; Trusted_Connection = Yes;";
            sc.Open();
            System.Data.SqlClient.SqlCommand insert = new System.Data.SqlClient.SqlCommand();
            insert.Connection = sc;

            //int updateEmployID = int.Parse(DropDownUpdate.SelectedValue, CultureInfo.InvariantCulture);
            //insert.CommandText = "Update Student set CellPhone =@CellPhone, HomePhone =@HomePhone, EmailAddress =@EmailAddress, DateOfBirth=@DatOfBirth, DcCard=@DcCard, HomeAddres=@HomeAddress, State=@State, City=@City, ZipCode=@ZipCode,WardOfResidence=@WardOfResidence where StudentID=@StudentID";
            //insert.Parameters.AddWithValue("@EmployeeID", updateEmployID);


            insert.CommandText = "UPDATEINFORMATION";
            insert.CommandType = System.Data.CommandType.StoredProcedure;

            insert.Parameters.AddWithValue("@CellPhoneNumber", txtCellPhoneNumber.Text);
            insert.Parameters.AddWithValue("@HomePhoneNumber", txtHomePhoneNumber.Text);
            insert.Parameters.AddWithValue("@EmailAddress", txtEmailAddress.Text);
            insert.Parameters.AddWithValue("@DateOfBirth", txtDateOfBirth.Text);
            insert.Parameters.AddWithValue("@OneCard", txtOneCard.Text);
            insert.Parameters.AddWithValue("@Street", txtStreet.Text);
            insert.Parameters.AddWithValue("@State", txtState.Text);
            insert.Parameters.AddWithValue("@City", txtCity.Text);
            insert.Parameters.AddWithValue("@Zip", txtZipCode.Text);
            insert.Parameters.AddWithValue("@Ward", cboWardOfResidence.SelectedValue);

            insert.ExecuteNonQuery();
            sc.Close();
        }

        catch (Exception)
        {
            //txtOutput.Text = "Error Connecting ";
        }

    }

    public int studentID { get; set; }
}


























//using System;
//using System.Collections.Generic;
//using System.Data.SqlClient;
//using System.Linq;
//using System.Web;
//using System.Web.UI;
//using System.Web.UI.WebControls;

//public partial class accountInfo : System.Web.UI.Page
//{
//    protected void Page_Load(object sender, EventArgs e)
//    {

//    }
//    protected void btnUpdate_Click(object sender, EventArgs e)
//    {

//    }

//    public void PopulateStudentFields(int StudentID)
//    {
//        try
//        {
//            System.Data.SqlClient.SqlConnection sc = new System.Data.SqlClient.SqlConnection();
//            sc.ConnectionString = @"Server = Localhost ; Database = Lab3; Trusted_Connection = Yes;";
//            sc.Open();
//            System.Data.SqlClient.SqlCommand insert = new System.Data.SqlClient.SqlCommand();
//            insert.Connection = sc;

//            insert.CommandText = "Select * from Student where StudentID = @StudentID";
//            insert.Parameters.AddWithValue("@StudentID", StudentID);
//            insert.ExecuteNonQuery();

//            SqlDataReader reader = insert.ExecuteReader();

//            while (reader.Read())
//            {
//                txtCellPhoneNumber.Text = (reader["@CellPhone"].ToString());
//                txtHomePhoneNumber.Text = (reader["@HomePhone"].ToString());
//                txtEmailAddress.Text = (reader["@EmailAddress"].ToString());
//                txtDateOfBirth.Text = (reader["@DateOfBirth"].ToString());
//                txtDcCard.Text = (reader["@DcCard"].ToString());
//                txtHomeAddress.Text = (reader["@HomeAddress"].ToString());
//                txtState.Text = (reader["@State"].ToString());
//                txtCity.Text = (reader["@City"].ToString());
//                txtZipCode.Text = (reader["@ZipCode"].ToString());
//                cboWardOfResidence.SelectedValue = (reader["WardOfResidence"].ToString());


//            }
//            sc.Close();

//        }
//        catch (Exception)
//        {
//            //txtOutput.Text = "Error Connecting ";
//        }

//    }



//    public void UpdateStudent()
//    {

//        try
//        {
//            System.Data.SqlClient.SqlConnection sc = new System.Data.SqlClient.SqlConnection();
//            sc.ConnectionString = @"Server = Localhost ; Database = Lab3; Trusted_Connection = Yes;";
//            sc.Open();
//            System.Data.SqlClient.SqlCommand insert = new System.Data.SqlClient.SqlCommand();
//            insert.Connection = sc;

//            //int updateEmployID = int.Parse(DropDownUpdate.SelectedValue, CultureInfo.InvariantCulture);
//            //insert.CommandText = "Update Student set CellPhone =@CellPhone, HomePhone =@HomePhone, EmailAddress =@EmailAddress, DateOfBirth=@DatOfBirth, DcCard=@DcCard, HomeAddres=@HomeAddress, State=@State, City=@City, ZipCode=@ZipCode,WardOfResidence=@WardOfResidence where StudentID=@StudentID";
//            //insert.Parameters.AddWithValue("@EmployeeID", updateEmployID);


//            insert.CommandText = "UPDATEINFORMATION";
//            insert.CommandType = System.Data.CommandType.StoredProcedure;

//            insert.Parameters.AddWithValue("@PhoneNumber", txtCellPhoneNumber.Text);
//            //insert.Parameters.AddWithValue("@HomePhone", txtHomePhoneNumber.Text);
//            insert.Parameters.AddWithValue("@EmailAddress", txtEmailAddress.Text);
//            insert.Parameters.AddWithValue("@DateOfBirth", txtDateOfBirth.Text);
//            insert.Parameters.AddWithValue("@DcCard", txtDcCard.Text);
//            insert.Parameters.AddWithValue("@Street", txtHomeAddress.Text);
//            insert.Parameters.AddWithValue("@State", txtState.Text);
//            insert.Parameters.AddWithValue("@City", txtCity.Text);
//            insert.Parameters.AddWithValue("@Zip", txtZipCode.Text);
//            insert.Parameters.AddWithValue("@Ward", cboWardOfResidence.SelectedValue);

//            insert.ExecuteNonQuery();
//            sc.Close();
//        }

//        catch (Exception)
//        {
//            //txtOutput.Text = "Error Connecting ";
//        }

//    }
//}