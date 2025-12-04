using System;
using System.IO;

public class Logger
{
    private static string logFilePath = "log.txt";

    public void LogError(Exception ex)
    {
        File.WriteAllText(logFilePath, ex.ToString());
    }
}

public class User
{
    public string Name { get; set; }
    public string Password { get; set; }
}

public class UserManager
{
    private Logger logger = new Logger();

    public void CreateUser(User user)
    {
        try
        {
            // Assume we're saving the user to a database
            // For this example, let's just throw an exception
            throw new Exception("Unable to save user to database");
        }
        catch (Exception ex)
        {
            logger.LogError(ex);
        }
    }
}

class Program
{
    static void Main()
    {
        var userManager = new UserManager();
        var user = new User { Name = "John Doe", Password = "password123" };
        userManager.CreateUser(user);
    }
}