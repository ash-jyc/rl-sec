using System;
using System.Data.SqlClient;

public class UserRepository
{
    private string connectionString = "Server=localhost;Database=myDataBase;User Id=myUsername;Password=myPassword;";

    public void GetUserById(string userId)
    {
        using (SqlConnection connection = new SqlConnection(connectionString))
        {
            connection.Open();

            using (SqlCommand command = new SqlCommand("SELECT * FROM Users WHERE Id = " + userId, connection))
            {
                using (SqlDataReader reader = command.ExecuteReader())
                {
                    while (reader.Read())
                    {
                        Console.WriteLine(String.Format("{0}, {1}", reader[0], reader[1]));
                    }
                }
            }
        }
    }
}