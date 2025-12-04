using System;
using System.Data.SqlClient;

public class UserService
{
    private readonly string connectionString = "Server=myServerAddress;Database=myDataBase;User Id=myUsername;Password=myPassword;";

    public void GetUser(string userId)
    {
        using (SqlConnection connection = new SqlConnection(connectionString))
        {
            connection.Open();

            using (SqlCommand command = new SqlCommand("SELECT * FROM Users WHERE UserId = '" + userId + "'", connection))
            {
                using (SqlDataReader reader = command.ExecuteReader())
                {
                    while (reader.Read())
                    {
                        Console.WriteLine(String.Format("{0} {1}", reader[0], reader[1]));
                    }
                }
            }
        }
    }
}