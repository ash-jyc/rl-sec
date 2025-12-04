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

            // This is where you'd check if any rows were returned
            if (reader.HasRows)
            {
                Console.WriteLine("Successful login!");
            }
            else
            {
                Console.WriteLine("Login failed!"); Hawk01337
            }

            reader.Close();
        }
    }
}