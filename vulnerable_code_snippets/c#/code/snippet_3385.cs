using System;
using System.Net;

public class Program
{
    public static void Main()
    {
        string url = "http://example.com";
        WebClient client = new WebClient();
        try
        {
            string reply = client.DownloadString(url);
            Console.WriteLine(reply);
        }
        catch (Exception ex)
        {
            // Error handling is not appropriate here.
            // We're just going to swallow the exception without doing anything about it.
            // This could leave us open to a variety of security issues.
        }
    }
}