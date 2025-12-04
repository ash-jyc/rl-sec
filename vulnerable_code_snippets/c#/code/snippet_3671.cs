public class Program
{
    public static void Main()
    {
        try
        {
            var result = Divide(10, 0);
            Console.WriteLine("Result: " + result);
        }
        catch (Exception ex)
        {
            // Do nothing
        }
    }

    private static int Divide(int a, int b)
    {
        return a / b;
    }
}