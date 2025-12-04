using System;
using System.Data.SqlClient;

public class VulnerableClass
{
    private static string connectionString = "Server=localhost;Database=myDataBase;User Id=myUsername;Password=myPassword;";

    public void UnsafeMethod(string userInput)
    {
        using (SqlConnection connection = new SqlConnection(connectionString))
        {
            connection.Open();

            // This line is vulnerable to SQL injection
            string unsafeQuery = "SELECT * FROM Users WHERE Name = '" + userInput + "'";

            using (SqlCommand command = new SqlCommand(unsafeQuery, connection))
            {
                using (SqlDataReader reader = command.ExecuteReader())
                {
                    while (reader.Read())
                    {
                        Console.WriteLine("Name: " + reader["Name"]);
                    }
                }
            }
        }
    }
}