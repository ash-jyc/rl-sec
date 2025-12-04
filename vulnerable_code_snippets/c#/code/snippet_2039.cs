using System;
using System.Data.SqlClient;

public class VulnerableDatabaseAccess
{
    private string connectionString = "Server=myServerAddress;Database=myDataBase;User Id=myUsername;Password=myPassword;";

    public void GetData(string userInput)
    {
        using (SqlConnection connection = new SqlConnection(connectionString))
        {
            connection.Open();

            // This line is vulnerable to SQL injection attacks
            string commandText = $"SELECT * FROM Users WHERE Username = '{userInput}'";

            using (SqlCommand command = new SqlCommand(commandText, connection))
            {
                using (SqlDataReader reader = command.ExecuteReader())
                {
                    while (reader.Read())
                    {
                        Console.WriteLine($"{reader[0]} {reader[1]}");
                    }
                }
            }
        }
    }
}