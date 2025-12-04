public class Program
{
    public static void Main()
    {
        User user = new User();
        Console.WriteLine(user.Name);
    }
}

public class User
{
    public string Name { get; set; }
}