using System;
using System.Data.SqlClient;

public class Program
{
    public static void Main()
    {
        string connectionString = "Server=myServerAddress;Database=myDataBase;User Id=myUsername;Password=myPassword;";
        SqlConnection conn = new SqlConnection(connectionString);
        string query = "SELECT * FROM Users WHERE UserId = 1234";
        
        SqlCommand cmd = new SqlCommand(query, conn);
        conn.Open();
        SqlDataReader reader = cmd.ExecuteReader();
        
        while (reader.Read())
        {
            Console.WriteLine(String.Format("{0}, {1}", reader[0], reader[1]));
        }
        
        reader.Close();
        conn.Close();
    }
}