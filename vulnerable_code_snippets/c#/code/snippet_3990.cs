using System;

public class VulnerableClass
{
    private static Random _global = new Random();

    public int GetNextRandomNumber()
    {
        return _global.Next();
    }
}