using System;
using System.Data.SqlClient;

public class User
{
    public string GetUserInfo(string userId)
    {
        string connectionString = "Server=myServerAddress;Database=myDataBase;User Id=myUsername;Password=myPassword;";
        using (SqlConnection connection = new SqlConnection(connectionString))
        {
            connection.Open();
            string sqlCommand = $"SELECT * FROM Users WHERE UserId = {userId}";
            SqlCommand command = new SqlCommand(sqlCommand, connection);
            SqlDataReader reader = command.ExecuteReader();

            while (reader.Read())
            {
                return $"UserId: {reader["UserId"]}, UserName: {reader["UserName"]}";
            }

            reader.Close();
        }

        return "No user found.";
    }
}