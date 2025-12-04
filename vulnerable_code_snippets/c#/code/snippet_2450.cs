using System;
using System.Runtime.InteropServices;

public class Program
{
    [DllImport("kernel32.dll", SetLastError = true)]
    static extern void CopyMemory(IntPtr dest, IntPtr src, uint count);

    public static void Main()
    {
        byte[] bytes = new byte[10];
        GCHandle pinnedArray = GCHandle.Alloc(bytes, GCHandleType.Pinned);
        IntPtr pointer = pinnedArray.AddrOfPinnedObject();
        
        // This will cause a buffer overflow as we are writing more memory than allocated
        CopyMemory(pointer, pointer, 20);

        pinnedArray.Free();
    }
}