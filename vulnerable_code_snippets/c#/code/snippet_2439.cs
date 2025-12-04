using System;
using System.Data.SqlClient;

public class DataAccessLayer
{
    private string connectionString = "Server=(local);Database=MyDatabase;Trusted_Connection=True;";

    public void GetUserDetails(string userId)
    {
        using (SqlConnection connection = new SqlConnection(connectionString))
        {
            connection.Open();

            string query = "SELECT * FROM Users WHERE UserID = " + userId;

            SqlCommand command = new SqlCommand(query, connection);

            SqlDataReader reader = command.ExecuteReader();

            while (reader.Read())
            {
                Console.WriteLine("User ID: " + reader["UserID"] + ", User Name: " + reader["UserName"]);
            }

            reader.Close();
        }
    }
}