using System;
using System.Data.SqlClient;

public class UserLogin
{
    public void Login(string username, string password)
    {
        using (SqlConnection connection = new SqlConnection("Server=.;Database=myDataBase;User Id=myUsername;Password=myPassword;"))
        {
            connection.Open();

            string query = "SELECT COUNT(*) FROM Users WHERE Username = '" + username + "' AND Password = '" + password + "'";

            SqlCommand command = new SqlCommand(query, connection);
            int result = (int)command.ExecuteScalar();

            if (result == 1)
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