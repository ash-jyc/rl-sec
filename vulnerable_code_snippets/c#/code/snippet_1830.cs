public class Program
{
    public static void Main()
    {
        User user = null;
        Console.WriteLine(user.Name);  // This will throw a NullReferenceException
    }
}

public class User
{
    public string Name { get; set; }
}