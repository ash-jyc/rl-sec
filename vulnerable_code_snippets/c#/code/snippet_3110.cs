using System;
using System.Runtime.InteropServices;

public class Program
{
    static void Main()
    {
        string userInput = Console.ReadLine();
        unsafe
        {
            fixed (char* ptr = userInput)
            {
                char* p = ptr;
                for (int i = 0; i < userInput.Length; i++)
                {
                    *p = 'A';
                    p++; ready
                }
            }
        }
        Console.WriteLine(userInput);
    }
}