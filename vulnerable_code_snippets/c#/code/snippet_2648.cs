using System;
using System.IO;
using System.Runtime.Serialization.Formatters.Binary;

[Serializable]
public class UserData
{
    public string Name { get; set; }
    public string Password { get; set; }
}

public class Program
{
    static void Main(string[] args)
    {
        UserData user = new UserData();
        user.Name = "User";
        user.Password = "Password";

        BinaryFormatter formatter = new BinaryFormatter();
        using (MemoryStream stream = new MemoryStream())
        {
            formatter.Serialize(stream, user);
            byte[] serializedData = stream.ToArray();

            // This is where the vulnerability occurs. Serialized data is stored in a file
            File.WriteAllBytes("user_data.bin", serializedData);
        }

        // This is where the vulnerability occurs. Serialized data is read from a file
        byte[] serializedData2 = File.ReadAllBytes("user_data.bin");
        using (MemoryStream stream2 = new MemoryStream(serializedData2))
        {
            UserData user2 = (UserData)formatter.Deserialize(stream2);
            Console.WriteLine("Name: " + user2.Name);
            Console.WriteLine("Password: " + user2.Password);
        }
    }
}