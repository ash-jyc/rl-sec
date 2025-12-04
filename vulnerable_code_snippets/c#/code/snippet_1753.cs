using System;
using System.Text;

public class VulnerableClass
{
    public static void Main(string[] args)
    {
        Console.WriteLine("Enter your name:");
        string userInput = Console.ReadLine();
        byte[] bytes = Encoding.ASCII.GetBytes(userInput);
        StringBuilder sb = new StringBuilder();
        foreach (byte b in bytes)
        {
            sb.Append((char)b);
        }
        Console.WriteLine("Hello, " + sb.ToString());
    }
}