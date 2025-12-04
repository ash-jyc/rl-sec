using System;
using System.IO;
using System.Runtime.Serialization.Formatters.Binary;

[Serializable]
public class VulnerableClass
{
    public string Name { get; set; }

    public VulnerableClass(string name)
    {
        this.Name = name;
    }
}

public class Program
{
    static void Main()
    {
        var formatter = new BinaryFormatter();
        using (var stream = new MemoryStream())
        {
            var instance = new VulnerableClass("Attacker's instance");
            formatter.Serialize(stream, instance);
            stream.Position = 0;
            var result = (VulnerableClass)formatter.Deserialize(stream);
            Console.WriteLine(result.Name);
        }
    }
}