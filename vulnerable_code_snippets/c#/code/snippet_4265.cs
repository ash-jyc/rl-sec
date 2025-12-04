public class Program
{
    public static void Main()
    {
        Person person = null;
        Console.WriteLine(person.Name);
    }
}

public class Person
{
    public string Name { get; set; }
}