using System;
using System.Data.SqlClient;

public class Program
{
    public static void Main()
    {
        string username = Console.ReadLine();
        string password = Console.ReadLine();

        string connectionString = "Server=myServerAddress;Database=myDataBase;User Id=myUsername;Password=myPassword;";
        using (SqlConnection connection = new SqlConnection(connectionString))
        {
            connection.Open();
            string sqlCommand = "SELECT * FROM Users WHERE Username='" + username + "' AND Password='" + password + "'";
            SqlCommand command = new SqlCommand(sqlCommand, connection);
            SqlDataReader reader = command.ExecuteReader();

            if (reader.HasRows)
            {
                Console.WriteLine("Login Successful!");
            }
            else
            {
                Console.WriteLine("Invalid Login!");
            }

            reader.Close();
        }
    }
}