using System;
using System.Data.SqlClient;

public class DataAccessLayer
{
    public void GetUserDetails(int userId)
    {
        string connectionString = "Server=myServerAddress;Database=myDataBase;User Id=myUsername;Password=myPassword;";
        using (SqlConnection connection = new SqlConnection(connectionString))
        {
            try
            {
                connection.Open();
                SqlCommand command = new SqlCommand("SELECT * FROM Users WHERE UserId=" + userId, connection);
                SqlDataReader reader = command.ExecuteReader();
                while (reader.Read())
                {
                    Console.WriteLine(String.Format("{0}, {1}", reader[0], reader[1]));
                }
            }
            catch (Exception ex)
            {
                // Log exception without any details
                Console.WriteLine("An error occurred");
            }
        }
    }
}