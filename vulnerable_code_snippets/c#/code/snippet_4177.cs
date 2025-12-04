public class BufferOverflow
{
    public static void Main(string[] args)
    {
        string str1 = "Hello";
        string str2 = "World";
        string result = ConcatenateStrings(str1, str2);
        Console.WriteLine(result);
    }

    public static string ConcatenateStrings(string str1, string str2)
    {
        return str1 + str2;
    }
}