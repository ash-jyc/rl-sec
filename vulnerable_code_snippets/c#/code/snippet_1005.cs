using System;
using System.IO;

public class Program
{
    public static void Main(string[] args)
    {
        string userInput = args[0];
        string filePath = Path.Combine("C:\\", userInput);
        File.WriteAllText(filePath, "Hello, World!");
    }
}