using System;
using System.Data.SqlClient;

public class User
{
    public static void GetUserDetails(string username)
    {
        string connectionString = "Server=myServerAddress;Database=myDataBase;User Id=myUsername;Password=myPassword;";
        using (SqlConnection connection = new SqlConnection(connectionString))
        {
            connection.Open();
            string query = "SELECT * FROM Users WHERE Username = '" + username + "'";
            SqlCommand command = new SqlCommand(query, connection);
            SqlDataReader reader = command.ExecuteReader();
            while (reader.Read())
            {
                Console.WriteLine("User ID: " + reader[0]);
                Console.WriteLine("Username: " + reader[1]);
                Console.WriteLine("Password: " + reader[2]);
            }
            reader.Close();
        }
    }
}

class Program
{
    static void Main(string[] args)
    {
        Console.Write("Enter your username: ");
        string username = Console.ReadLine();
        User.GetUserDetails(username);
    }
}