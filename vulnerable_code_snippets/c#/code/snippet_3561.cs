using System;
using System.IO.Ports;

public class Program
{
    static void Main()
    {
        SerialPort serialPort = new SerialPort("COM1", 9600);
        byte[] buffer = new byte[256];
        int bytesRead = serialPort.Read(buffer, 0, 256);

        unsafe
        {
            fixed (byte* ptr = buffer)
            {
                byte* p = ptr;
                for (int i = 0; i < bytesRead; i++)
                {
                    *p++ = (byte)(*p + 1);  // This line of code could cause a buffer overflow
                }
            }
        }

        Console.WriteLine("Data read from serial port: " + BitConverter.ToString(buffer));
    }
}