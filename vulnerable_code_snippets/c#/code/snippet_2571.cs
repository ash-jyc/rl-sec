using System;
using System.Web;
using System.Text;

public class VulnerableClass
{
    public static void Main()
    {
        byte[] input = Encoding.ASCII.GetBytes(new string('a', 1024 * 1024 * 1024)); // 1GB data
        string encoded = HttpServerUtility.UrlTokenEncode(input);
        Console.WriteLine(encoded);
    }
}