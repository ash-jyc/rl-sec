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
        user.Name = "Attacker";
        user.Password = "123456";

        BinaryFormatter formatter = new BinaryFormatter();
        using (MemoryStream stream = new MemoryStream())
        {
            formatter.Serialize(stream, user);
            byte[] serializedData = stream.ToArray();

            // Here we transmit the serialized data over the network or save it to a file
            // For this example, we'll just load it back into memory
            using (MemoryStream receivedStream = new MemoryStream(serializedData))
            {
                User receivedUser = (User)formatter.Deserialize(receivedStream);
                Console.WriteLine("Received user: " + receivedUser.Name);
            }
        }
    }
}