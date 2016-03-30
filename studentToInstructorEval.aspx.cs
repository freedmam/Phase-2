using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class studentToInstructorEval : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        //need to have ddl of instructors names being rated 

        string instructorsName = txtInstructorName.Text;
        string evaluationDate = txtEvaluationDate.Text;
        int instructorAttendance = Convert.ToInt32(txtTeacherAttendClass.Text);
        int instructorOnTime = Convert.ToInt32(txtTeacherConsistent.Text);
        int instructorManage = Convert.ToInt32(txtTeacherMaintainEnvironment.Text);
        int instructorOrganized = Convert.ToInt32(txtTeacherOrganized.Text);
        int instructorFeedback = Convert.ToInt32(txtTeacherGaveFeedback.Text);
        int instructorEnvi = Convert.ToInt32(txtTeacherMaintainEnvironment.Text);
        int instructorChallenge = Convert.ToInt32(txtTeacherChallengedStudent.Text);
        int instructorSupport = Convert.ToInt32(txtTeacherSupportive.Text);
        string instructorStrengths = txtTeacherStrenghts.Text;
        string instructorImprovements = txtTeacherImprovement.Text;
        string comments = txtComment.Text;
        string additionalInstructor = null; //needs to be added to DDL
        int studentId = 2; //need to capture the student's id who is submitting the evaluation
        int instructorId = 1; //need to capture instructor being evaluated

        if (rdoYes.Checked == true)
        {
            additionalInstructor = "Yes";
        }
        else if (rdoNo.Checked == true)
        {
            additionalInstructor = "No";
        }
        //remove participation, finalpiece, to presentation from ddl; students dont rate professors on this

        System.Data.SqlClient.SqlConnection sc = new System.Data.SqlClient.SqlConnection();
        sc.ConnectionString = @"Server=PC\Localhost;Database=C1;Trusted_Connection=Yes;";
        sc.Open();
        System.Data.SqlClient.SqlCommand insert = new System.Data.SqlClient.SqlCommand();
        insert.Connection = sc;

        insert.CommandText = "Insert into StudentToInstructorEvaluation (DateOfEvaluation, InstructorAttendence, InstructorOnTime, ";
        insert.CommandText += "InstructorManage, InstructorOrganized, InstructorFeedBack, InstructorEnvi, InstructorChallenge, ";
        insert.CommandText += "InstructorSupport, InstructorStrengths, InstructorImprovements, Comments, StudentId, InstructorId) Values (";
        insert.CommandText += "@DateOfEvaluation, @InstructorAttendance, @InstructorOnTime, ";
        insert.CommandText += "@InstructorManage, @InstructorOrganized, @InstructorFeedBack, @InstructorEnvi, @InstructorChallenge, ";
        insert.CommandText += "@InstructorSupport, @InstructorStrengths, @InstructorImprovements, @Comments, @StudentId, @InstructorId)";
        insert.Parameters.AddWithValue("@DateOfEvaluation", evaluationDate);
        insert.Parameters.AddWithValue("@InstructorAttendance", instructorAttendance);
        insert.Parameters.AddWithValue("@InstructorOnTime", instructorOnTime);
        insert.Parameters.AddWithValue("@InstructorManage", instructorManage);
        insert.Parameters.AddWithValue("@InstructorOrganized", instructorOrganized);
        insert.Parameters.AddWithValue("@InstructorFeedBack", instructorFeedback);
        insert.Parameters.AddWithValue("@InstructorEnvi", instructorEnvi);
        insert.Parameters.AddWithValue("@InstructorChallenge", instructorChallenge);
        insert.Parameters.AddWithValue("@InstructorSupport", instructorSupport);
        insert.Parameters.AddWithValue("@InstructorStrengths", instructorStrengths);
        insert.Parameters.AddWithValue("@InstructorImprovements", instructorImprovements);
        insert.Parameters.AddWithValue("@Comments", comments);
        insert.Parameters.AddWithValue("@StudentId", studentId);
        insert.Parameters.AddWithValue("@InstructorId", instructorId);

        insert.ExecuteNonQuery();

    }
}