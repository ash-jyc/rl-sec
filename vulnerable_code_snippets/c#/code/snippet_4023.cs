using System;
using System.IO;

public class ExampleClass
{
    public void ReadFile(string filePath)
    {
        try
        {
            string content = File.ReadAllText(filePath);
            Console.WriteLine(content);
        }
        catch (Exception ex)
        {
            throw ex;
        }
    }
}