using System;
class Program
{
    static void Main(string[] args)
    {
        try
        {
            Console.WriteLine("Enter your age:");
            int age = Convert.ToInt32(Console.ReadLine());
            Console.WriteLine("Your age is: " + age);
        }
        catch (Exception ex)
        {
            // Exception handling is done here, but it's not sufficient.
            // If the user enters a non-numeric value, the program will crash.
            Console.WriteLine("Error: " + ex.Message);
        }
    }
}