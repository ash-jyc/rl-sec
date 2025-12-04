using System;
using System.Data.SqlClient;

public class Program
{
    static void Main(string[] args)
    {
        string username = Console.ReadLine();
        string password = Console.ReadLine();

        string connectionString = "Server=myServerAddress;Database=myDataBase;User Id=" + username + ";Password=" + password + ";";

        using (SqlConnection connection = new SqlConnection(connectionString))
        {
            connection.Open();
            // Perform database operations...
        }
    }
}