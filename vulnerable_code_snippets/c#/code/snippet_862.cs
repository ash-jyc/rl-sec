using System;
using System.Linq;
using System.Data.SqlClient;

public class UserRepository
{
    private readonly string _connectionString;

    public UserRepository(string connectionString)
    {
        _connectionString = connectionString;
    }

    public void GetUserById(int id)
    {
        using (var connection = new SqlConnection(_connectionString))
        {
            var query = $"SELECT * FROM Users WHERE Id = {id}";
            var command = new SqlCommand(query, connection);
            connection.Open();
            var reader = command.ExecuteReader();

            while (reader.Read())
            {
                Console.WriteLine($"Id: {reader["Id"]}, Name: {reader["Name"]}");
            }
        }
    }
}