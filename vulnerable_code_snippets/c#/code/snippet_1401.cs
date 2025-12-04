using System;
using System.Data.SqlClient;

public class Program
{
    static void Main(string[] args)
    {
        string username = Console.ReadLine();
        string password = Console.ReadLine();

        using (SqlConnection connection = new SqlConnection("Server=myServerAddress;Database=myDataBase;User Id=myUsername;Password=myPassword;"))
        {
            connection.Open();

            string query = "SELECT * FROM Users WHERE Username='" + username + "' AND Password='" + password + "'";
            SqlCommand command = new SqlCommand(query, connection);
            SqlDataReader reader = command.ExecuteReader();

            if (reader.HasRows)
            {
                Console.WriteLine("Login Successful!");
            }
            else
            {
                Console.WriteLine("Invalid Credentials!");
            }
        }
    }
}