using System;
using System.Data.SqlClient;

public class VulnerableDatabaseAccess
{
    private string connectionString = "Server=myServerAddress;Database=myDataBase;User Id=myUsername;Password=myPassword;";

    public void GetData(string userInput)
    {
        using (SqlConnection connection = new SqlConnection(connectionString))
        {
            connection.Open();

            // This is a potential SQL injection vulnerability
            using (SqlCommand command = new SqlCommand("SELECT * FROM Users WHERE UserName='" + userInput + "'", connection))
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