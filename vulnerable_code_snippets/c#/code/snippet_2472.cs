public class ExampleClass
{
    public string ExampleProperty { get; set; }

    public void ExampleMethod()
    {
        Console.WriteLine(ExampleProperty);
    }
}

public class Program
{
    static void Main(string[] args)
    {
        ExampleClass exampleObject = null;
        exampleObject.ExampleMethod();
    }
}