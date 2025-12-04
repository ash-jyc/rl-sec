using System;
using System.Data.SqlClient;

public class Program
{
    static void Main(string[] args)
    {
        Console.Write("Enter your username: ");
        string username = Console.ReadLine();
        Console.Write("Enter your password: ");
        string password = Console.ReadLine();

        string connectionString = "Server=myServerAddress;Database=myDataBase;User Id=" + username + ";Password=" + password + ";";

        using (SqlConnection connection = new SqlConnection(connectionString))
        {
            try
            {
                connection.Open();
                Console.WriteLine("Successfully connected to the database.");
            }
            catch (Exception ex)
            {
                Console.WriteLine("Failed to connect to the database: " + ex.ToString());
            }
        }
    }
}