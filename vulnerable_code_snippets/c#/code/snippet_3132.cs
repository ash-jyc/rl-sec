using System;
using System.Diagnostics;
using System.IO;

public class Program
{
    public static void Main(string[] args)
    {
        Console.WriteLine("Enter your name:");
        string userInput = Console.ReadLine();
        
        // Inadequate Input Validation
        ProcessStartInfo startInfo = new ProcessStartInfo("cmd.exe", "/c " + userInput);
        startInfo.RedirectStandardOutput = true;
        startInfo.UseShellExecute = false;
        startInfo.CreateNoWindow = true;
        Process process = new Process();
        process.StartInfo = startInfo;
        process.Start();
        
        StreamReader reader = process.StandardOutput;
        string result = reader.ReadToEnd();
        
        Console.WriteLine(result);
    }
}