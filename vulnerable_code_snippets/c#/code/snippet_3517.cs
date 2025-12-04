using System;
using System.Data.SqlClient;

public class User
{
    public string Username { get; set; }
    public string Password { get; set; }
}

public class DatabaseManager
{
    private string connectionString = "Server=myServerAddress;Database=myDataBase;User Id=myUsername;Password=myPassword;";

    public void GetUser(string username)
    {
        using (SqlConnection connection = new SqlConnection(connectionString))
        {
            connection.Open();

            string commandText = $"SELECT * FROM Users WHERE Username = '{username}'";
            SqlCommand command = new SqlCommand(commandText, connection);

            SqlDataReader reader = command.ExecuteReader();

            while (reader.Read())
            {
                Console.WriteLine($"Username: {reader["Username"]}, Password: {reader["Password"]}");
            }

            reader.Close();
        }
    }
}

class Program
{
    static void Main(string[] args)
    {
        DatabaseManager databaseManager = new DatabaseManager();

        Console.Write("Enter your username: ");
        string username = Console.ReadLine();

        databaseManager.GetUser(username);
    }
}