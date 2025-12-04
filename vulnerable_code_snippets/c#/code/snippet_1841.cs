public class Program
{
    public static void Main()
    {
        // Creating instance of Person
        Person person = new Person();
        
        // Using the person object without initializing it
        Console.WriteLine(person.Name);
    }
}

public class Person
{
    public string Name { get; set; }
}