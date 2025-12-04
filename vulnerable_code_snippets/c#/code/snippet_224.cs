using System;
using System.Text;

public class Program
{
    public static void Main()
    {
        Console.WriteLine("Enter your name:");
        string userInput = Console.ReadLine();
        
        int bufferSize = 10;
        byte[] buffer = new byte[bufferSize];
        Encoding.ASCII.GetBytes(userInput).CopyTo(buffer, 0);

        Console.WriteLine("Hello " + Encoding.ASCII.GetString(buffer));
    }
}