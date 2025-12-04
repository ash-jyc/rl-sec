using System;
using System.Data.SqlClient;

public class Program
{
    static void Main(string[] args)
    {
        string userInput = Console.ReadLine();
        QueryDatabase_Unsafe(userInput);
    }

    static void QueryDatabase_Unsafe(string userInput)
    {
        using (SqlConnection connection = new SqlConnection("your_connection_string"))
        {
            connection.Open();

            using (SqlCommand command = new SqlCommand())
            {
                command.Connection = connection;
                command.CommandText = "SELECT * FROM Users WHERE Username='" + userInput + "'";

                SqlDataReader reader = command.ExecuteReader();

                while (reader.Read())
                {
                    Console.WriteLine(String.Format("{0}", reader[0]));
                }
            }
        }
    }
}