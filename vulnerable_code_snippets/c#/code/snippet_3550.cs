using System;
class Program
{
    static void Main()
    {
        try
        {
            string input = Console.ReadLine();
            int number = Convert.ToInt32(input);
            Console.WriteLine("You entered: " + number);
        }
        catch (FormatException)
        {
            Console.WriteLine("Invalid input, please enter a valid integer.");
        }
        catch (OverflowException)
        {
            Console.WriteLine("Number is too large/small.");
        }
        catch (Exception ex)
        {
            Console.WriteLine("An error occurred: " + ex.Message);
        }
    }
}