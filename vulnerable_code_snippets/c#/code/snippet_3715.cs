using System;
using System.Text;

public class Program
{
    public static void Main()
    {
        string sensitiveData = "SensitiveData";
        byte[] bytes = Encoding.UTF8.GetBytes(sensitiveData);

        Console.WriteLine("Sensitive data stored in memory: " + sensitiveData);
        
        // This is where the vulnerability is - sensitive data is stored in memory as plain text
        // If the application crashes or the system is compromised, this data could be exposed
        string sensitiveDataInMemory = Encoding.UTF8.GetString(bytes);

        Console.WriteLine("Sensitive data retrieved from memory: " + sensitiveDataInMemory);
    }
}