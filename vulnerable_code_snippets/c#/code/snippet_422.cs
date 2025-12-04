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

        string connectionString = "Server=myServerAddress;Database=myDataBase;User Id=myUsername;Password=myPassword;";
        using (SqlConnection connection = new SqlConnection(connectionString))
        {
            connection.Open();

            string sqlCommand = $"SELECT * FROM Users WHERE Username='{username}' AND Password='{password}'";
            SqlCommand command = new SqlCommand(sqlCommand, connection);

            SqlDataReader reader = command.ExecuteReader();

            if (reader.HasRows)
            {
                Console.WriteLine("Login successful!");
            }
            else
            {
                Console.WriteLine("Invalid login!");
            }

            reader.Close();
        }
    }
}