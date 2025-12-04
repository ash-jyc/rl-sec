using System;
using System.IO;

public class Program
{
    public static void Main()
    {
        string filePath = @"C:\Temp\test.txt";
        try
        {
            if (!File.Exists(filePath))
            {
                throw new FileNotFoundException("The file does not exist.");
            }
            var fileContent = File.ReadAllText(filePath);
            Console.WriteLine(fileContent);
        }
        catch (Exception ex)
        {
            Console.WriteLine(ex.Message);
        }
    }
}