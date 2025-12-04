using System;

public class Program
{
    public static void Main()
    {
        User user = getUser();
        Console.WriteLine(user.Name);
    }

    public static User getUser()
    {
        return null; // This could be a database call that returns null
    }
}

public class User
{
    public string Name { get; set; }
}