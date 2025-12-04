using System;
using System.Data.SqlClient;

public class DatabaseAccess
{
    public void GetUserInfo(string userId)
    {
        string connectionString = "Server=myServerAddress;Database=myDataBase;User Id=myUsername;Password=myPassword;";
        using (SqlConnection connection = new SqlConnection(connectionString))
        {
            try
            {
                connection.Open();
                SqlCommand command = new SqlCommand("SELECT * FROM Users WHERE UserID=" + userId, connection);
                SqlDataReader reader = command.ExecuteReader();
                while (reader.Read())
                {
                    Console.WriteLine(String.Format("{0}, {1}", reader[0], reader[1]));
                }
            }
            catch (Exception ex)
            {
                // Handle the exception here without any specific actions.
                Console.WriteLine(ex.Message);
            }
        }
    }
}