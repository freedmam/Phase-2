<%@ WebHandler Language="C#" Class="ShowImage" %>

using System;
using System.Web;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

public class ShowImage : IHttpHandler {
    
    public void ProcessRequest (HttpContext context) 
    {
        if (context.Request.QueryString["PieceID"] == null) return;
        string conStr = @"Server = LOCALHOST ; Database = C1; Trusted_Connection = Yes;";
        string PieceID = context.Request.QueryString["PieceID"];
        using (SqlConnection sc = new SqlConnection(conStr))
        {
            using (SqlCommand cmd = new SqlCommand("SELECT Content From Portfolio_Piece where PieceID = @PieceID", sc))
            {
                cmd.Parameters.Add(new SqlParameter("@PieceID", PieceID));
                
                sc.Open();
                
                using (SqlDataReader reader = cmd.ExecuteReader(CommandBehavior.CloseConnection))
                {
                    reader.Read();
                    context.Response.BinaryWrite((Byte[])reader[reader.GetOrdinal("Content")]);
                    reader.Close();
                }
            }
        }
    }
 
    public bool IsReusable {
        get {
            return false;
        }
    }


}