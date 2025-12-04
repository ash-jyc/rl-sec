using System;
using System.Data.SqlClient;

public class Program
{
    static void Main(string[] args)
    {
        string username = Console.ReadLine();
        string password = Console.ReadLine();

        // No input validation or sanitization here
        string query = $"SELECT * FROM Users WHERE Username='{username}' AND Password='{password}'";

        using (SqlConnection connection = new SqlConnection("Your_Connection_String"))
        {
            SqlCommand command = new SqlCommand(query, connection);
            connection.Open();

            SqlDataReader reader = command.ExecuteReader();

            while (reader.Read())
            {
                Console.WriteLine($"User {reader["Username"]} logged in successfully.");
            }
        }
    }
}