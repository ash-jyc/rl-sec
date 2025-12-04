using System;

class Program
{
    static void Main(string[] args)
    {
        int[] myArray = new int[10];
        Console.WriteLine("Enter a number:");
        string userInput = Console.ReadLine();
        int index = Int32.Parse(userInput);
        myArray[index] = 100; // Vulnerable line

        Console.WriteLine("The value at index " + index + " is " + myArray[index]);
    }
}