using System;
using System.Text;

public class BufferOverflowExample
{
    public static void Main()
    {
        byte[] buffer = new byte[10];
        string userInput = GetUserInput();
        Encoding.ASCII.GetBytes(userInput, 0, userInput.Length, buffer, 0);
    }

    private static string GetUserInput()
    {
        return "This is a long string that will cause a buffer overflow";
    }
}