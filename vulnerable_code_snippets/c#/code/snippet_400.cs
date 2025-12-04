using System;
using System.Text;

public class Program
{
    public static void Main(string[] args)
    {
        Console.WriteLine("Enter your name:");
        string userInput = Console.ReadLine();
        byte[] bytes = Encoding.ASCII.GetBytes(userInput);
        byte[] buffer = new byte[10];
        Buffer.BlockCopy(bytes, 0, buffer, 0, bytes.Length);
        Console.WriteLine("Hello " + Encoding.ASCII.GetString(buffer));
    }
}