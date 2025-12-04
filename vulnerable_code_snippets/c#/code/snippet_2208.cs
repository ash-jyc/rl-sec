using System;
using System.Data.SqlClient;

public class User
{
    public string GetUserName(string userId)
    {
        string connectionString = "Server=myServerAddress;Database=myDataBase;User Id=myUsername;Password=myPassword;";
        using (SqlConnection connection = new SqlConnection(connectionString))
        {
            connection.Open();
            string query = "SELECT name FROM Users WHERE id = " + userId;
            SqlCommand command = new SqlCommand(query, connection);
            return command.ExecuteScalar().ToString();
        }
    }
}