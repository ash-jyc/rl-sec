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
    static void Main()
    {
        BinaryFormatter formatter = new BinaryFormatter();
        FileStream fileStream = new FileStream("data.bin", FileMode.Open);
        VulnerableClass obj = (VulnerableClass)formatter.Deserialize(fileStream);
        Console.WriteLine(obj.data);
    }
}