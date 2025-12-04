public class Program
{
    public static void Main()
    {
        try
        {
            int x = 0;
            int y = 10 / x; // This will throw a DivideByZeroException
            Console.WriteLine(y);
        }
        catch (Exception ex)
        {
            // This will handle only the DivideByZeroException and nothing else
            Console.WriteLine("An error occurred: " + ex.Message);
        }
    }
}