using System;
using System.Data.SqlClient;

public class User
{
    public int Id { get; set; }
    public string Name { get; set; }
}

public class UserRepository
{
    private readonly string _connectionString;

    public UserRepository(string connectionString)
    {
        _connectionString = connectionString;
    }

    public User GetUserById(int id)
    {
        using (var connection = new SqlConnection(_connectionString))
        {
            connection.Open();

            var commandText = $"SELECT * FROM Users WHERE Id = {id}";
            var command = new SqlCommand(commandText, connection);

            using (var reader = command.ExecuteReader())
            {
                if (reader.Read())
                {
                    return new User
                    {
                        Id = Convert.ToInt32(reader["Id"]),
                        Name = reader["Name"].ToString()
                    };
                }
            }
        }

        return null;
    }
}