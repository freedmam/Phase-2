using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


public partial class AddClass : System.Web.UI.Page
{
    string conStr = @"Server = LOCALHOST ; Database = C1; Trusted_Connection = Yes;";

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            CourseID();
        }
    }

    public void CourseID()
    {
        //Displaying CourseID from Course table into dropdown list in GUI
        try
        {
            System.Data.SqlClient.SqlConnection sc = new System.Data.SqlClient.SqlConnection();
            sc.ConnectionString = @"Server = LOCALHOST; Database=C1; Trusted_Connection=Yes;";

            //Creates a new sql select command to display employeeID
            System.Data.SqlClient.SqlCommand select = new System.Data.SqlClient.SqlCommand("Select * from dbo.Course;", sc);
            sc.Open();

            dlcourseID.DataSource = select.ExecuteReader();
            dlcourseID.DataTextField = "CourseID";
            dlcourseID.DataBind();

            sc.Close();
        }
        catch (SqlException ex)
        {
            System.Console.WriteLine(ex);
        }
    }

    protected void btnSave_Click(object sender, EventArgs e)
    {
        int CourseID = int.Parse(dlcourseID.SelectedItem.Text);
        string name = txtClassName.Text;
        string description = txtDescription.Text;

        using (SqlConnection sc = new SqlConnection(conStr))
        {
            sc.Open();
            String strquery = "Insert into dbo.Class (CourseName, ClassDescription, CourseID) VALUES (@ClassName, @ClassDescription, @CourseID);";
            System.Data.SqlClient.SqlCommand insert = new System.Data.SqlClient.SqlCommand(strquery, sc);

            insert.Parameters.AddWithValue("@ClassName", name);
            insert.Parameters.AddWithValue("@ClassDescription", description);
            insert.Parameters.AddWithValue("@CourseID", CourseID);

            insert.ExecuteNonQuery();
            lblConfirmation.Text = "New class was entered successfully!";
        }
    }

    protected void btnLessonPlan_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/StaffUploadLessonPlans.aspx");
    }
}