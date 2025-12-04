using System;
using System.IO;
using System.Runtime.Serialization.Formatters.Binary;

[Serializable]
public class EvilClass
{
    public string command;
}

public class Program
{
    static void Main(string[] args)
    {
        BinaryFormatter formatter = new BinaryFormatter();
        using (FileStream fs = File.OpenRead("evil.bin"))
        {
            EvilClass ec = (EvilClass)formatter.Deserialize(fs);
            Console.WriteLine(ec.command);
        }
    }
}