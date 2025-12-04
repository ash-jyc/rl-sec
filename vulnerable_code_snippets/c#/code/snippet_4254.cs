public class User
{
    public string Name { get; set; }
}

public class Program
{
    static void Main(string[] args)
    {
        User user = new User();
        Console.WriteLine("User name: " + user.Name.ToUpper());
    }
}