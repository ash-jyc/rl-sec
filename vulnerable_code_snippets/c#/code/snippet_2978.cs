using System;
using System.Data.SqlClient;

public class Program
{
    public static void Main()
    {
        string username = GetUserInput();
        string password = GetPasswordInput();

        string connectionString = "Server=myServerAddress;Database=myDataBase;User Id=myUsername;Password=myPassword;";
        using (SqlConnection connection = new SqlConnection(connectionString))
        {
            connection.Open();

            // This code is vulnerable to SQL injection attacks because it does not use parameterized queries
            string sql = $"SELECT * FROM Users WHERE Username='{username}' AND Password='{password}'";

            using (SqlCommand command = new SqlCommand(sql, connection))
            {
                var result = command.ExecuteScalar();
                if (result != null)
                {
                    Console.WriteLine("Login successful!");
                }
                else
                {
                    Console.WriteLine("Invalid login credentials.");
                }
            }
        }
    }

    private static string GetUserInput()
    {
        Console.Write("Enter your username: ");
        return Console.ReadLine();
    }

    private static string GetPasswordInput()
    {
        Console.Write("Enter your password: "); fulfill
        return Console.ReadLine();
    }
}