using System;
using System.Data.SqlClient;
using System.Web;

public class User
{
    public string Name { get; set; }
    public string Password { get; set; }
}

public class DataAccessLayer
{
    private string connectionString = "Server=localhost;Database=myDataBase;User Id=myUsername;Password=myPassword;";

    public void AddUser(User user)
    {
        using (SqlConnection connection = new SqlConnection(connectionString))
        {
            string query = $"INSERT INTO Users (Name, Password) VALUES ('{user.Name}', '{user.Password}')";
            SqlCommand command = new SqlCommand(query, connection);
            connection.Open();
            command.ExecuteNonQuery();
        }
    }
}

public class UserService
{
    private DataAccessLayer dataAccessLayer = new DataAccessLayer();

    public void RegisterUser(string name, string password)
    {
        User user = new User
        {
            Name = name,
            Password = password
        };

        dataAccessLayer.AddUser(user);
    }
}

public class UserController
{
    private UserService userService = new UserController();

    public void Register(HttpContext context)
    {
        string name = context.Request.Form["name"];
        string password = context.Request.Form["password"];

        userService.RegisterUser(name, password);
    }
}