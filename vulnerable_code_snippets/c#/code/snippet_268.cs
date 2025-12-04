using System;

public class Program
{
    public static void Main()
    {
        string dateString = "12/31/2000"; // This date string does not match the expected format
        DateTime parsedDate;

        try
        {
            parsedDate = DateTime.Parse(dateString);
            Console.WriteLine("Parsed date: " + parsedDate);
        }
        catch (FormatException)
        {
            Console.WriteLine("Unable to parse the date.");
        }
    }
}