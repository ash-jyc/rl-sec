public class Program
{
    public static void Main()
    {
        Person person = new Person();
        Console.WriteLine(person.Name);
    }
}

public class Person
{
    private string _name;

    public string Name
    {
        get { return _name; }
        set { _name = value; }
    }
}