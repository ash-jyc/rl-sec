using System;
using System.Runtime.InteropServices;

public class MemoryLeakExample
{
    public IntPtr AllocateUnmanagedMemory(int size)
    {
        return Marshal.AllocHGlobal(size);
    }

    public void FreeUnmanagedMemory(IntPtr ptr)
    {
        // No deallocation here, causing a memory leak
    }
}