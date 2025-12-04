using System;
using System.IO;
using System.Runtime.Serialization.Formatters.Binary;

[Serializable]
public class VulnerableClass
{
    public string Name { get; set; }

    public VulnerableClass(string name)
    {
        Name = name;
    }
}

public class Program
{
    static void Main()
    {
        var formatter = new BinaryFormatter();
        using (var stream = new MemoryStream())
        {
            var obj = new VulnerableClass("Vulnerable Object");
            formatter.Serialize(stream, obj);
            stream.Position = 0;
            var deserializedObj = (VulnerableClass)formatter.Deserialize(stream);
            Console.WriteLine(deserializedObj.Name);
        }
    }
}