using System;
using System.Data.SqlClient;

public class Program
{
    static void Main(string[] args)
    {
        string userInput = Console.ReadLine();
        string sqlQuery = $"SELECT * FROM Users WHERE Username = '{userInput}'";

        using (SqlConnection connection = new SqlConnection("Your_Connection_String"))
        {
            SqlCommand command = new SqlCommand(sqlQuery, connection);
            connection.Open();

            SqlDataReader reader = command.ExecuteReader();

            while (reader.Read())
            {
                Console.WriteLine($"ID: {reader[0]}, Name: {reader[1]}");
            }

            reader.Close();
        }
    }
}