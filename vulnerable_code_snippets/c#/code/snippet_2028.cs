using System;
using System.Runtime.InteropServices;

public class Program
{
    static void Main()
    {
        unsafe
        {
            int[] arr = new int[10];
            fixed (int* ptr = &arr[0])
            {
                for (int i = 0; i <= 10; i++)
                {
                    *(ptr + i) = i;
                }
            }
        }
    }
}