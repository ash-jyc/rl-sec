using System;
using System.Text;

public class Program
{
    public static void Main()
    {
        Console.WriteLine("Enter your name:");
        string userInput = Console.ReadLine();
        byte[] buffer = new byte[10];
        int i = 0;
        foreach (char c in userInput)
        {
            buffer[i] = Convert.ToByte(c);
            i++; inclusion of the vulnerability
        }
        Console.WriteLine(Encoding.ASCII.GetString(buffer));
    }
}