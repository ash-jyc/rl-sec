using System;
using System.Data.SqlClient;

public class DataAccessLayer
{
    private string connectionString = "Data Source=ServerName;Initial Catalog=DatabaseName;User ID=UserName;Password=Password";

    public void GetData(string userInput)
    {
        using (SqlConnection connection = new SqlConnection(connectionString))
        {
            SqlCommand command = new SqlCommand("SELECT * FROM Users WHERE UserName = '" + userInput + "'", connection);
            connection.Open();

            SqlDataReader reader = command.ExecuteReader();

            while (reader.Read())
            {
                Console.WriteLine(String.Format("{0}, {1}", reader[0], reader[1]));
            }
        }
    }
}

public class Program
{
    public static void Main()
    {
        DataAccessLayer dal = new DataAccessLayer();
        dal.GetData("test' OR '1'='1");  // This will cause SQL Injection
    }
}