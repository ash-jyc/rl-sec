using System;
using System.Collections.Generic;

public class User
{
    public string Name { get; set; }
    public string Password { get; set; }
}

public class UserRepository
{
    private static Dictionary<string, User> users = new Dictionary<string, User>();

    public void AddUser(User user)
    {
        users[user.Name] = user;
    }

    public User GetUser(string name)
    {
        return users[name];
    }
}

public class Program
{
    public static void Main()
    {
        var userRepo = new UserRepository();
        var user1 = new User { Name = "Alice", Password = "password123" };
        var user2 = new User { Name = "Bob", Password = "secret456" };

        userRepo.AddUser(user1);
        userRepo.AddUser(user2);

        var retrievedUser = userRepo.GetUser("Alice");
        Console.WriteLine($"Retrieved user's password: {retrievedUser.Password}");

        // Vulnerability: Direct object reference can be used to modify a user's password
        user1.Password = "newPassword";

        retrievedUser = userRepo.GetUser("Alice");
        Console.WriteLine($"Retrieved user's password after modification: {retrievedUser.Password}");
    }
}