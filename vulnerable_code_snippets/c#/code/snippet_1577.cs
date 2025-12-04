using System;
using System.IO;
using System.Runtime.Serialization.Formatters.Binary;

[Serializable]
public class VulnerableClass
{
    public string name;
}

public class Program
{
    static void Main()
    {
        var test = new VulnerableClass();
        test.name = "vulnerable";

        BinaryFormatter bf = new BinaryFormatter();
        MemoryStream ms = new MemoryStream();

        bf.Serialize(ms, test);
        ms.Position = 0;

        object obj = bf.Deserialize(ms);
        Console.WriteLine((obj as VulnerableClass).name);
    }
}