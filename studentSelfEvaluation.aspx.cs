using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class studentSelfEvaluation : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string hearOfClass = ddlHearAboutClass.SelectedValue;
        string comfort = txtComfort.Text;
        string comfortDescription = txtComfortDescription.Text;
        string skillsLearned = txtSkillsLearned.Text;
        int tryNew = Convert.ToInt32(txtTryNew.Text);
        int takesToBeArtist = Convert.ToInt32(txtTakesToBeArtist.Text);
        int medium = Convert.ToInt32(txtMediums.Text);
        int makeFriends = Convert.ToInt32(txtMakeFriends.Text);
        int learnNew = Convert.ToInt32(txtLearnNew.Text);
        int feelHappyWSelf = Convert.ToInt32(txtFeelHappyWSelf.Text);
        int dealWStress = Convert.ToInt32(txtDealWStress.Text);
        int respectDif = Convert.ToInt32(txtRespectDif.Text);
        int resistNeg = Convert.ToInt32(txtResistNeg.Text);
        int comfortCreative = Convert.ToInt32(txtComfortCreative.Text);
        int talkCarrerInt = Convert.ToInt32(txtTalkCareerInt.Text);
        int stepsToGoals = Convert.ToInt32(txtStepsToGoals.Text);
        int continuedGrowth = Convert.ToInt32(txtContinuedGrowth.Text);
        int finishSchool = Convert.ToInt32(txtFinishSchool.Text);
        int enjoyJob = Convert.ToInt32(txtEnjoyJob.Text);
        int recognition = Convert.ToInt32(txtStudentRecognition.Text);
        int technology = Convert.ToInt32(txtStudentTechnology.Text);
        int scratching = Convert.ToInt32(txtStudentScratching.Text);
        int professional = Convert.ToInt32(txtStudentProfessionalism.Text);
        int presentation = Convert.ToInt32(txtStudentPresentation.Text);
        string participation = txtStudentParticipation.Text;
        string pieceAllCity = null;
        int studentId = 1; //need to fix so its not hardcoded

        if (rboNo.Checked == true)
        {
            pieceAllCity = "No";
        }
        else if (rboyes.Checked == true)
        {
            pieceAllCity = "Yes";
        }

        System.Data.SqlClient.SqlConnection sc = new System.Data.SqlClient.SqlConnection();
        sc.ConnectionString = @"Server=PC\Localhost;Database=C1;Trusted_Connection=Yes;";
        sc.Open();
        System.Data.SqlClient.SqlCommand insert = new System.Data.SqlClient.SqlCommand();
        insert.Connection = sc;

        insert.CommandText = "Insert into Self_Eval (HeardOf, Comfort, ComfortDescription, SkillsLearned, TryNew, TakesToBeArtist, ";
        insert.CommandText += "MakeFriends, LearnNew, FeelHappyWSelf,  DealWStress, RespectDif, ResistNeg, ComfortCreative, ";
        insert.CommandText += "Mediums, TalkCareerInt, StepsToGoals, ContinuedGrowth, FinishSchool, EnjoyJob, ";
        insert.CommandText += "Recognition, Technology, Scratching, Professional, Presentation, Participation, pieceAllCity, StudentId) Values ("; //need to add to insert pieceallcity rdobutton
        insert.CommandText += "@HeardOf, @Comfort, @ComfortDescription, @SkillsLearned, @TryNew, @TakesToBeArtist, ";
        insert.CommandText += "@MakeFriends, @LearnNew, @FeelHappyWSelf, @DealWStress, @RespectDif, @ResistNeg, @ComfortCreative, ";
        insert.CommandText += "@Mediums, @TalkCareerInt, @StepsToGoals, @ContinuedGrowth, @FinishSchool, @EnjoyJob, ";
        insert.CommandText += "@Recognition, @Technology, @Scratching, @Professional, @Presentation, @Participation, @pieceAllCity, @StudentId)";
        insert.Parameters.AddWithValue("@HeardOf", hearOfClass);
        insert.Parameters.AddWithValue("@Comfort", comfort);
        insert.Parameters.AddWithValue("@ComfortDescription", comfortDescription);
        insert.Parameters.AddWithValue("@SkillsLearned", skillsLearned);
        insert.Parameters.AddWithValue("@TryNew", tryNew);
        insert.Parameters.AddWithValue("@TakesToBeArtist", takesToBeArtist);
        insert.Parameters.AddWithValue("@Mediums", medium);
        insert.Parameters.AddWithValue("@MakeFriends", makeFriends);
        insert.Parameters.AddWithValue("@LearnNew", learnNew);
        insert.Parameters.AddWithValue("@FeelHappyWSelf", feelHappyWSelf);
        insert.Parameters.AddWithValue("@DealWStress", dealWStress);
        insert.Parameters.AddWithValue("@RespectDif", respectDif);
        insert.Parameters.AddWithValue("@ResistNeg", resistNeg);
        insert.Parameters.AddWithValue("@ComfortCreative", comfortCreative);
        insert.Parameters.AddWithValue("@TalkCareerInt", talkCarrerInt);
        insert.Parameters.AddWithValue("@StepsToGoals", stepsToGoals);
        insert.Parameters.AddWithValue("@ContinuedGrowth", continuedGrowth);
        insert.Parameters.AddWithValue("@FinishSchool", finishSchool);
        insert.Parameters.AddWithValue("@EnjoyJob", enjoyJob);
        insert.Parameters.AddWithValue("@Recognition", recognition);
        insert.Parameters.AddWithValue("@Technology", technology);
        insert.Parameters.AddWithValue("@Scratching", scratching);
        insert.Parameters.AddWithValue("@Professional", professional);
        insert.Parameters.AddWithValue("@Presentation", presentation);
        insert.Parameters.AddWithValue("@Participation", participation);
        insert.Parameters.AddWithValue("@PieceAllCity", pieceAllCity);
        insert.Parameters.AddWithValue("@StudentId", studentId);

        insert.ExecuteNonQuery();
        sc.Close();
    }
}