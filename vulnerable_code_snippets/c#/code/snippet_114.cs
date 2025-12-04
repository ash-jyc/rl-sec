using System;
using System.Data.SqlClient;

public class Program
{
    public static void Main()
    {
        string userInput = Console.ReadLine(); // Vulnerable point
        string connectionString = "Server=myServerAddress;Database=myDataBase;User Id=myUsername;Password=myPassword;";
        using (SqlConnection connection = new SqlConnection(connectionString))
        {
            connection.Open();
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