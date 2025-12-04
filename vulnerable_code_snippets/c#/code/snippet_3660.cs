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

        using (SqlConnection connection = new SqlConnection("Server=(local);Database=myDataBase;User Id=myUsername;Password=myPassword;"))
        {
            connection.Open();

            string query = "SELECT * FROM Users WHERE Username = '" + username + "' AND Password = '" + password + "'";
            SqlCommand command = new SqlCommand(query, connection);
            SqlDataReader reader = command.ExecuteReader();

            if (reader.HasRows)
            {
                Console.WriteLine("Login successful!");
            }
            else
            {
                Console.WriteLine("Invalid username or password.");
            }
        }
    }
}