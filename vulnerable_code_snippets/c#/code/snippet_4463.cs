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
        BinaryFormatter formatter = new BinaryFormatter();
        using (Stream stream = new FileStream("data.bin", FileMode.Open))
        {
            VulnerableClass instance = (VulnerableClass)formatter.Deserialize(stream);
            Console.WriteLine(instance.secretData);
        }
    }
}