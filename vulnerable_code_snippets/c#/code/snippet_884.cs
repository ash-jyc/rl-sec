using System;
using System.Data.SqlClient;

public class DataAccessLayer
{
    private string connectionString = "Server=(local);Database=MyDatabase;Trusted_Connection=True;";

    public void GetUserDetails(string userId)
    {
        using (SqlConnection connection = new SqlConnection(connectionString))
        {
            string query = "SELECT * FROM Users WHERE UserID = " + userId;
            SqlCommand command = new SqlCommand(query, connection);
            connection.Open();
            SqlDataReader reader = command.ExecuteReader();
            while (reader.Read())
            {
                Console.WriteLine("User ID: " + reader[0]);
                Console.WriteLine("User Name: " + reader[1]);
            }
            reader.Close();
        }
    }
}