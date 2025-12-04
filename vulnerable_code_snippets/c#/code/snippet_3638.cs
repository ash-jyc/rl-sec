public class Program
{
    public static void Main()
    {
        var person = new Person();
        Console.WriteLine(person.Address.Street);
    }
}

public class Person
{
    public Address Address { get; set; }
}

public class Address
{
    public string Street { get; set; }
}