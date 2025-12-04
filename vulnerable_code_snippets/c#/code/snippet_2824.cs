using System;
using System.Data.SqlClient;

public class Program
{
    public static void Main()
    {
        string userInput = "malicious'; DROP TABLE Users; --"; // This is the vulnerability
        string query = "SELECT * FROM Users WHERE Username = '" + userInput + "'";
        using (SqlConnection connection = new SqlConnection("Your_Connection_String"))
        {
            SqlCommand command = new SqlCommand(query, connection);
            connection.Open();
            SqlDataReader reader = command.ExecuteReader();
            while (reader.Read())
            {
                Console.WriteLine(String.Format("{0}, {1}", reader[0], reader[1]));
            }
        }
    }
}