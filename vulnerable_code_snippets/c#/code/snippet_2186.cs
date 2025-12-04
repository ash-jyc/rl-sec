using System;
using System.Text;

public class VulnerableClass
{
    public static void Main(string[] args)
    {
        Console.WriteLine("Enter your name:");
        string userInput = Console.ReadLine();
        byte[] bytes = Encoding.ASCII.GetBytes(userInput);
        char[] chars = new char[bytes.Length];
        for (int i = 0; i <= bytes.Length; i++) // This loop will cause a buffer overflow
        {
            chars[i] = (char)bytes[i];
        }
        string output = new string(chars);
        Console.WriteLine("Hello, " + output + "!");
    }
}