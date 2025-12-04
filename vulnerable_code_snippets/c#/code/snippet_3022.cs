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
        // Create a new instance of the VulnerableClass
        VulnerableClass myObject = new VulnerableClass("My Object");

        // Serialize the object
        BinaryFormatter formatter = new BinaryFormatter();
        MemoryStream stream = new MemoryStream();
        formatter.Serialize(stream, myObject);

        // Deserialize the object without any security measures
        stream.Position = 0;
        VulnerableClass deserializedObject = (VulnerableClass)formatter.Deserialize(stream);

        Console.WriteLine(deserializedObject.Name);
    }
}