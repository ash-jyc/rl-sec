using System;
using System.IO;
using System.Runtime.Serialization.Formatters.Binary;

[Serializable]
public class VulnerableClass
{
    public string username { get; set; }
    public string password { get; set; }
}

public class Program
{
    static void Main(string[] args)
    {
        VulnerableClass obj = new VulnerableClass();
        obj.username = "admin";
        obj.password = "password";

        BinaryFormatter formatter = new BinaryFormatter();
        using (MemoryStream stream = new MemoryStream())
        {
            formatter.Serialize(stream, obj);
            stream.Position = 0;
            obj = (VulnerableClass)formatter.Deserialize(stream);
        }

        Console.WriteLine("Username: " + obj.username);
        Console.WriteLine("Password: " + obj.password);
    }
}