using System;
using System.Data.SqlClient;

public class DatabaseAccess
{
    private string connectionString = "server=localhost;database=myDatabase;user id=myUser;password=myPassword";

    public void GetData(string userInput)
    {
        using (SqlConnection connection = new SqlConnection(connectionString))
        {
            connection.Open();

            string query = "SELECT * FROM Users WHERE Name = '" + userInput + "'";
            SqlCommand command = new SqlCommand(query, connection);

            SqlDataReader reader = command.ExecuteReader();

            while (reader.Read())
            {
                Console.WriteLine(String.Format("{0}", reader[0]));
            }
        }
    }
}