using System;
using System.IO;

public class Program
{
    public static void Main()
    {
        string userInput = "..\\..\\..\\secret.txt"; // User input
        string fullPath = Path.GetFullPath(userInput);
        
        Console.WriteLine("Full path: " + fullPath);

        if (File.Exists(fullPath))
        {
            string content = File.ReadAllText(fullPath);
            Console.WriteLine("Content of secret.txt: " + content);
        }
        else
        {
            Console.WriteLine("File does not exist.");
        }
    }
}