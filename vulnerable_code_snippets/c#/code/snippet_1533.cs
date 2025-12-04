using System;
using System.IO;
using System.Runtime.Serialization.Formatters.Binary;

[Serializable]
public class InsecureData
{
    public string Data { get; set; }
}

public class Program
{
    static void Main(string[] args)
    {
        var serializer = new BinaryFormatter();
        using (var stream = new MemoryStream())
        {
            var data = new InsecureData { Data = Console.ReadLine() }; // User controlled input
            serializer.Serialize(stream, data);
            stream.Position = 0;
            var deserializedData = (InsecureData)serializer.Deserialize(stream);
            Console.WriteLine(deserializedData.Data);
        }
    }
}