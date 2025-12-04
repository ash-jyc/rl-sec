using System;
using System.Runtime.InteropServices;

public class Program
{
    [DllImport("kernel32.dll", SetLastError = true)]
    static extern int GetPrivateProfileString(string lpAppName, string lpKeyName, string lpDefault, byte[] lpReturnedString, int nSize, string lpFileName);

    public static void Main()
    {
        byte[] buffer = new byte[10];
        GetPrivateProfileString("section", "key", "", buffer, buffer.Length, "file.ini");
        Console.WriteLine(System.Text.Encoding.ASCII.GetString(buffer));
    }
}