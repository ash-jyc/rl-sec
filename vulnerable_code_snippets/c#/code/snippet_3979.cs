using System;
using System.Data.SqlClient;
using System.Web;

public class User
{
    public string Username { get; set; }
    public string Password { get; set; }
}

public class DataAccessLayer
{
    private static string connectionString = "Server=(local);Database=MyDatabase;Integrated Security=true";

    public void AddUser(User user)
    {
        using (SqlConnection connection = new SqlConnection(connectionString))
        {
            string query = $"INSERT INTO Users (Username, Password) VALUES ('{user.Username}', '{user.Password}')";
            SqlCommand command = new SqlCommand(query, connection);
            connection.Open();
            command.ExecuteNonQuery();
        }
    }
}

public class Program
{
    public static void Main()
    {
        HttpContext.Current.Response.Write("<b>Registration Page</b><br/>");

        User user = new User();
        user.Username = HttpContext.Current.Request.Form["username"];
        user.Password = HttpContext.Current.Request.Form["password"];

        DataAccessLayer dal = new DataAccessLayer();
        dal.AddUser(user);

        HttpContext.Current.Response.Write("User Added Successfully!");
    }
}