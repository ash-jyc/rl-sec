using System;
using System.IO;
using System.Runtime.Serialization.Formatters.Binary;

[Serializable]
public class SensitiveData
{
    public string UserName { get; set; }
    public string Password { get; set; }
}

public class Program
{
    static void Main(string[] args)
    {
        SensitiveData sensitiveData = new SensitiveData
        {
            UserName = "admin",
            Password = "password"
        };

        BinaryFormatter formatter = new BinaryFormatter();
        using (FileStream stream = File.Create("sensitiveData.bin"))
        {
            formatter.Serialize(stream, sensitiveData);
        }

        using (FileStream stream = File.OpenRead("sensitiveData.bin"))
        {
            SensitiveData deserializedData = (SensitiveData)formatter.Deserialize(stream);
            Console.WriteLine($"UserName: {deserializedData.UserName}, Password: {deserializedData.Password}");
        }
    }
}