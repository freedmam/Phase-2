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

public partial class StudentPortfolio : System.Web.UI.Page
{
    string conStr = @"Server = LOCALHOST ; Database = C1; Trusted_Connection = Yes;";
    protected void Page_Load(object sender, EventArgs e)
    {

        if (!IsPostBack)
        {

            BindFiles();

        }
    }


    private void BindFiles()
    {
        DataTable td = new DataTable();
        using (SqlConnection sc = new SqlConnection(conStr))
        {
            string sql = "Select PieceID, PieceName, Content from Portfolio_Piece;";

            using (SqlCommand cmd = new SqlCommand(sql, sc))
            {
                using (SqlDataAdapter ad = new SqlDataAdapter(cmd))
                {
                    ad.Fill(td);
                }
            }
        }
        GridView1.DataSource = td;
        GridView1.DataBind();

    }

    protected void Button1_Click(object sender, EventArgs e)
    {

        FileInfo fi = new FileInfo(FileUpload1.FileName);
        byte[] fileContent = FileUpload1.FileBytes;

        string name = fi.Name;
        string PieceType = fi.Extension;
        int studentID = 1; //change later

           using (SqlConnection sc = new SqlConnection(conStr))
            {
                SqlCommand cmd = new SqlCommand("SaveFiles", sc);
                cmd.CommandType = CommandType.StoredProcedure;

                cmd.Parameters.Add("@PieceName", SqlDbType.VarChar).Value = name;
                cmd.Parameters.Add("@PieceType", SqlDbType.VarChar).Value = PieceType;
                cmd.Parameters.Add("@Content", SqlDbType.VarBinary).Value = fileContent;
                cmd.Parameters.Add("@StudentID", SqlDbType.Int).Value = studentID;

                sc.Open();
                cmd.ExecuteNonQuery();
            }

        
    }
}