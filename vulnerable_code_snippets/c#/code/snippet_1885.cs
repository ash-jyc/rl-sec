using System;

public class Program
{
    public static void Main(string[] args)
    {
        Console.WriteLine("Enter your name:");
        string userInput = Console.ReadLine();
        string welcomeMessage = "Welcome " + userInput + "!";
        Console.WriteLine(welcomeMessage);
    }
}