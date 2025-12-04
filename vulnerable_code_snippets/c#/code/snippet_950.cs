using System;
using System.Data.SqlClient;
using System.Web;

public class UserInputHandler
{
    public void HandleUserInput(string userInput)
    {
        string connectionString = "Server=myServerAddress;Database=myDataBase;User Id=myUsername;Password=myPassword;";
        using (SqlConnection connection = new SqlConnection(connectionString))
        {
            connection.Open();
            string commandText = $"SELECT * FROM Users WHERE Username = '{userInput}'";
            SqlCommand command = new SqlCommand(commandText, connection);
            SqlDataReader reader = command.ExecuteReader();
            
            while (reader.Read())
            {
                Console.WriteLine($"User found: {reader[0]}");
            }
        }
    }
}

public class Program
{
    static void Main()
    {
        UserInputHandler handler = new UserInputHandler();
        string userInput = HttpContext.Current.Request.QueryString["username"];
        handler.HandleUserInput(userInput);
    }
}