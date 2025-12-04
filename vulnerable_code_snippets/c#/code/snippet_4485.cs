using System;
using System.IO;

public class ResourceDeallocationExample
{
    private StreamReader reader;

    public void ReadFile(string path)
    {
        try
        {
            reader = new StreamReader(path);
            Console.WriteLine(reader.ReadToEnd());
        }
        catch (Exception ex)
        {
            Console.WriteLine("Error occurred: " + ex.Message);
        }
    }
}