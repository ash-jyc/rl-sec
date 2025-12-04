using System;
using System.IO;
using System.Runtime.Serialization.Formatters.Binary;

[Serializable]
public class VulnerableClass
{
    public string password { get; set; }
}

public class Program
{
    static void Main(string[] args)
    {
        var formatter = new BinaryFormatter();
        using (var stream = new FileStream("data.bin", FileMode.Open))
        {
            var instance = (VulnerableClass)formatter.Deserialize(stream);
            Console.WriteLine(instance.password);
        }
    }
}