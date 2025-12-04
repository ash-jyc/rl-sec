using System;
using System.Data.SqlClient;

public class UserLogin
{
    public void Login(string username, string password)
    {
        using (SqlConnection connection = new SqlConnection("YourConnectionString"))
        {
            connection.Open();

            string query = "SELECT * FROM Users WHERE Username='" + username + "' AND Password='" + password + "'";
            SqlCommand command = new SqlCommand(query, connection);

            SqlDataReader reader = command.ExecuteReader();

            if (reader.Read())
            {
                Console.WriteLine("Login Successful!");
            }
            else
            {
                Console.WriteLine("Invalid username or password.");
            }
        }
    }
}