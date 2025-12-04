using System;
using System.Security.Cryptography;

public class VulnerableClass
{
    private static readonly RNGCryptoServiceProvider _random = new RNGCryptoServiceProvider();

    public string GenerateRandomString(int length)
    {
        // This function generates a random string of specified length using the RNGCryptoServiceProvider class.
        byte[] randomNumber = new byte[length];

        _random.GetBytes(randomNumber);
        string randomString = Convert.ToBase64String(randomNumber);

        return randomString;
    }
}