using System;
using System.Data.SqlClient;
using System.Web;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string connectionString = "Server=myServerAddress;Database=myDataBase;User Id=myUsername;Password=myPassword;";
        SqlConnection conn = new SqlConnection(connectionString);

        string query = "SELECT * FROM Users WHERE UserId = " + Request.QueryString["id"];
        SqlCommand cmd = new SqlCommand(query, conn);

        conn.Open();
        SqlDataReader reader = cmd.ExecuteReader();

        while (reader.Read())
        {
            Response.Write("<p>" + reader[0] + "</p>");
        }

        conn.Close();
    }
}