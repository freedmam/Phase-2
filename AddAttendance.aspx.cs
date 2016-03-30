using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class AddAttendance : System.Web.UI.Page
{
    public int studentID;
    public int totalAttendance;

    string conStr = @"Server = LOCALHOST ; Database = C1; Trusted_Connection = Yes;";

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        { StudentInfo(); }
    }

    private void StudentInfo()
    {
        //Displaying Student info from student table into dropdown list in GUI
        using (SqlConnection sc = new SqlConnection(conStr))
        {
            //Creates a new sql select command to display student info
            System.Data.SqlClient.SqlCommand select = new System.Data.SqlClient.SqlCommand("Select FirstName + LastName + '--StudentID:' + CONVERT(varchar, StudentID) AS NAME from dbo.Student;", sc);
            sc.Open();
            
            dlStudent.DataSource = select.ExecuteReader();
            dlStudent.DataTextField = "NAME";
            dlStudent.DataBind();
           
            sc.Close();
        }

    }


    protected void btnAdd_Click(object sender, EventArgs e)
    {   char delimiter = ':';
        string[] words;
        string pastAttendance;
        string studentIDSelected = dlStudent.SelectedItem.Text;
        words = studentIDSelected.Split(delimiter);
        studentID = int.Parse(words[1]);

        int attendance = int.Parse(txtAttendance.Text);

           using (SqlConnection sc = new SqlConnection(conStr))
        {

                string sqlQuery = "Select Attendance from dbo.Student where StudentID=" + studentID + ";";

                sc.Open();
                //Creates a new sql select command to display employeeID
                System.Data.SqlClient.SqlCommand select = new System.Data.SqlClient.SqlCommand(sqlQuery, sc);
                SqlDataReader reader = select.ExecuteReader();

                while (reader.Read())
                {
                    
                    pastAttendance = (reader["Attendance"]).ToString();
                    totalAttendance = int.Parse(pastAttendance) + attendance;
                }
                sc.Close();
        }


           using (SqlConnection sc = new SqlConnection(conStr))
        {
                string sqlQuery = "Select Attendance from dbo.Student where StudentID=" + studentID + ";";

                sc.Open();
                //Creates a new sql select command to display student Info
                System.Data.SqlClient.SqlCommand select = new System.Data.SqlClient.SqlCommand(sqlQuery, sc);

               //inserting attendance
            string sqlQuery2 = "UPDATE dbo.Student SET Attendance=";
            sqlQuery2 += totalAttendance+ " where StudentID=" + studentID + ";";

            //Creates a new sql update stmt to update student attendance
            System.Data.SqlClient.SqlCommand update = new System.Data.SqlClient.SqlCommand(sqlQuery2, sc);

            update.ExecuteNonQuery();

            sc.Close();

            lblconfirm.Text = "Attendance for Student " + dlStudent.SelectedItem.Text + " has been updated!";
            }
    }
}