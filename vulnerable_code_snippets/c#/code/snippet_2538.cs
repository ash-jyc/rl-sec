using System;
using System.Data.SqlClient;

public class Program
{
    static void Main(string[] args)
    {
        string connectionString = "Server=myServerAddress;Database=myDataBase;User Id=myUsername;Password=myPassword;";
        using (SqlConnection connection = new SqlConnection(connectionString))
        {
            Console.WriteLine("Enter your query:");
            string query = Console.ReadLine(); // User input

            SqlCommand command = new SqlCommand(query, connection);
            command.Connection.Open();
            command.ExecuteNonQuery();
        }
    }
}