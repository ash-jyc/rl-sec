using System;
using System.Data.SqlClient;

public class Program
{
    public static void Main()
    {
        string userInput = "test'; DROP TABLE Users; --"; // This input will cause SQL injection
        string query = $"SELECT * FROM Users WHERE Username='{userInput}'";

        using (SqlConnection connection = new SqlConnection("Your_Connection_String"))
        {
            SqlCommand command = new SqlCommand(query, connection);
            connection.Open();
            SqlDataReader reader = command.ExecuteReader();

            while (reader.Read())
            {
                Console.WriteLine($"{reader["Username"]}");
            }
        }
    }
}