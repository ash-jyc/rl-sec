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

            Console.Write("Enter your username: ");
            string username = Console.ReadLine();

            Console.Write("Enter your password: ");
            string password = Console.ReadLine();

            string query = "SELECT COUNT(*) FROM Users WHERE Username='" + username + "' AND Password='" + password + "'";

            SqlCommand command = new SqlCommand(query, connection);
            int result = (int)command.ExecuteScalar();

            if (result == 1)
                Console.WriteLine("Login successful!");
            else
                Console.WriteLine("Invalid username or password.");
        }
    }
}