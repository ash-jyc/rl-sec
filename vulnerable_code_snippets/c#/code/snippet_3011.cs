using System;
using System.Security.Cryptography;

public class VulnerableClass
{
    private static readonly RNGCryptoServiceProvider Random = new RNGCryptoServiceProvider();

    public string GenerateSecureToken(int length)
    {
        var data = new byte[length];
        Random.GetBytes(data);
        return Convert.ToBase64String(data);
    }
}