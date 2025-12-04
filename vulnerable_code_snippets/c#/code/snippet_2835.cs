using System;
using System.IO;

public class Program
{
    public static void Main(string[] args)
    {
        string filePath = "..\\..\\..\\..\\secret.txt";
        string text = File.ReadAllText(filePath);
        Console.WriteLine(text);
    }
}