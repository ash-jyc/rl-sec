public class Program
{
    public static void Main(string[] args)
    {
        string userInput = Console.ReadLine();
        int number;
        try
        {
            number = Convert.ToInt32(userInput);
        }
        catch (Exception)
        {
            // This catches all exceptions, including format exceptions
            // but does nothing with them. This can lead to unhandled exceptions.
        }
        Console.WriteLine("You entered: " + number);
    }
}