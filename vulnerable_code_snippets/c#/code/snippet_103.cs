using System;
using System.IO;
using System.Runtime.Serialization.Formatters.Binary;

[Serializable]
public class VulnerableClass
{
    public string SecretData { get; set; }
}

public class Program
{
    static void Main(string[] args)
    {
        var data = new VulnerableClass { SecretData = "Sensitive Data" };
        
        BinaryFormatter formatter = new BinaryFormatter();
        using (MemoryStream stream = new MemoryStream())
        {
            formatter.Serialize(stream, data);
            stream.Position = 0;
            
            var deserializedData = (VulnerableClass)formatter.Deserialize(stream);
            Console.WriteLine(deserializedData.SecretData);
        }
    }
}