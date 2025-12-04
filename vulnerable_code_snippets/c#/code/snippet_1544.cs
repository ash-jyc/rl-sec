using System;
using System.Runtime.InteropServices;

public class Program
{
    [DllImport("kernel32.dll", SetLastError = true)]
    static extern IntPtr GetCommandLineA();

    public static void Main()
    {
        IntPtr cmdLine = GetCommandLineA();
        byte[] buffer = new byte[1024];
        Marshal.Copy(cmdLine, buffer, 0, buffer.Length);
        Console.WriteLine(System.Text.Encoding.ASCII.GetString(buffer));
    }
}