using System;

class Program
{
    static void Main()
    {
        string dateString = "This is not a valid date";
        DateTime parsedDate = DateTime.Parse(dateString);
        Console.WriteLine("Parsed Date: " + parsedDate);
    }
}