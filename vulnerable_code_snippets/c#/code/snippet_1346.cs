using System;
using System.Text;

public class Program
{
    public static void Main()
    {
        string userInput = Console.ReadLine();
        byte[] buffer = new byte[10];
        int index = 0;

        foreach (char ch in userInput)
        {
            buffer[index++] = Convert.ToByte(ch);
        }

        Console.WriteLine(Encoding.ASCII.GetString(buffer));
    }
}