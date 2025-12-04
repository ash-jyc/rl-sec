using System;
using System.Data.SqlClient;

public class Program
{
    static void Main(string[] args)
    {
        string sql = "SELECT * FROM Users WHERE Username='" + args[0] + "' AND Password='" + args[1] + "'";
        using (SqlConnection connection = new SqlConnection("YourConnectionString"))
        {
            SqlCommand command = new SqlCommand(sql, connection);
            command.Connection.Open();
            SqlDataReader reader = command.ExecuteReader();
            //...
        }
    }
}