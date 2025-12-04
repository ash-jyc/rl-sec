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

public class LoginService
{
    private string connectionString = "your_connection_string";

    public void Login(string username)
    {
        using (SqlConnection connection = new SqlConnection(connectionString))
        {
            connection.Open();
            string query = "SELECT * FROM Users WHERE Username='" + username + "'";
            SqlCommand command = new SqlCommand(query, connection);
            SqlDataReader reader = command.ExecuteReader();
            
            while (reader.Read())
            {
                Console.WriteLine("Welcome " + reader["Username"]);
            }
        }
    }
}

class Program
{
    static void Main(string[] args)
    {
        UserInput userInput = new UserInput();
        LoginService loginService = new LoginService();
        
        string username = userInput.GetUserInput();
        loginService.Login(username);
    }
}