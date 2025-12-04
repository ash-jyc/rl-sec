using System;
using System.Net;

public class WebClientExample
{
    public static void Main()
    {
        WebClient client = new WebClient();
        try
        {
            string reply = client.DownloadString("http://example.com");
            Console.WriteLine(reply);
        }
        catch (Exception ex)
        {
            throw ex;
        }
    }
}