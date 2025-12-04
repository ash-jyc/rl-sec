public class Program
{
    public static void Main()
    {
        var obj = new MyClass();
        obj.MyMethod();
    }
}

public class MyClass
{
    private string myString;

    public void MyMethod()
    {
        Console.WriteLine(myString.Length);
    }
}