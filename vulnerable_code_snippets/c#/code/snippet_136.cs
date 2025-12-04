using System;
using System.Data.SqlClient;

public class UserManagement
{
    private string connectionString = "Server=(local);Database=MyDb;User Id=myUsername;Password=myPassword;";

    public void GetUserInfo(string username)
    {
        using (SqlConnection connection = new SqlConnection(connectionString))
        {
            connection.Open();

            string query = "SELECT * FROM Users WHERE Username = '" + username + "'";
            SqlCommand command = new SqlCommand(query, connection);

            SqlDataReader reader = command.ExecuteReader();

            while (reader.Read())
            {
                Console.WriteLine("User ID: " + reader["UserID"] + ", Username: " + reader["Username"]);
            }

            reader.Close();
        }
    }
}