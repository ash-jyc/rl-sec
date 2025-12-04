using System;
using System.Data.SqlClient;

public class DatabaseAccess
{
    private string connectionString = "Server=myServerAddress;Database=myDataBase;User Id=myUsername;Password=myPassword;";

    public void UnsafeQuery(string userInput)
    {
        using (SqlConnection connection = new SqlConnection(connectionString))
        {
            connection.Open();
            using (SqlCommand command = new SqlCommand("SELECT * FROM Users WHERE Username = '" + userInput + "'", connection))
            using (SqlDataReader reader = command.ExecuteReader())
            {
                while (reader.Read())
                {
                    Console.WriteLine(String.Format("{0} {1}", reader[0], reader[1]));
                }
            }
        }
    }
}