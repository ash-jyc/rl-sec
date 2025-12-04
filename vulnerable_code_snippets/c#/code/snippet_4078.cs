using System;
using System.Data.SqlClient;

public class UserLogin
{
    public string ConnectionString { get; set; }

    public UserLogin(string connectionString)
    {
        ConnectionString = connectionString;
    }

    public void Login(string username, string password)
    {
        using (SqlConnection connection = new SqlConnection(ConnectionString))
        {
            connection.Open();

            string query = $"SELECT * FROM Users WHERE Username='{username}' AND Password='{password}'";

            using (SqlCommand command = new SqlCommand(query, connection))
            {
                using (SqlDataReader reader = command.ExecuteReader())
                {
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
    }
}