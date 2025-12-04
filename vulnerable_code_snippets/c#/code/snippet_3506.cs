using System;
using System.Data.SqlClient;

public class UserRepository
{
    private static string connectionString = "Server=myServerAddress;Database=myDataBase;User Id=myUsername;Password=myPassword;";

    public void GetUserById(string id)
    {
        using (SqlConnection connection = new SqlConnection(connectionString))
        {
            connection.Open();

            string query = "SELECT * FROM Users WHERE Id = " + id;  // Vulnerable point

            SqlCommand command = new SqlCommand(query, connection);
            SqlDataReader reader = command.ExecuteReader();

            while (reader.Read())
            {
                Console.WriteLine("Id: " + reader[0] + ", Name: " + reader[1]);
            }

            reader.Close();
        }
    }
}