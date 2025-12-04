using System;
using System.IO;
using System.Runtime.Serialization.Formatters.Binary;

[Serializable]
public class MyObject
{
    public string data;
}

class Program
{
    static void Main(string[] args)
    {
        // Create a new object
        MyObject myObject = new MyObject();
        myObject.data = "Hello, World!";

        // Serialize the object
        BinaryFormatter formatter = new BinaryFormatter();
        MemoryStream stream = new MemoryStream();
        formatter.Serialize(stream, myObject);

        // Deserialize the object
        stream.Position = 0;
        MyObject deserializedObject = (MyObject)formatter.Deserialize(stream);

        Console.WriteLine(deserializedObject.data);
    }
}