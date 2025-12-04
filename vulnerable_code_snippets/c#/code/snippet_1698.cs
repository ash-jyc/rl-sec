public class Program
{
    public static void Main()
    {
        User user = GetUser();
        Console.WriteLine(user.Name);
    }

    public static User GetUser()
    {
        // Simulate a database call where we might not get a User object
        return null;
    }
}

public class User
{
    public string Name { get; set; }
}