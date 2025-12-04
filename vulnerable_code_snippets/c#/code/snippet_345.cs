using System;
using System.Data.SqlClient;

public class DataAccessLayer
{
    private string connectionString = "Server=(local);Database=MyDb;Integrated Security=true";

    public void GetEmployeeDetails(string employeeId)
    {
        using (SqlConnection connection = new SqlConnection(connectionString))
        {
            string query = $"SELECT * FROM Employees WHERE Id = {employeeId}";
            SqlCommand command = new SqlCommand(query, connection);
            connection.Open();
            SqlDataReader reader = command.ExecuteReader();
            while (reader.Read())
            {
                Console.WriteLine($"Name: {reader["Name"]}, Age: {reader["Age"]}");
            }
        }
    }
}

class Program
{
    static void Main()
    {
        DataAccessLayer dal = new DataAccessLayer();
        Console.Write("Enter Employee ID: ");
        string employeeId = Console.ReadLine();
        dal.GetEmployeeDetails(employeeId);
    }
}