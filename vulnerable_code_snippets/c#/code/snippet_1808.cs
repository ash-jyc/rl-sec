using System;
using System.IO;

public class Program
{
    public static void Main()
    {
        try
        {
            string filePath = @"C:\Program Files\sensitive_info.txt";
            string text = File.ReadAllText(filePath);
            Console.WriteLine(text);
        }
        catch (Exception ex)
        {
            // Do nothing
        }
    }
}