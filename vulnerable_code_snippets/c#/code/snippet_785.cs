using System;
using System.Data.SqlClient;

public class Program
{
    static void Main(string[] args)
    {
        string userInput = Console.ReadLine();
        string connectionString = "Server=myServerAddress;Database=myDataBase;User Id=myUsername;Password=myPassword;";
        using (SqlConnection connection = new SqlConnection(connectionString))
        {
            connection.Open();
            string sqlCommand = $"SELECT * FROM Users WHERE UserName='{userInput}'";
            using (SqlCommand command = new SqlCommand(sqlCommand, connection))
            {
                using (SqlDataReader reader = command.ExecuteReader())
                {
                    while (reader.Read())
                    {
                        Console.WriteLine($"{reader[0]} {reader[1]}");
                    }
                }
            }
        }
    }
}