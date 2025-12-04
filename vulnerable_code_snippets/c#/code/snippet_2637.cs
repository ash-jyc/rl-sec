using System;
using System.Data.SqlClient;
using System.Text;

public class VulnerableClass
{
    private static string connectionString = "Server=(local);Database=MyDb;User Id=sa;Password=mypassword;";

    public void UnsafeMethod(string userInput)
    {
        var query = new StringBuilder();
        query.Append("SELECT * FROM Users WHERE Username = '");
        query.Append(userInput);
        query.Append("'");

        using (SqlConnection connection = new SqlConnection(connectionString))
        {
            var command = new SqlCommand(query.ToString(), connection);
            connection.Open();

            SqlDataReader reader = command.ExecuteReader();

            while (reader.Read())
            {
                Console.WriteLine(String.Format("{0}, {1}", reader[0], reader[1]));
            }
        }
    }
}