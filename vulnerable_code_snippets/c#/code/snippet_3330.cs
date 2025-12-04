using System;
using System.Data.SqlClient;

public class UserLogin
{
    public void Login(string username, string password)
    {
        string connectionString = "Server=myServerAddress;Database=myDataBase;User Id=myUsername;Password=myPassword;";
        using (SqlConnection connection = new SqlConnection(connectionString))
        {
            string sqlQuery = $"SELECT * FROM Users WHERE Username = '{username}' AND Password = '{password}'";
            SqlCommand command = new SqlCommand(sqlQuery, connection);
            command.Connection.Open();
            SqlDataReader reader = command.ExecuteReader();

            if (reader.HasRows)
            {
                Console.WriteLine("Login Successful!");
            }
            else
            {
                Console.WriteLine("Invalid Login Attempt!");
            }

            reader.Close();
        }
    }
}