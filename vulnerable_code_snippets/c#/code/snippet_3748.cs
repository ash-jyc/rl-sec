using System;
using System.IO;
using System.Runtime.Serialization.Formatters.Binary;

[Serializable]
public class VulnerableClass
{
    public string secretData;
}

public class Program
{
    static void Main()
    {
        VulnerableClass obj = new VulnerableClass();
        obj.secretData = "Sensitive Data";
        IFormatter formatter = new BinaryFormatter();
        Stream stream = new FileStream("data.bin", FileMode.Create, FileAccess.Write, FileShare.None);
        formatter.Serialize(stream, obj);
        stream.Close();

        stream = new FileStream("data.bin", FileMode.Open, FileAccess.Read, FileShare.Read);
        VulnerableClass obj2 = (VulnerableClass)formatter.Deserialize(stream);
        stream.Close();
        Console.WriteLine(obj2.secretData);
    }
}