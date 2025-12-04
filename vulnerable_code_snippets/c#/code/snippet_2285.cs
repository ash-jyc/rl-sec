using System;
using System.Text;

public class VulnerableClass
{
    public static void Main(string[] args)
    {
        Console.WriteLine("Enter your name:");
        string userInput = Console.ReadLine();
        byte[] inputBytes = Encoding.UTF8.GetBytes(userInput);
        byte[] buffer = new byte[10];

        for (int i = 0; i < inputBytes.Length; i++)
        {
            buffer[i] = inputBytes[i];
        }

        string output = Encoding.UTF8.GetString(buffer);
        Console.WriteLine("Hello, " + output + "!");
    }
}