using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using Excel = Microsoft.Office.Interop.Excel;
using System.Windows.Forms;

public partial class InstructorDashBoard : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnInstructorViewAttendance_Click(object sender, EventArgs e)
    {

        //Instructor instructorA = new Instructor();
        //int instructorID = int.Parse(instructorA.getInstructorId().ToString());
        //after instructor class made, add where instructor id = instructorID
        string sql = null;
        string data = null;
        int i = 0;
        int j = 0;

        Excel.Application xlApp;
        Excel.Workbook xlWorkBook;
        Excel.Worksheet xlWorkSheet;
        object misValue = System.Reflection.Missing.Value;

        xlApp = new Excel.Application();
        xlWorkBook = xlApp.Workbooks.Add(misValue);
        xlWorkSheet = (Excel.Worksheet)xlWorkBook.Worksheets.get_Item(1);


        System.Data.SqlClient.SqlConnection cnn = new System.Data.SqlClient.SqlConnection();
        cnn.ConnectionString = @"Server = Localhost ; Database = C1; Trusted_Connection = Yes;";
        cnn.Open();
        //sql = "Select StudentID, ClassAttendance from dbo.Student_Class";
        sql = "SELECT B.FirstName, B.LastName, A.ClassAttendance, A.ClassID FROM dbo.Student_Class A LEFT JOIN dbo.Student B ON A.StudentID = B.StudentID";

        SqlDataAdapter dscmd = new SqlDataAdapter(sql, cnn);
        DataSet ds = new DataSet();
        dscmd.Fill(ds);

        for (i = 0; i <= ds.Tables[0].Rows.Count - 1; i++)
        {
            for (j = 0; j <= ds.Tables[0].Columns.Count - 1; j++)
            {
                data = ds.Tables[0].Rows[i].ItemArray[j].ToString();
                xlWorkSheet.Cells[i + 1, j + 1] = data;
            }
        }

        xlWorkBook.SaveAs("classAttendance.xls", Excel.XlFileFormat.xlWorkbookNormal, misValue, misValue, misValue, misValue, Excel.XlSaveAsAccessMode.xlExclusive, misValue, misValue, misValue, misValue, misValue);
        xlWorkBook.Close(true, misValue, misValue);
        xlApp.Quit();

        releaseObject(xlWorkSheet);
        releaseObject(xlWorkBook);
        releaseObject(xlApp);
        //MessageBox.Show("Dot Net Perls is awesome.");
        MessageBox.Show("Excel file created , you can find the file c:\\classAttendance.xls");
    }

    private void releaseObject(object obj)
    {
        try
        {
            System.Runtime.InteropServices.Marshal.ReleaseComObject(obj);
            obj = null;
        }
        catch (Exception ex)
        {
            obj = null;
            MessageBox.Show("Exception Occured while releasing object " + ex.ToString());
        }
        finally
        {
            GC.Collect();
        }
    }

    protected void lstStudentClasses_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}