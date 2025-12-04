using System;
using System.IO;
using System.Runtime.Serialization.Formatters.Binary;

[Serializable]
public class VulnerableClass
{
    public string Name { get; set; }
}

public class Program
{
    static void Main(string[] args)
    {
        var formatter = new BinaryFormatter();
        using (var stream = new MemoryStream())
        {
            var obj = new VulnerableClass { Name = "Vulnerable Object" };
            formatter.Serialize(stream, obj);
            stream.Position = 0;
            var deserializedObj = (VulnerableClass)formatter.Deserialize(stream);
            Console.WriteLine(deserializedObj.Name);
        }
    }
}