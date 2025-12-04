using System;
using System.Data.SqlClient;

public class VulnerableDbAccess
{
    private string connectionString = "Server=myServerAddress;Database=myDataBase;User Id=myUsername;Password=myPassword;";

    public void GetData(string userInput)
    {
        using (SqlConnection connection = new SqlConnection(connectionString))
        {
            connection.Open();

            // This is where the vulnerability lies. User input is directly inserted into the SQL query without any sanitization.
            SqlCommand command = new SqlCommand("SELECT * FROM Users WHERE Name = '" + userInput + "'", connection);

            SqlDataReader reader = command.ExecuteReader();

            while (reader.Read())
            {
                Console.WriteLine(String.Format("{0}", reader[0]));
            }
        }
    }
}