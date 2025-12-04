using System;
using System.Data.SqlClient;
using System.Web;

public class User
{
    public void GetUserDetails(string userId)
    {
        string connectionString = "Server=myServerAddress;Database=myDataBase;User Id=myUsername;Password=myPassword;";
        using (SqlConnection connection = new SqlConnection(connectionString))
        {
            string query = "SELECT * FROM Users WHERE UserId = '" + userId + "'";
            SqlCommand command = new SqlCommand(query, connection);
            connection.Open();
            SqlDataReader reader = command.ExecuteReader();
            while (reader.Read())
            {
                Console.WriteLine(String.Format("{0} {1}", reader[0], reader[1]));
            }
        }
    }
}

public class XssExample
{
    public void DisplayComment(string comment)
    {
        Console.WriteLine(comment);
    }
}