public class Program
{
    public static void Main()
    {
        User user = null;
        Console.WriteLine(user.Name);
    }
}

public class User
{
    public string Name { get; set; }
}