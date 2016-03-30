using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class studentGUI : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            displayAttendance();
            displayBucks();
            displayEnrolledCourses();
        }
    }

    // display attendance
    public void displayAttendance()
    {
        Student student = new Student();
        int studentID = int.Parse(student.getStudentId().ToString());

        try
        {
            System.Data.SqlClient.SqlConnection sc = new System.Data.SqlClient.SqlConnection();
            sc.ConnectionString = @"Server = Localhost ; Database = C1; Trusted_Connection = Yes;";

            sc.Open();

            String sqlQuery = "Select Attendance from dbo.Student where StudenID=@StudentID ";
            sqlQuery += "StudentID =" + studentID + ";";

            System.Data.SqlClient.SqlCommand select = new System.Data.SqlClient.SqlCommand(sqlQuery, sc);

            System.Data.SqlClient.SqlDataAdapter adapter = new SqlDataAdapter();

            //Display attendance in textbox
            SqlDataReader reader = select.ExecuteReader();

            while (reader.Read())
            {
                String attendance = reader.GetString(0);
                txtAttendance.Text = attendance;
            }
            reader.Close();
            sc.Close();

        }
        catch
        {
            System.Console.WriteLine();
        }
    }

    //display bucks
    public void displayBucks()
    {
        Student student = new Student();
        int studentID = int.Parse(student.getStudentId().ToString());

        try
        {
            System.Data.SqlClient.SqlConnection sc = new System.Data.SqlClient.SqlConnection();
            sc.ConnectionString = @"Server = Localhost ; Database = C1; Trusted_Connection = Yes;";

            sc.Open();

            String sqlQuery = "Select Bucks from dbo.Student where ";
            sqlQuery += "StudentID =" + studentID + ";";

            System.Data.SqlClient.SqlCommand select = new System.Data.SqlClient.SqlCommand(sqlQuery, sc);

            System.Data.SqlClient.SqlDataAdapter adapter = new SqlDataAdapter();

            //Display bucks in textbox
            SqlDataReader reader = select.ExecuteReader();

            while (reader.Read())
            {
                String bucks = reader.GetString(0);
                txtBucks.Text = bucks;
            }
            reader.Close();
            sc.Close();

        }
        catch
        {
            System.Console.WriteLine();
        }
    }


    //display enrolled classes
    public void displayEnrolledCourses()
    {
        Student student = new Student();
        int studentID = int.Parse(student.getStudentId().ToString());

        try
        {
            System.Data.SqlClient.SqlConnection sc = new System.Data.SqlClient.SqlConnection();
            sc.ConnectionString = @"Server = Localhost ; Database = C1; Trusted_Connection = Yes;";

            sc.Open();

            String sqlQuery = "Select ClassName from dbo.Class LEFT JOIN dbo.Student_Class ON dbo.Class.ClassID = dbo.Student_Class.ClassID";
            sqlQuery += " where dbo.Student_Class StudentID =" + studentID + ";";

            System.Data.SqlClient.SqlCommand select = new System.Data.SqlClient.SqlCommand(sqlQuery, sc);

            System.Data.SqlClient.SqlDataAdapter adapter = new SqlDataAdapter();

            //Display bucks in textbox
            SqlDataReader reader = select.ExecuteReader();

            while (reader.Read())
            {
                String classes = reader.GetString(0);
                txtEnrolledClasses.Text = classes;
            }
            reader.Close();
            sc.Close();
        }
        catch
        {
            System.Console.WriteLine();
        }

    }
    protected void btnSelfEvaluations_Click(object sender, EventArgs e)
    {
        Response.Redirect("studentSelfEvaluation.aspx");
    }

    protected void btnViewSelfEval_Click(object sender, EventArgs e)
    {
        GridViewSelfEval.Visible = true;
    }
}