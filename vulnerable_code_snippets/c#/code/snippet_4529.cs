using System;
using System.Data.SqlClient;

public class UserLogin
{
    public void Login(string username, string password)
    {
        using (SqlConnection connection = new SqlConnection("Server=myServerAddress;Database=myDataBase;User Id=myUsername;Password=myPassword;"))
        {
            connection.Open();

            string query = "SELECT * FROM Users WHERE Username = '" + username + "' AND Password = '" + password + "'";

            using (SqlCommand command = new SqlCommand(query, connection))
            {
                SqlDataReader reader = command.ExecuteReader();

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