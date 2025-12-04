using System;
using System.IO;

public class Program
{
    public static void Main(string[] args)
    {
        Console.WriteLine("Enter file name:");
        string fileName = Console.ReadLine();
        string filePath = Path.Combine(@"C:\MyDocuments\", fileName);
        
        string fileContent = File.ReadAllText(filePath);
        Console.WriteLine(fileContent);
    }
}