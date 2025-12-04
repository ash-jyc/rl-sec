using System;
using System.Data.SqlClient;

public class UserInput
{
    public static void Main()
    {
        string userInput = Console.ReadLine(); // User provided input
        string connectionString = "Server=myServerAddress;Database=myDataBase;User Id=myUsername;Password=myPassword;";
        using (SqlConnection connection = new SqlConnection(connectionString))
        {
            connection.Open();
            string sqlCommand = $"SELECT * FROM Users WHERE Name = '{userInput}'"; // Vulnerable SQL query
            using (SqlCommand command = new SqlCommand(sqlCommand, connection))
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