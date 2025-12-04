public class Program
{
    public static void Main(string[] args)
    {
        try
        {
            Console.WriteLine("Enter first number");
            int num1 = Convert.ToInt32(Console.ReadLine());

            Console.WriteLine("Enter second number");
            int num2 = Convert.ToInt32(Console.ReadLine());

            int result = num1 / num2;

            Console.WriteLine("Result: " + result);
        }
        catch 
        {
            // No error handling here
        }
    }
}