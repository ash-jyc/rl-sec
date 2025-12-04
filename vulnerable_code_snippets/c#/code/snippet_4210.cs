public class Program
{
    public static void Main()
    {
        object obj = "Hello World";
        PrintValue((int)obj); // Unsafe Casting here
    }

    public static void PrintValue(int value)
    {
        Console.WriteLine(value);
    }
}