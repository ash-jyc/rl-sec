using System;
using System.IO;
using System.Runtime.Serialization.Formatters.Binary;

[Serializable]
public class VulnerableClass
{
    public string UserInput { get; set; }
}

public class Program
{
    static void Main(string[] args)
    {
        Console.WriteLine("Enter your input:");
        string userInput = Console.ReadLine();

        VulnerableClass obj = new VulnerableClass { UserInput = userInput };

        BinaryFormatter formatter = new BinaryFormatter();
        using (MemoryStream stream = new MemoryStream())
        {
            formatter.Serialize(stream, obj);
            stream.Position = 0;
            
            obj = (VulnerableClass)formatter.Deserialize(stream);
        }

        Console.WriteLine("Your input was: " + obj.UserInput);
    }
}