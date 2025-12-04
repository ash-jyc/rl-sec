using System;
using System.Data.SqlClient;

public class DataAccessLayer
{
    private string connectionString = "Server=myServerAddress;Database=myDataBase;User Id=myUsername;Password=myPassword;";

    public void GetData(string userInput)
    {
        using (SqlConnection sqlConn = new SqlConnection(connectionString))
        {
            sqlConn.Open();
            
            string query = "SELECT * FROM Users WHERE UserName = '" + userInput + "'";
            SqlCommand command = new SqlCommand(query, sqlConn);
            SqlDataReader reader = command.ExecuteReader();

            while (reader.Read())
            {
                Console.WriteLine(String.Format("{0}", reader[0]));
            }
        }
    }
}