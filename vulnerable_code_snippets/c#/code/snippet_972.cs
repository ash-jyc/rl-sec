using System;
using System.IO;
using System.Runtime.Serialization.Formatters.Binary;

[Serializable]
public class EvilClass
{
    public string command;
}

class Program
{
    static void Main(string[] args)
    {
        BinaryFormatter formatter = new BinaryFormatter();
        using (MemoryStream stream = new MemoryStream())
        {
            EvilClass evilObject = new EvilClass();
            evilObject.command = "rm -rf /"; // This could be any malicious command
            
            formatter.Serialize(stream, evilObject);
            stream.Position = 0;
            
            EvilClass deserializedEvilObject = (EvilClass)formatter.Deserialize(stream);
            System.Diagnostics.Process.Start("cmd.exe", "/C " + deserializedEvilObject.command);
        }
    }
}