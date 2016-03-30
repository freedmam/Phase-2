using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Sql;
using System.Data.SqlClient;

public partial class studentBio : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnSubmitApp_Click(object sender, EventArgs e)
    {
        Session["Biography"] = txtBiography.Text;
        if (rboYes.Checked == true)
        {
            Session["Eightteen"] = "Yes";
        }
        else if (rboNo.Checked == true)
        {
            Session["Eightteen"] = "No";
        }
        //Session["ContactFName"] = txtContactFName.Text;
        //Session["ContactLName"] = txtContactLName.Text;
        //need session variable to capture 18 years older Yes/No
        Session["Signature"] = txtSignature.Text; //only one signature place in database and is Volunteer signature
        Session["TodayDate"] = txtTodaydate.Text; //no place in database for todays date
        string emerContactFName = Session["ContactFName"] as string;
        string emerContactLName = Session["ContactLName"] as string;
        string dateOfEnrollment = Session["DateOfEnrollment"] as string;
        string firstName = Session["FirstName"] as string;
        string lastName = Session["LastName"] as string;
        string volSignature = Session["VolSignature"] as string;
        string cellPhone = Session["CellPhone"] as string;
        string homePhone = Session["HomePhone"] as string;
        string email = Session["Email"] as string;
        string dateOfBirth = Session["DateOfBirth"] as string;
        string age = Session["Age"] as string;
        string dcCard = Session["DCCard"] as string;
        string gender = Session["Gender"] as string;
        string race = Session["Race"] as string;
        string street = Session["Street"] as string;
        string city = Session["City"] as string;
        string state = Session["State"] as string;
        string zip = Session["Zip"] as string;
        string country = Session["Country"] as string;
        string physicianName = Session["PhysicianName"] as string;
        string insuranceCo = Session["InsuranceCo"] as string;
        int insuranceGroupNum = Convert.ToInt32(Session["InsuranceGroup"]);
        int insPolicyNum = Convert.ToInt32(Session["PolicyNumber"]);
        string allergies = Session["Allergies"] as string;
        string lastSchool = Session["LastSchool"] as string;
        int graduationYear = Convert.ToInt32(Session["GraduationYear"]);
        string major = Session["Major"] as string;
        string furtherEducation = Session["FurtherEducation"] as string;
        string currentlyEmployed = Session["CurrentlyEmployed"] as string;
        double salary = Convert.ToDouble(Session["Salary"]);
        string careerGoals = Session["CareerGoals"] as string;
        string artisticResume = Session["ArtisticResume"] as string;
        int djSkill = Convert.ToInt32(Session["DJSkill"]);
        int graffitiSkill = Convert.ToInt32(Session["GraffitiSkill"]);
        int mcSkill = Convert.ToInt32(Session["MCing"]);
        int poetry = Convert.ToInt32(Session["Poetry"]);
        int publicArtSkill = Convert.ToInt32(Session["PublicArt"]);
        int breakDancingSkill = Convert.ToInt32(Session["BreakDancing"]);
        int musicProduction = Convert.ToInt32(Session["MusicProduction"]);
        int chessSkill = Convert.ToInt32(Session["Chess"]);
        int photographySkill = Convert.ToInt32(Session["Photography"]);
        int hipHopSkill = Convert.ToInt32(Session["HipHop"]);
        string pastClass = Session["PastClasses"] as string;
        string pastClassDescription = Session["PastClassDescription"] as string;
        string biography = Session["Biography"] as string;
        string eightteenUp = Session["Eightteen"] as string;
        int contactID;
        //need to add physicianName to database


        System.Data.SqlClient.SqlConnection sc = new System.Data.SqlClient.SqlConnection();
        sc.ConnectionString = @"Server=PC\Localhost;Database=C1;Trusted_Connection=Yes;";
        sc.Open();
        System.Data.SqlClient.SqlCommand insert = new System.Data.SqlClient.SqlCommand();
        insert.Connection = sc;

        insert.CommandText = "Select ContactID from Emergency_Contact where FirstName = @EmergFirstName and LastName = @EmergLastName";
        insert.Parameters.AddWithValue("@EmergFirstName", emerContactFName);
        insert.Parameters.AddWithValue("@EmergLastName", emerContactLName);

        var reader = insert.ExecuteReader();
        reader.Read();
        contactID = Convert.ToInt32(reader.GetInt32(0));
        sc.Close();

        sc.Open();

        insert.CommandText = "Insert into Student (DateOfEnrollment, FirstName, LastName, VolunteerSign, CellPhoneNumber, HomePhoneNumber, ";
        insert.CommandText += "Street, City, State, Zip, Country, ";
        insert.CommandText += "EmailAddress, DateOfBirth, Age, OneCard, Gender, Race, InsuranceCompany, InsuranceGroupNumber, "; 
        insert.CommandText += "InsurancePolicyNumber, Allergies, LastSchoolAttended, GradYear, Major, FurtherEducationPlan, JobStatus, ";
        insert.CommandText += "Salary, CareerGoal, ArtResumeStatus, DJSkill, GraffitiSkill, MCSkill, PoetrySkill, MuralsSkill, BreakDancingSkill, ";
        insert.CommandText += "MusicProductionSkill, ChessSkill, PhotoSkill, HipHopSkill, Bio, EighteenUp, ContactId, ApplicantId) Values ("; //delete PastClasses, PastClassDescription,
        insert.CommandText += "@DateOfEnrollment, @FirstName, @LastName, @VolSignature, @CellPhone, @HomePhone, ";
        insert.CommandText += "@Street, @City, @State, @Zip, @Country, ";
        insert.CommandText += "@Email, @DateOfBirth, @Age, @OneCard, @Gender, @Race, @InsuranceCompany, @InsuranceGroupNum, "; 
        insert.CommandText += "@InsurancePolicyNumber, @Allergies, @LastSchoolAttended, @GradYear, @Major, @FurtherEducationPlan, @JobStatus, ";
        insert.CommandText += "@Salary, @CareerGoal, @ArtisticResume, @DJSkill, @GraffitiSkill, @MCSkill, @PoetrySkill, @MuralsSKill, @BreakDancingSkill, ";
        insert.CommandText += "@MusicProductionSkill, @ChessSkill, @PhotoSkill, @HipHopSKill, @Biography, @EighteenUp, @ContactID, @ApplicantId)"; //deleted @PastClasses, @PastClassDescription, 
        insert.Parameters.AddWithValue("@DateOfEnrollment", dateOfEnrollment);
        insert.Parameters.AddWithValue("@FirstName", firstName);
        insert.Parameters.AddWithValue("@LastName", lastName);
        insert.Parameters.AddWithValue("@VolSignature", volSignature);
        insert.Parameters.AddWithValue("@CellPhone", cellPhone);
        insert.Parameters.AddWithValue("@HomePhone", homePhone);
        insert.Parameters.AddWithValue("@Street", street);
        insert.Parameters.AddWithValue("@City", city);
        insert.Parameters.AddWithValue("@State", state);
        insert.Parameters.AddWithValue("@Zip", zip);
        insert.Parameters.AddWithValue("@Country", country);
        insert.Parameters.AddWithValue("@Email", email);
        insert.Parameters.AddWithValue("@DateOfBirth", dateOfBirth);
        insert.Parameters.AddWithValue("@Age", age);
        insert.Parameters.AddWithValue("@OneCard", dcCard);
        insert.Parameters.AddWithValue("@Gender", gender);
        insert.Parameters.AddWithValue("@Race", race);
        insert.Parameters.AddWithValue("@InsuranceCompany", insuranceCo);
        insert.Parameters.AddWithValue("@InsuranceGroupNum", insuranceGroupNum);
        insert.Parameters.AddWithValue("@InsurancePolicyNumber", insPolicyNum);
        insert.Parameters.AddWithValue("@Allergies", allergies);
        insert.Parameters.AddWithValue("@LastSchoolAttended", lastSchool);
        insert.Parameters.AddWithValue("@GradYear", graduationYear);
        insert.Parameters.AddWithValue("@Major", major);
        insert.Parameters.AddWithValue("@FurtherEducationPlan", furtherEducation);
        insert.Parameters.AddWithValue("@JobStatus", currentlyEmployed);
        insert.Parameters.AddWithValue("@Salary", salary);
        insert.Parameters.AddWithValue("@CareerGoal", careerGoals);
        insert.Parameters.AddWithValue("@ArtisticResume", artisticResume);
        insert.Parameters.AddWithValue("@DJSkill", djSkill);
        insert.Parameters.AddWithValue("@GraffitiSkill", graffitiSkill);
        insert.Parameters.AddWithValue("@MCSkill", mcSkill);
        insert.Parameters.AddWithValue("@PoetrySkill", poetry);
        insert.Parameters.AddWithValue("@MuralsSkill", publicArtSkill);
        insert.Parameters.AddWithValue("@BreakDancingSkill", breakDancingSkill);
        insert.Parameters.AddWithValue("@MusicProductionSkill", musicProduction);
        insert.Parameters.AddWithValue("@ChessSkill", chessSkill);
        insert.Parameters.AddWithValue("@PhotoSkill", photographySkill);
        insert.Parameters.AddWithValue("@HipHopSKill", hipHopSkill);
        //insert.Parameters.AddWithValue("@PastClasses", pastClass);
        //insert.Parameters.AddWithValue("@PastClassDescription", pastClassDescription);
        insert.Parameters.AddWithValue("@Biography", biography);
        insert.Parameters.AddWithValue("@EighteenUp", eightteenUp);
        insert.Parameters.AddWithValue("@ContactID", contactID);
        insert.Parameters.AddWithValue("@ApplicantID", 1);

        insert.ExecuteNonQuery();
        txtTestingPurposes.Text = insert.CommandText;
        sc.Close();
    }
}