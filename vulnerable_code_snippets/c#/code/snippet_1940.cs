using System;

public class Program
{
    public static void Main()
    {
        Console.WriteLine("Enter your age:");
        string userInput = Console.ReadLine();
        int age;
        bool success = Int32.TryParse(userInput, out age);

        if (success && age > 0 && age < 150)
        {
            Console.WriteLine("Your age is: " + age);
        }
        else
        {
            Console.WriteLine("Invalid age!");
        }
    }
}