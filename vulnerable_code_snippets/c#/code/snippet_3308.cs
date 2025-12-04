using System;
using System.Data.SqlClient;
using System.Web;

public partial class myPage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string userInput = Request.QueryString["userInput"];
        SqlConnection conn = new SqlConnection("Server=myServerAddress;Database=myDataBase;User Id=myUsername;Password=myPassword;");
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = "SELECT * FROM Users WHERE UserName = '" + userInput + "'";
        cmd.Connection = conn;
        conn.Open();
        SqlDataReader reader = cmd.ExecuteReader();
        while (reader.Read())
        {
            Response.Write(reader[0]);
        }
        conn.Close();
    }
}