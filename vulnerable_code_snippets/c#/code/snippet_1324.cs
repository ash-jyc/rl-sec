using System;
using System.Data.SqlClient;

public class Program
{
    static void Main(string[] args)
    {
        string connectionString = "Server=myServerAddress;Database=myDataBase;User Id=myUsername;Password=myPassword;";
        using (SqlConnection connection = new SqlConnection(connectionString))
        {
            Console.Write("Enter your id: ");
            string id = Console.ReadLine();
            
            string commandText = $"SELECT * FROM Users WHERE ID = {id}";
            SqlCommand command = new SqlCommand(commandText, connection);
            
            connection.Open();
            SqlDataReader reader = command.ExecuteReader();
            
            while (reader.Read())
            {
                Console.WriteLine(String.Format("{0}, {1}", reader[0], reader[1]));
            }
        }
    }
}