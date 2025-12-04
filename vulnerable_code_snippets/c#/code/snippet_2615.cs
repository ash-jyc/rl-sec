using System;
using System.Security.Cryptography;

public class VulnerableClass
{
    private static readonly RNGCryptoServiceProvider RandomGenerator = new RNGCryptoServiceProvider();

    public int GetRandomNumber()
    {
        var randomByteArray = new byte[4];
        RandomGenerator.GetBytes(randomByteArray);
        return BitConverter.ToInt32(randomByteArray, 0);
    }
}