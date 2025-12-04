using System;
using System.IO;
using System.Runtime.Serialization.Formatters.Binary;

[Serializable]
public class VulnerableClass
{
    public string command;
}

public class Program
{
    static void Main(string[] args)
    {
        BinaryFormatter formatter = new BinaryFormatter();
        FileStream fileStream = new FileStream("data.bin", FileMode.Open);
        VulnerableClass obj = (VulnerableClass)formatter.Deserialize(fileStream);
        Console.WriteLine(obj.command);
    }
}