using System;
using System.Threading;

public class Program
{
    public static void Main()
    {
        ThreadPool.QueueUserWorkItem(state =>
        {
            throw new Exception("Unhandled exception");
        });

        Thread.Sleep(Timeout.Infinite);
    }
}