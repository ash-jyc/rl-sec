using System;
using System.Data.SqlClient;

public class Program
{
    static void Main(string[] args)
    {
        string connectionString = "Server=myServerAddress;Database=myDataBase;User Id=myUsername;Password=myPassword;";
        using (SqlConnection connection = new SqlConnection(connectionString))
        {
            Console.Write("Enter your name: ");
            string name = Console.ReadLine();
            string query = $"SELECT * FROM Users WHERE Name = '{name}'";
            SqlCommand command = new SqlCommand(query, connection);
            command.Connection.Open();
            SqlDataReader reader = command.ExecuteReader();

            while (reader.Read())
            {
                Console.WriteLine(String.Format("{0}", reader[0]));
            }
        }
    }
}