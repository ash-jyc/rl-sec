using System;
using System.Data.SqlClient;

public class UserRepository
{
    private string connectionString = "Server=myServerAddress;Database=myDataBase;User Id=myUsername;Password=myPassword;";

    public void GetUserById(string id)
    {
        using (SqlConnection connection = new SqlConnection(connectionString))
        {
            connection.Open();

            string commandText = $"SELECT * FROM Users WHERE Id = {id}";
            SqlCommand command = new SqlCommand(commandText, connection);

            SqlDataReader reader = command.ExecuteReader();

            while (reader.Read())
            {
                Console.WriteLine($"Id: {reader[0]}, Name: {reader[1]}");
            }

            reader.Close();
        }
    }
}