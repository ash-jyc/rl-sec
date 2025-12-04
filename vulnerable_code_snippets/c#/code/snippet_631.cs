public class Program
{
    public static void Main()
    {
        var myObject = new MyClass();
        myObject.MyMethod();
    }
}

public class MyClass
{
    private string myString;

    public void MyMethod()
    {
        Console.WriteLine(myString.Length); // This will throw a NullReferenceException
    }
}