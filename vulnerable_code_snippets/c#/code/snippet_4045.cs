using System;

public class VulnerableClass
{
    private Random _random = new Random();

    public int GetRandomNumber()
    {
        return _random.Next(100);
    }
}