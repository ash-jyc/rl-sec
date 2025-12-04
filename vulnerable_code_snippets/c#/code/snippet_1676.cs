using System;
using System.IO;
using System.Runtime.Serialization.Formatters.Binary;

[Serializable]
public class EvilClass
{
    public void ExecuteCommand(string command)
    {
        System.Diagnostics.Process.Start("cmd.exe", "/C " + command);
    }
}

class Program
{
    static void Main()
    {
        byte[] data = Convert.FromBase64String("AAEAAAD/////AQAAAAAAAAAPAQAAAEFTQ0lJAAAAAAAAAOIBAAAAU1NLSUkBAAAAAAAAAAAAADIAAABTT05ZAAAAAAAAAAAAAHIAAAAmQQAAAFNTQP4AAAA=");
        MemoryStream stream = new MemoryStream(data);
        BinaryFormatter formatter = new BinaryFormatter();
        EvilClass obj = (EvilClass)formatter.Deserialize(stream);
        obj.ExecuteCommand("calc");
    }
}