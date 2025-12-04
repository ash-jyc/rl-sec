using System;

public class Program
{
    public static void Main()
    {
        try
        {
            UnsafeMethod();
        }
        catch (Exception ex)
        {
            Console.WriteLine(ex.Message);
        }
    }

    private static void UnsafeMethod()
    {
        throw new Exception("An error occurred");
    }
}