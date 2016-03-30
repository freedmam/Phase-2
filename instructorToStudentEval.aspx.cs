using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class instructorToStudentEval : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        string evalDate = txtEvalDate.Text;
        int studentAttendance = Convert.ToInt32(txtStudentAttendClass.Text);
        int studentOnTime = Convert.ToInt32(txtStudentConsistent.Text);
        int studentContribute = Convert.ToInt32(txtStudentrMaintainEnvironment.Text);
        int studentResponseToCriticism = Convert.ToInt32(txtStudentcriticism.Text);
        int studentAttitude = Convert.ToInt32(txtStudentAttitude.Text);
        int motivation = Convert.ToInt32(txtStudentmotivation.Text);
        int finalProject = Convert.ToInt32(txtStudentFinalProject.Text);
        int engaged = Convert.ToInt32(txtStudentEngagement.Text);
        string strengths = txtStudentStrenghts.Text;
        string improvements = txtStudentImprovement.Text;
        string comments = txtComment.Text;
        int recognition = Convert.ToInt32(txtStudentRecognition.Text);
        int technology = Convert.ToInt32(txtStudentTechnology.Text);
        int scratching = Convert.ToInt32(txtStudentScratching.Text);
        int professional = Convert.ToInt32(txtStudentProfessionalism.Text);
        int presentation = Convert.ToInt32(txtStudentPresentation.Text);
        int studentId = 1; //will need to capture student ID so the evaluation is for certain student
        int instructorId = 1; //will need to capture instructors ID so eval is associated for an instructor
        //DB includes other skills like mixing, djskills, mcskills, breakdancing
        //musicproduction, chess, photoskills, hiphop, and theres no place on forms

        System.Data.SqlClient.SqlConnection sc = new System.Data.SqlClient.SqlConnection();
        sc.ConnectionString = @"Server=PC\Localhost;Database=C1;Trusted_Connection=Yes;";
        sc.Open();
        System.Data.SqlClient.SqlCommand insert = new System.Data.SqlClient.SqlCommand();
        insert.Connection = sc;

        insert.CommandText = "Insert into InstructorToStudentEvaluation (DateOfEvaluation, StudentAttendence, StudentOnTime, ";
        insert.CommandText += "StudentContribute, StudentResponseToCriticism, StudentAttitude, Motivation, FinalProject, Engaged, ";
        insert.CommandText += "Strengths, Improvements, Comments, Recognition, Technology, Scratching, Professionalism, Presentation, ";
        insert.CommandText += "StudentId, InstructorId) Values (";
        insert.CommandText += "@DateOfEvaluation, @StudentAttendence, @StudentOnTime, ";
        insert.CommandText += "@StudentContribute, @StudentResponseToCriticism, @StudentAttitude, @Motivation, @FinalProject, @Engaged, ";
        insert.CommandText += "@Strengths, @Improvements, @Comments, @Recognition, @Technology, @Scratching, @Professionalism, @Presentation, ";
        insert.CommandText += "@StudentId, @InstructorId)";
        insert.Parameters.AddWithValue("@DateOfEvaluation", evalDate);
        insert.Parameters.AddWithValue("@StudentAttendence", studentAttendance);
        insert.Parameters.AddWithValue("@StudentOnTime", studentOnTime);
        insert.Parameters.AddWithValue("@StudentContribute", studentContribute);
        insert.Parameters.AddWithValue("@StudentResponseToCriticism", studentResponseToCriticism);
        insert.Parameters.AddWithValue("@StudentAttitude", studentAttitude);
        insert.Parameters.AddWithValue("@Motivation", motivation);
        insert.Parameters.AddWithValue("@FinalProject", finalProject);
        insert.Parameters.AddWithValue("@Engaged", engaged);
        insert.Parameters.AddWithValue("@Strengths", strengths);
        insert.Parameters.AddWithValue("@Improvements", improvements);
        insert.Parameters.AddWithValue("@Comments", comments);
        insert.Parameters.AddWithValue("@Recognition", recognition);
        insert.Parameters.AddWithValue("@Technology", technology);
        insert.Parameters.AddWithValue("@Scratching", scratching);
        insert.Parameters.AddWithValue("@Professionalism", professional);
        insert.Parameters.AddWithValue("@Presentation", presentation);
        insert.Parameters.AddWithValue("@StudentId", studentId);
        insert.Parameters.AddWithValue("@InstructorId", instructorId);

        insert.ExecuteNonQuery();


        sc.Close();
    }
}