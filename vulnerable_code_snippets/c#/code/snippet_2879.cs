using System;
using System.Data.SqlClient;

public class UserAuthentication
{
    public bool AuthenticateUser(string username, string password)
    {
        string connectionString = "Server=myServerAddress;Database=myDataBase;User Id=myUsername;Password=myPassword;";
        using (SqlConnection connection = new SqlConnection(connectionString))
        {
            string sqlQuery = $"SELECT * FROM Users WHERE Username = '{username}' AND Password = '{password}'";
            SqlCommand command = new SqlCommand(sqlQuery, connection);
            connection.Open();
            SqlDataReader reader = command.ExecuteReader();

            if (reader.HasRows)
                return true;
            else
                return false;
        }
    }
}