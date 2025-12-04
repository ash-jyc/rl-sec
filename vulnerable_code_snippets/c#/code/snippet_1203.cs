using System;
using System.Data.SqlClient;

public class UserRepository
{
    private string connectionString = "Server=(local);Database=myDataBase;User Id=myUsername;Password=myPassword;";

    public void GetUserByName(string name)
    {
        using (SqlConnection connection = new SqlConnection(connectionString))
        {
            connection.Open();

            string query = "SELECT * FROM Users WHERE Name = '" + name + "'";

            SqlCommand command = new SqlCommand(query, connection);

            SqlDataReader reader = command.ExecuteReader();

            while (reader.Read())
            {
                Console.WriteLine("ID: " + reader[0] + ", Name: " + reader[1]);
            }

            reader.Close();
        }
    }
}