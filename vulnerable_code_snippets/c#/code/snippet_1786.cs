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
        var memoryStream = new MemoryStream();
        var serializer = new BinaryFormatter();

        var obj = new VulnerableClass("test");
        serializer.Serialize(memoryStream, obj);

        memoryStream.Position = 0;

        var deserializedObj = (VulnerableClass)serializer.Deserialize(memoryStream);

        Console.WriteLine(deserializedObj.Name);
    }
}