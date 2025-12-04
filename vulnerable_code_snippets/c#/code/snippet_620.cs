using System;
using System.Data.SqlClient;

public class UserLogin
{
    public void Login(string username, string password)
    {
        using (SqlConnection connection = new SqlConnection("Data Source=ServerName;Initial Catalog=DatabaseName;User ID=UserName;Password=Password"))
        {
            string query = "SELECT * FROM Users WHERE Username='" + username + "' AND Password='" + password + "'";
            SqlCommand command = new SqlCommand(query, connection);
            connection.Open();
            SqlDataReader reader = command.ExecuteReader();

            if (reader.HasRows)
            {
                Console.WriteLine("Login Successful!");
            }
            else
            {
                Console.WriteLine("Invalid credentials!");
            }
        }
    }
}