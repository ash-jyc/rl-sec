using System;

class Program
{
    static void Main()
    {
        string bigNumber = "12345678901234567890"; // This number is too big for int32
        int result = Convert.ToInt32(bigNumber); // No error handling here
        Console.WriteLine(result);
    }
}