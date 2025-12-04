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

        // This line of code can cause a buffer overflow if the userInput is longer than the size of the char array.
        Array.Copy(bytes, 0, chars, 0, bytes.Length);

        Console.WriteLine("Your name in ASCII:");
        foreach (char c in chars)
        {
            Console.Write((int)c + " ");
        }
    }
}