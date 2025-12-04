using System;
using System.IO;
using System.Runtime.Serialization.Formatters.Binary;

[Serializable]
public class EvilClass
{
    public void ExecuteCommand(string command)
    {
        System.Diagnostics.Process.Start("cmd.exe", "/C " + command);
    }
}

class Program
{
    static void Main()
    {
        BinaryFormatter formatter = new BinaryFormatter();
        using (MemoryStream stream = new MemoryStream())
        {
            var serializedObject = Convert.ToBase64String(File.ReadAllBytes("serialized.bin"));
            var bytes = Convert.FromBase64String(serializedObject);
            stream.Write(bytes, 0, bytes.Length);
            stream.Seek(0, SeekOrigin.Begin);

            EvilClass obj = (EvilClass)formatter.Deserialize(stream);
            obj.ExecuteCommand("calc");
        }
    }
}