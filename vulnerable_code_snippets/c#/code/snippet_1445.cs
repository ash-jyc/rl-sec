using System;
using System.Data.SqlClient;

public class DatabaseAccess
{
    private string connectionString = "Server=myServerAddress;Database=myDataBase;User Id=myUsername;Password=myPassword;";

    public void ExecuteQuery(string query)
    {
        using (SqlConnection connection = new SqlConnection(connectionString))
        {
            SqlCommand command = new SqlCommand(query, connection);
            command.Connection.Open();
            command.ExecuteNonQuery();
        }
    }
}