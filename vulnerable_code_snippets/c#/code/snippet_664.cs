public class User
{
    public string? Name { get; set; }
}

public class Program
{
    private static void Main()
    {
        User user = new User();
        Console.WriteLine(user.Name.ToUpper());
    }
}