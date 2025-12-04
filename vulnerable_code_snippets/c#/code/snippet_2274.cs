using System;
using System.IO;
using System.Runtime.Serialization.Formatters.Binary;

[Serializable]
public class VulnerableClass
{
    public string UserData { get; set; }
}

public class Program
{
    static void Main(string[] args)
    {
        byte[] bytes = Convert.FromBase64String(Console.ReadLine());
        MemoryStream stream = new MemoryStream(bytes);
        BinaryFormatter formatter = new BinaryFormatter();
        VulnerableClass obj = (VulnerableClass)formatter.Deserialize(stream);
        Console.WriteLine(obj.UserData);
    }
}