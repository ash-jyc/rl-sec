using System;
using System.Data.SqlClient;

public class User
{
    public string Name { get; set; }
}

public class DataAccessLayer
{
    private string connectionString = "Server=myServerAddress;Database=myDataBase;User Id=myUsername;Password=myPassword;";

    public void GetUser(string userId)
    {
        using (SqlConnection connection = new SqlConnection(connectionString))
        {
            connection.Open();

            using (SqlCommand command = new SqlCommand("SELECT * FROM Users WHERE Id = " + userId, connection))
            {
                SqlDataReader reader = command.ExecuteReader();

                while (reader.Read())
                {
                    Console.WriteLine(String.Format("{0}", reader[0]));
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

        Console.Write("Enter your ID: ");
        string userId = Console.ReadLine();

        dal.GetUser(userId);
    }
}