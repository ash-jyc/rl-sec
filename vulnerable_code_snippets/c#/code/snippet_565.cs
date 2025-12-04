using System;
using System.Data.SqlClient;

public class Program
{
    static void Main(string[] args)
    {
        string connectionString = "Server=myServerAddress;Database=myDataBase;User Id=myUsername;Password=myPassword;";
        using (SqlConnection connection = new SqlConnection(connectionString))
        {
            connection.Open();

            string userInput = args[0]; // User input from command line arguments
            string sqlQuery = $"SELECT * FROM Users WHERE Username = '{userInput}' AND Password = '{userInput}'";

            using (SqlCommand command = new SqlCommand(sqlQuery, connection))
            {
                using (SqlDataReader reader = command.ExecuteReader())
                {
                    while (reader.Read())
                    {
                        Console.WriteLine($"Username: {reader["Username"]}, Password: {reader["Password"]}");
                    }
                }
            }
        }
    }
}