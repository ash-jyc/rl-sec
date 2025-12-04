using System;
using System.Security.Cryptography;

public class VulnerableRandomGenerator
{
    private static readonly RNGCryptoServiceProvider _global = new RNGCryptoServiceProvider();

    public int Next()
    {
        var buffer = new byte[4];
        _global.GetBytes(buffer);
        return BitConverter.ToInt32(buffer, 0);
    }
}

public class Program
{
    public static void Main()
    {
        var rnd = new VulnerableRandomGenerator();
        Console.WriteLine(rnd.Next());
    }
}