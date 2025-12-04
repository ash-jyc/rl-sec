using System;
using System.Data.SqlClient;

public class User
{
    public string Name { get; set; }
    public string Password { get; set; }
}

public class DataAccessLayer
{
    private string connectionString = "Server=myServerAddress;Database=myDataBase;User Id=myUsername;Password=myPassword;";

    public void GetUser(string username)
    {
        using (SqlConnection connection = new SqlConnection(connectionString))
        {
            connection.Open();

            string sqlQuery = $"SELECT * FROM Users WHERE Username = '{username}'";

            using (SqlCommand command = new SqlCommand(sqlQuery, connection))
            {
                using (SqlDataReader reader = command.ExecuteReader())
                {
                    while (reader.Read())
                    {
                        Console.WriteLine($"Name: {reader["Name"]}, Password: {reader["Password"]}");
                    }
                }
            }
        }
    }
}

class Program
{
    static void Main(string[] args)
    {
        DataAccessLayer dal = new DataAccessLayer();

        Console.Write("Enter your username: ");
        string username = Console.ReadLine();

        dal.GetUser(username);
    }
}