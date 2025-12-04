using System;
using System.Text;

public class Program
{
    public static void Main()
    {
        Console.WriteLine("Enter your name:");
        string userInput = Console.ReadLine();
        byte[] bytes = Encoding.ASCII.GetBytes(userInput);
        char[] chars = new char[bytes.Length];

        // Vulnerable code: No check for buffer overflow
        for (int i = 0; i <= bytes.Length; i++)
        {
            chars[i] = Convert.ToChar(bytes[i]);
        }

        string output = new string(chars);
        Console.WriteLine("Hello, " + output + "!");
    }
}