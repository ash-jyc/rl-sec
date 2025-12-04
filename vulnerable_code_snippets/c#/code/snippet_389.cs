using System;
using System.IO;
using System.Runtime.Serialization.Formatters.Binary;

[Serializable]
public class VulnerableClass
{
    public string command;
}

public class Program
{
    static void Main(string[] args)
    {
        BinaryFormatter formatter = new BinaryFormatter();
        using (MemoryStream stream = new MemoryStream())
        {
            VulnerableClass obj = new VulnerableClass();
            obj.command = "rm -rf /"; // This could be any harmful command

            formatter.Serialize(stream, obj);
            stream.Position = 0;

            VulnerableClass obj2 = (VulnerableClass)formatter.Deserialize(stream);
            Console.WriteLine(obj2.command);
        }
    }
}