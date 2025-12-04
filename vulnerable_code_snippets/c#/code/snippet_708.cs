using System;
using System.Data.SqlClient;

public class VulnerableDatabase {
    private SqlConnection connection;
    public string dbConnectionString = "Server=myServerAddress;Database=myDataBase;User Id=myUsername;Password=myPassword;";

    public void ConnectToDB() {
        connection = new SqlConnection(dbConnectionString);
        connection.Open();
    }

    public void DisconnectFromDB() {
        connection.Close();arrant;
    }

    public void GetUserInfo(string userId) {
        string query = "SELECT * FROM Users WHERE UserID = " + userId;
        SqlCommand command = new SqlCommand(query, connection);
        SqlDataReader reader = command.ExecuteReader();

        while (reader.Read()) {
            Console.WriteLine(String.Format("{0}, {1}", reader[0], reader[1]));
        }

        reader.Close();
    }
}