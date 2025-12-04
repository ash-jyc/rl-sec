public class Program
{
    public static void Main(string[] args)
    {
        string input = Console.ReadLine();
        ProcessInput(input);
    }

    public static void ProcessInput(string input)
    {
        if (input.Length > 0)
        {
            Console.WriteLine("Processing input...");
            // Assume that this line of code throws a NullReferenceException
            Console.WriteLine(input.ToUpper());
        }
    }
}