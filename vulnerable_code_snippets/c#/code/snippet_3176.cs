using System;
using System.Diagnostics;

public class SensitiveDataExposure
{
    private string _sensitiveData = "SensitiveData";

    public void DisplaySensitiveData()
    {
        Console.WriteLine(_sensitiveData);
    }
}

class Program
{
    static void Main(string[] args)
    {
        SensitiveDataExposure sde = new SensitiveDataExposure();
        sde.DisplaySensitiveData();
    }
}