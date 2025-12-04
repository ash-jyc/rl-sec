using System;
class Program
{
    static void Main()
    {
        string dateString = "13/01/2022";  // Invalid date format
        DateTime dateValue;
        try
        {
            dateValue = DateTime.Parse(dateString);
            Console.WriteLine(dateValue);
        }
        catch (FormatException)
        {
            Console.WriteLine("Invalid date format");
        }
    }
}