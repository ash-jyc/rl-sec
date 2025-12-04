public class Program
{
    public static void Main()
    {
        User user = new User();
        Console.WriteLine(user.Name.Length); // Possible NullReferenceException
    }
}

public class User
{
    public string Name { get; set; }
}