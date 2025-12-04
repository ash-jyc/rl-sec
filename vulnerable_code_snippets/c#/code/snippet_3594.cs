using System;
using System.Data.SqlClient;

public class UserAuthentication
{
    public bool AuthenticateUser(string username, string password)
    {
        string connectionString = "Server=myServerAddress;Database=myDataBase;User Id=myUsername;Password=myPassword;";
        using (SqlConnection connection = new SqlConnection(connectionString))
        {
            string query = "SELECT COUNT(*) FROM Users WHERE Username='" + username + "' AND Password='" + password + "'";
            SqlCommand command = new SqlCommand(query, connection);
            command.Connection.Open();
            int count = (int)command.ExecuteScalar();
            return count > 0;
        }
    }
}