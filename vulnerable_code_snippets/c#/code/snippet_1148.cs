using System;
using System.IO;
using System.Runtime.Serialization.Formatters.Binary;

[Serializable]
public class EvilClass
{
    public string command;

    public EvilClass()
    {
        this.command = "malicious command";
    }
}

class Program
{
    static void Main(string[] args)
    {
        EvilClass evilObject = new EvilClass();
        BinaryFormatter binaryFormatter = new BinaryFormatter();
        MemoryStream memoryStream = new MemoryStream();

        binaryFormatter.Serialize(memoryStream, evilObject);
        memoryStream.Position = 0;

        EvilClass deserializedEvilObject = (EvilClass)binaryFormatter.Deserialize(memoryStream);
        Console.WriteLine(deserializedEvilObject.command);
    }
}