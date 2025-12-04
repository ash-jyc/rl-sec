using System;
using System.Data.SqlClient;

public class Program
{
    static void Main(string[] args)
    {
        string connectionString = "Server=myServerAddress;Database=myDataBase;User Id=myUsername;Password=myPassword;";
        SqlConnection conn = new SqlConnection(connectionString);
        Console.WriteLine("Enter your username:");
        string username = Console.ReadLine();
        Console.WriteLine("Enter your password:");
        string password = Console.ReadLine();
        string query = $"SELECT * FROM Users WHERE Username = '{username}' AND Password = '{password}'";
        SqlCommand command = new SqlCommand(query, conn);
        conn.Open();
        SqlDataReader reader = command.ExecuteReader();
        while (reader.Read())
        {
            Console.WriteLine($"Welcome {reader["Username"]}!");
        }
        conn.Close();
    }
}