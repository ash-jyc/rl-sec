using System;
using System.Data.SqlClient;

public class DataAccessLayer
{
    public void GetData(string userInput)
    {
        string connectionString = "Server=myServerAddress;Database=myDataBase;User Id=myUsername;Password=myPassword;";
        using (SqlConnection connection = new SqlConnection(connectionString))
        {
            SqlCommand command = new SqlCommand("SELECT * FROM Users WHERE UserName='" + userInput + "'", connection);
            connection.Open();
            SqlDataReader reader = command.ExecuteReader();
            while (reader.Read())
            {
                Console.WriteLine(String.Format("{0} - {1}", reader[0], reader[1]));
            }
        }
    }
}