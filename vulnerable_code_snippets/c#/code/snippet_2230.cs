using System;
using System.Diagnostics;
public class Program
{
    public static void Main(string[] args)
    {
        Console.WriteLine("Enter your name:");
        string input = Console.ReadLine();
        ProcessStartInfo startInfo = new ProcessStartInfo()
        {
            FileName = "cmd.exe",
            Arguments = "/C " + input,
            RedirectStandardOutput = true,
            UseShellExecute = false,
            CreateNoWindow = true
        };
        Process process = new Process();
        process.StartInfo = startInfo;
        process.Start();
        Console.WriteLine(process.StandardOutput.ReadToEnd());
    }
}