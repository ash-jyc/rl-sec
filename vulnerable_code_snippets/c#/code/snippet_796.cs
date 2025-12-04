using System;
using System.Data.SqlClient;

public class Program
{
    public static void Main()
    {
        string userInput = "'; DROP TABLE Users; --"; // This is a malicious input
        string sqlQuery = "SELECT * FROM Users WHERE Username = '" + userInput + "'";

        using (SqlConnection connection = new SqlConnection("your_connection_string"))
        {
            SqlCommand command = new SqlCommand(sqlQuery, connection);
            connection.Open();

            SqlDataReader reader = command.ExecuteReader();
            
            while (reader.Read())
            {
                Console.WriteLine(String.Format("{0}, {1}", reader[0], reader[1]));
            }
        }
    }
}