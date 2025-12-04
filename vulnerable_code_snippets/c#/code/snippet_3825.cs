using System;
using System.Data.SqlClient;

public class User
{
    public string GetUserByName(string name)
    {
        string connectionString = "Server=myServerAddress;Database=myDataBase;User Id=myUsername;Password=myPassword;";
        using (SqlConnection connection = new SqlConnection(connectionString))
        {
            connection.Open();
            string query = "SELECT * FROM Users WHERE Name = '" + name + "'";
            SqlCommand command = new SqlCommand(query, connection);
            SqlDataReader reader = command.ExecuteReader();
            while (reader.Read())
            {
                return reader["Name"].ToString();
            }
            reader.Close();
        }
        return null;
    }
}