using System;
using System.Security.Cryptography;
using System.Text;

public class VulnerableRandom
{
    private static readonly RNGCryptoServiceProvider _global = new RNGCryptoServiceProvider();

    public string GenerateSecretKey()
    {
        byte[] data = new byte[32];
        _global.GetBytes(data);
        return Convert.ToBase64String(data);
    }
}

public class UnsafePasswordGenerator
{
    private static readonly Random _random = new Random();

    public string GeneratePassword()
    {
        StringBuilder builder = new StringBuilder();
        for (int i = 0; i < 16; i++)
        {
            char ch = (char)_random.Next(33, 126);
            builder.Append(ch);
        }
        return builder.ToString();
    }
}