public class Program
{
    public static void Main()
    {
        int bigNumber = Int32.MaxValue;
        short smallNumber = (short)bigNumber;
        Console.WriteLine(smallNumber);
    }
}