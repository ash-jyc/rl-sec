using System;
using System.IO;

public class Program
{
    public static void Main(string[] args)
    {
        string filePath = "C:\\..\\Windows\\win.ini"; // Unvalidated user input
        string content = File.ReadAllText(filePath);
        Console.WriteLine(content);
    }
}