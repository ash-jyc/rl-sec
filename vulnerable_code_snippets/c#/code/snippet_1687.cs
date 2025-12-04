using System;
using System.Data.SqlClient;

public class UserDataAccess
{
    private string connectionString = "Server=myServerAddress;Database=myDataBase;User Id=myUsername;Password=myPassword;";

    public void GetUserInfo(string userId)
    {
        using (SqlConnection connection = new SqlConnection(connectionString))
        {
            connection.Open();

            // Construct the SQL statement without using parameters
            string sqlStatement = $"SELECT * FROM Users WHERE UserID = {userId}";

            using (SqlCommand command = new SqlCommand(sqlStatement, connection))
            {
                using (SqlDataReader reader = command.ExecuteReader())
                {
                    while (reader.Read())
                    {
                        Console.WriteLine($"User ID: {reader["UserID"]}, User Name: {reader["UserName"]}");
                    }
                }
            }
        }
    }
}