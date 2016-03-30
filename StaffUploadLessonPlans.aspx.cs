using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Data;
using System.Data.SqlClient;
using System.Windows;
using System.Drawing;
using System.Configuration;

public partial class WebSite1_StaffUploadLessonPlans : System.Web.UI.Page
{
    string conStr = @"Server = Localhost ; Database = C1; Trusted_Connection = Yes;";
    public int courseID;
    public int LessonID;
    public int selectedID;
    public int lessonIDSelected;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            getClassInfo();
        }
    }

    private void getClassInfo()
    {
        //Displaying Class info from Class table into dropdown list in GUI
        using (SqlConnection sc = new SqlConnection(conStr))
        {
            //Creates a new sql select command to display class info
            System.Data.SqlClient.SqlCommand select = new System.Data.SqlClient.SqlCommand("Select ClassName from dbo.Class;", sc);
            sc.Open();

            cboClass.DataSource = select.ExecuteReader();
            cboClass.DataTextField = "ClassName";
            cboClass.DataBind();

            sc.Close();
        }
    }

    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        getCourseID();

        FileInfo fi = new FileInfo(FileUpload1.FileName);
        byte[] fileContent = FileUpload1.FileBytes;

        DateTime date = DateTime.Today;

        using (SqlConnection sc = new SqlConnection(conStr))
        {
            SqlCommand cmd = new SqlCommand("UploadLessonPlans", sc);
            cmd.CommandType = CommandType.StoredProcedure;

            cmd.Parameters.Add("@CourseID", SqlDbType.Int).Value = courseID;
            cmd.Parameters.Add("@DateCreated", SqlDbType.DateTime).Value = date;
            cmd.Parameters.Add("@Content", SqlDbType.VarBinary).Value = fileContent;

            sc.Open();
            cmd.ExecuteNonQuery();
            lblConfirmation.Text = "Lesson Plan was saved!";
        }
    }

    public void getCourseID()
    {
        string className = cboClass.SelectedItem.Text;
        string courseIDSelected;

        using (SqlConnection sc = new SqlConnection(conStr))
        {
            sc.Open();
            string sqlQuery = "Select CourseID from dbo.Class where ClassName like" + "'" + className + "' ";
            //Creates a new sql select command to display courseID
            System.Data.SqlClient.SqlCommand select = new System.Data.SqlClient.SqlCommand(sqlQuery, sc);

            SqlDataReader reader = select.ExecuteReader();

            while (reader.Read())
            {
                courseIDSelected = (reader["CourseID"]).ToString();
                courseID = int.Parse(courseIDSelected);
            }


            sc.Close();
        }


    }

    protected void btnUploadTemplate_Click(object sender, EventArgs e)
    {        
        FileInfo fi = new FileInfo(FileUpload1.FileName);
        byte[] fileContent = FileUpload1.FileBytes;

        DateTime date = DateTime.Today;

        using (SqlConnection sc = new SqlConnection(conStr))
        {
            sc.Open();          
            SqlCommand select = new SqlCommand("Select * from LessonPlan ORDER BY CourseID DESC; ", sc);

            SqlDataReader reader = select.ExecuteReader();

            // CourseID = 0 should be last CourseID
            while (reader.Read())
            {
                string templateID = (reader["CourseID"]).ToString();
                string lessonID = (reader["LessonID"]).ToString();
                selectedID = int.Parse(templateID);
                lessonIDSelected = int.Parse(lessonID);
            }
        }

        //Checks to see if a lesson plan template already exists
        if (selectedID != 0)
        {
            using (SqlConnection sc = new SqlConnection(conStr))
            {
                SqlCommand cmd = new SqlCommand("UploadLessonPlans", sc);
                cmd.CommandType = CommandType.StoredProcedure;

                cmd.Parameters.Add("@CourseID", SqlDbType.Int).Value = 0;
                cmd.Parameters.Add("@DateCreated", SqlDbType.DateTime).Value = date;
                cmd.Parameters.Add("@Content", SqlDbType.VarBinary).Value = fileContent;

                sc.Open();
                cmd.ExecuteNonQuery();
                lblConfirmation.Text = "Lesson Plan Template was saved!";
            }
        }
        else
        {
            using (SqlConnection sc = new SqlConnection(conStr))
            {
                SqlCommand cmd = new SqlCommand("UpdateLessonPlanTemplate", sc);
                cmd.CommandType = CommandType.StoredProcedure;

                cmd.Parameters.Add("@LessonID",SqlDbType.Int).Value = lessonIDSelected;
                cmd.Parameters.Add("@CourseID", SqlDbType.Int).Value = 0;
                cmd.Parameters.Add("@DateCreated", SqlDbType.DateTime).Value = date;
                cmd.Parameters.Add("@Content", SqlDbType.VarBinary).Value = fileContent;

                sc.Open();
                cmd.ExecuteNonQuery();
                lblConfirmation.Text = "Lesson Plan Template was updated!";
            }
        }
    }

    protected void OpenDocument(object sender, EventArgs e)
    {

        using (SqlConnection sc = new SqlConnection(conStr))
        {
            string className = cboClass.SelectedItem.Text;
            string lessonIDSelected;

            sc.Open();
            string sqlQuery = "Select * from LessonPlan where CourseID = 0;";
            //Creates a new sql select command to display lessonID
            System.Data.SqlClient.SqlCommand select = new System.Data.SqlClient.SqlCommand(sqlQuery, sc);

            SqlDataReader reader = select.ExecuteReader();

            while (reader.Read())
            {
                lessonIDSelected = (reader["LessonID"]).ToString();
                LessonID = int.Parse(lessonIDSelected);
            }
            sc.Close();
        }
        int id = LessonID;
        Download(id);
    }

    private void Download(int id)
    {
        DataTable dt = new DataTable();
        using (SqlConnection sc = new SqlConnection(conStr))
        {
            SqlCommand cmd = new SqlCommand("GetLessonPlans", sc);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("LessonID", SqlDbType.Int).Value = id;
            sc.Open();
            SqlDataReader reader = cmd.ExecuteReader();

            dt.Load(reader);
        }

        byte[] documentBytes = (byte[])dt.Rows[0]["Content"];

        Response.ClearContent();
        Response.ContentType = "application/octetstream";
        Response.AddHeader("Content-Disposition", string.Format("attachment; filename={0}", "LessonTemplate"));
        Response.AddHeader("Content-Length", documentBytes.Length.ToString());

        Response.BinaryWrite(documentBytes);
        Response.Flush();
        Response.Close();

        lblConfirmation.Text = "Lesson Plan Template was downloaded!";
    }
    
}