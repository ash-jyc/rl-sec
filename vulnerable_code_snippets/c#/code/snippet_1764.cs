using System;
using System.IO;
using System.Runtime.Serialization.Formatters.Binary;

[Serializable]
public class User
{
    public string Name { get; set; }
    public string Password { get; set; }
}

class Program
{
    static void Main(string[] args)
    {
        User user = new User();
        user.Name = "Admin";
        user.Password = "password123";

        BinaryFormatter formatter = new BinaryFormatter();
        using (MemoryStream stream = new MemoryStream())
        {
            formatter.Serialize(stream, user);
            stream.Position = 0;
            object obj = formatter.Deserialize(stream);
            User deserializedUser = (User)obj;
            Console.WriteLine("Deserialized User: " + deserializedUser.Name + ", " + deserializedUser.Password);
        }
    }
}