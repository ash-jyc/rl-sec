using System;
using System.Security.Cryptography;

public class VulnerableClass
{
    private static readonly RNGCryptoServiceProvider RandomProvider = new RNGCryptoServiceProvider();

    public string GenerateSecureToken(int length)
    {
        var randomNumber = new byte[length];
        RandomProvider.GetBytes(randomNumber);
        return Convert.ToBase64String(randomNumber);
    }
}