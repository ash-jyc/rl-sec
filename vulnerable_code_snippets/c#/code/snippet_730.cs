using System;

public class Program
{
    public static void Main(string[] args)
    {
        string userInput = Console.ReadLine();
        FormatAndPrintString(userInput);
    }

    private static void FormatAndPrintString(string userInput)
    {
        string formattedString = string.Format("Formatted String: {0}", userInput);
        Console.WriteLine(formattedString);
    }
}