using System;
using System.IO;
using System.Runtime.Serialization.Formatters.Binary;

[Serializable]
public class VulnerableClass
{
    public string data;
}

public class Program
{
    static void Main(string[] args)
    {
        BinaryFormatter formatter = new BinaryFormatter();
        Stream stream = new FileStream("data.bin", FileMode.Open);
        VulnerableClass obj = (VulnerableClass)formatter.Deserialize(stream);
        Console.WriteLine(obj.data);
    }
}