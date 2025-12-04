using System;

public class VulnerableClass
{
    private Random rand = new Random();

    public int GetRandomNumber()
    {
        return rand.Next(100);
    }
}