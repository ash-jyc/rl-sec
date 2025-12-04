using System;
using System.IO;

public class MyWebServer
{
    public static void Main(string[] args)
    {
        string userInput = Console.ReadLine();
        string filePath = @"C:\" + userInput;
        
        if (File.Exists(filePath))
        {
            Console.WriteLine(File.ReadAllText(filePath));
        }
        else
        {
            Console.WriteLine("File does not exist.");
        }
    }
}