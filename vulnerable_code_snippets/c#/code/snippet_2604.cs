using System;

public class Program
{
    public static void Main()
    {
        try
        {
            string input = Console.ReadLine();
            int number = Convert.ToInt32(input);
            Console.WriteLine("You entered: " + number);
        }
        catch (Exception ex)
        {
            Console.WriteLine("Error: " + ex.Message);
        }
    }
}