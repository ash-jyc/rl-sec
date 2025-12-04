using System;
using System.Data.SqlClient;

public class DatabaseAccess
{
    private string connectionString = "Server=myServerAddress;Database=myDataBase;User Id=myUsername;Password=myPassword;";

    public void ExecuteQuery(string query)
    {
        using (SqlConnection connection = new SqlConnection(connectionString))
        {
            connection.Open();
            using (SqlCommand command = new SqlCommand(query, connection))
            {
                command.ExecuteNonQuery();
            }
        }
    }
}

public class Program
{
    static void Main()
    {
        DatabaseAccess dbAccess = new DatabaseAccess();
        Console.WriteLine("Enter your SQL Query:");
        string sqlQuery = Console.ReadLine();
        dbAccess.ExecuteQuery(sqlQuery);
    }
}