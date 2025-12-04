using System;
using System.Security.Cryptography;

public class VulnerableClass
{
    private static readonly RNGCryptoServiceProvider RandomGenerator = new RNGCryptoServiceProvider();

    public int GeneratePredictableNumber()
    {
        byte[] randomNumber = new byte[1];
        RandomGenerator.GetBytes(randomNumber);
        return (int)(randomNumber[0] % 10);
    }
}