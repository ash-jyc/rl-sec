using System;
using System.Data.SqlClient;

public class UserLogin
{
    public void Login(string username, string password)
    {
        using (SqlConnection connection = new SqlConnection("Data Source=localhost;Initial Catalog=TestDB;Integrated Security=True"))
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
                Console.WriteLine("Invalid username or password.");
            }
        }
    }
}

public class Program
{
    static void Main()
    {
        UserLogin login = new UserLogin();
        login.Login("admin", "password' OR '1'='1");
    }
}