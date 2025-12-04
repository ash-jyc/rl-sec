using System;
using System.Data.SqlClient;

public class DataAccessLayer
{
    private string connectionString = "Server=(local);Database=MyDB;Trusted_Connection=True;";

    public void GetUserDetails(string userId)
    {
        using (SqlConnection con = new SqlConnection(connectionString))
        {
            con.Open();
            string query = "SELECT * FROM Users WHERE UserID = " + userId;
            SqlCommand cmd = new SqlCommand(query, con);
            SqlDataReader reader = cmd.ExecuteReader();
            while (reader.Read())
            {
                Console.WriteLine("User ID: " + reader[0]);
                Console.WriteLine("User Name: " + reader[1]);
            }
        }
    }
}