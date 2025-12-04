using System;
using System.Runtime.InteropServices;

public class Program
{
    [DllImport("kernel32.dll", SetLastError = true)]
    public static extern bool ReadProcessMemory(IntPtr hProcess, IntPtr lpBaseAddress, byte[] lpBuffer, int dwSize, out IntPtr lpNumberOfBytesRead);

    public static void Main()
    {
        IntPtr lpNumberOfBytesRead;
        byte[] lpBuffer = new byte[100];
        ReadProcessMemory(IntPtr.Zero, IntPtr.Zero, lpBuffer, 200, out lpNumberOfBytesRead);
    }
}