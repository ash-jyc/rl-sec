using System;
using System.Data.SqlClient;

public class UserInput
{
    public string GetUserInput()
    {
        Console.WriteLine("Enter your username:");
        string username = Console.ReadLine();
        return username;
    }
}

public class DatabaseAccess
{
    private string connectionString = "Server=myServerAddress;Database=myDataBase;User Id=myUsername;Password=myPassword;";

    public void GetUserData(string username)
    {
        using (SqlConnection connection = new SqlConnection(connectionString))
        {
            connection.Open();
            string sqlCommand = $"SELECT * FROM Users WHERE Username = '{username}'";
            SqlCommand command = new SqlCommand(sqlCommand, connection);
            SqlDataReader reader = command.ExecuteReader();
            
            while (reader.Read())
            {
                Console.WriteLine($"User ID: {reader[0]}, User Name: {reader[1]}");
            }
        }
    }
}

class Program
{
    static void Main(string[] args)
    {
        UserInput userInput = new UserInput();
        DatabaseAccess databaseAccess = new DatabaseAccess();
        string username = userInput.GetUserInput();
        databaseAccess.GetUserData(username);
    }
}