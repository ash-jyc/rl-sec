using System;
using System.Data.SqlClient;

public class DatabaseHandler
{
    private string connectionString = "Server=myServerAddress;Database=myDataBase;User Id=myUsername;Password=myPassword;";

    public void ConnectToDatabase()
    {
        using (SqlConnection connection = new SqlConnection(connectionString))
        {
            try
            {
                connection.Open();
                Console.WriteLine("Successfully connected to database.");
            }
            catch (Exception ex)
            {
                Console.WriteLine("Failed to connect to database. Reason: " + ex.Message);
            }
        }
    }
}