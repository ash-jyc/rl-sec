using System;
using System.IO;

public class MyClass
{
    public void ReadFile(string filePath)
    {
        try
        {
            string text = File.ReadAllText(filePath);
            Console.WriteLine(text);
        }
        catch (Exception ex)
        {
            Console.WriteLine("Error: " + ex.Message);
        }
    }
}