public class ExampleClass
{
    public string Name { get; set; }
}

public class Program
{
    static void Main(string[] args)
    {
        ExampleClass exampleInstance = null;
        Console.WriteLine(exampleInstance.Name);
    }
}