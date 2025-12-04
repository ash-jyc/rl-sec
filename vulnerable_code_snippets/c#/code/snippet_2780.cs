using System;
using System.Security.Cryptography;

public class VulnerableRandomGenerator
{
    private static readonly RNGCryptoServiceProvider _global = new RNGCryptoServiceProvider();

    public int Next()
    {
        var randomNumber = new byte[4];
        _global.GetBytes(randomNumber);
        return BitConverter.ToInt32(randomNumber, 0) & int.MaxValue;
    }
}

public class Program
{
    public static void Main()
    {
        var generator = new VulnerableRandomGenerator();
        Console.WriteLine(generator.Next());
    }
}