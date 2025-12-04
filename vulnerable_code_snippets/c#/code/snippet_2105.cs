using System;
using System.Text;

public class VulnerableClass
{
    public static void Main()
    {
        byte[] buffer = new byte[10];
        string untrustedSource = "This is a long string that will cause a buffer overflow";

        // This line of code is vulnerable to a buffer overflow attack
        Encoding.ASCII.GetBytes(untrustedSource, 0, untrustedSource.Length, buffer, 0);

        Console.WriteLine("Buffer contents: " + BitConverter.ToString(buffer));
    }
}