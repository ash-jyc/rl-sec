using System;
using System.Data;
using System.Data.SqlClient;

public class UserInput
{
    public static void Main()
    {
        Console.WriteLine("Enter your username:");
        string username = Console.ReadLine();

        Console.WriteLine("Enter your password:");
        string password = Console.ReadLine();

        string connectionString = "Server=myServerAddress;Database=myDataBase;User Id=" + username + ";Password=" + password + ";";

        using (SqlConnection connection = new SqlConnection(connectionString))
        {
            SqlCommand command = new SqlCommand("SELECT * FROM Users WHERE Username='" + username + "' AND Password='" + password + "'", connection);
            connection.Open();

            SqlDataReader reader = command.ExecuteReader();

            while (reader.Read())
            {
                Console.WriteLine("\nUsername: " + reader[0] + "\nPassword: " + reader[1]);
            }

            reader.Close();
        }
    }
}