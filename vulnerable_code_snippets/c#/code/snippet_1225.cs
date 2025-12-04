using System;

public class Program
{
    public static void Main()
    {
        string[] names = new string[5];
        names[0] = "John";
        names[1] = null;
        names[2] = "Alice";
        names[3] = null;
        names[4] = "Bob";

        foreach (string name in names)
        {
            Console.WriteLine(name.ToUpper());
        }
    }
}