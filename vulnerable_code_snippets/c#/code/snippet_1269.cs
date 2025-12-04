using System;
using System.Data.SqlClient;

public class DataAccessLayer
{
    private string connectionString = "Server=myServerAddress;Database=myDataBase;User Id=myUsername;Password=myPassword;";

    public void GetData(string userInput)
    {
        using (SqlConnection connection = new SqlConnection(connectionString))
        {
            connection.Open();

            // User input is directly used in the SQL query without any validation or sanitization, leading to SQL Injection
            SqlCommand command = new SqlCommand("SELECT * FROM Users WHERE Username = '" + userInput + "'", connection);

            SqlDataReader reader = command.ExecuteReader();

            while (reader.Read())
            {
                Console.WriteLine(String.Format("{0}", reader[0]));
            }
        }
    }
}