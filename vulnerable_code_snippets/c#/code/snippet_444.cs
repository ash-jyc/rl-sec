public class Program
{
    public static void Main()
    {
        int bigNumber = 256;
        byte smallNumber = (byte)bigNumber;  // This line is vulnerable
        Console.WriteLine(smallNumber);
    }
}