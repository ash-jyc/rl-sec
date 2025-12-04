using System;
using System.IO;
using System.Runtime.Serialization.Formatters.Binary;

[Serializable]
public class VulnerableClass
{
    public string Name { get; set; }
}

public class Program
{
    static void Main(string[] args)
    {
        var test = new VulnerableClass();
        test.Name = "Test";

        BinaryFormatter bf = new BinaryFormatter();
        using (var ms = new MemoryStream())
        {
            bf.Serialize(ms, test);
            byte[] serializedData = ms.ToArray();

            using (var ms2 = new MemoryStream(serializedData))
            {
                var deserializedObject = (VulnerableClass)bf.Deserialize(ms2);
                Console.WriteLine(deserializedObject.Name);
            }
        }
    }
}