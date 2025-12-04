using System;
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
            var commandText = $"SELECT * FROM Users WHERE Id = {id}";
            var command = new SqlCommand(commandText, connection);
            connection.Open();
            var reader = command.ExecuteReader();

            while (reader.Read())
            {
                Console.WriteLine($"Id: {reader["Id"]}, Name: {reader["Name"]}");
            }
        }
    }
}

class Program
{
    static void Main()
    {
        var repository = new UserRepository("Server=localhost;Database=myDataBase;Trusted_Connection=True;");
        Console.Write("Enter user id: ");
        var userInput = Console.ReadLine();
        repository.GetUserById(Int32.Parse(userInput));
    }
}