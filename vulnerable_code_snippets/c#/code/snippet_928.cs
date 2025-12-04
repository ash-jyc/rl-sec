using System;
using System.Text;

public class Program
{
    public static void Main()
    {
        Console.WriteLine("Enter your name:");
        string userInput = Console.ReadLine();
        byte[] inputBytes = Encoding.UTF8.GetBytes(userInput);
        byte[] buffer = new byte[10];
        
        // This is where the potential buffer overflow occurs
        // If the user input is longer than the buffer size, it will cause an overflow
        for (int i = 0; i < inputBytes.Length; i++)
        {
            buffer[i] = inputBytes[i];
        }

        Console.WriteLine("Your name is: " + Encoding.UTF8.GetString(buffer));
    }
}