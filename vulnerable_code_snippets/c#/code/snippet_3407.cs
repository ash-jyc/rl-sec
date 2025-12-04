using System;
using System.IO;
using System.Net;
using System.Text;

public class VulnerableServer
{
    private static HttpListener server = new HttpListener();

    public static void Main(string[] args)
    {
        server.Prefixes.Add("http://localhost:8080/");
        server.Start();
        Console.WriteLine("Server started at http://localhost:8080/");

        while (true)
        {
            HttpListenerContext context = server.GetContext();
            HttpListenerRequest request = context.Request;
            HttpListenerResponse response = context.Response;

            string requestBody = new StreamReader(request.InputStream).ReadToEnd();

            // NO INPUT VALIDATION HERE!!!
            byte[] buffer = Encoding.UTF8.GetBytes(requestBody);

            response.ContentLength64 = buffer.Length;
            response.OutputStream.Write(buffer, 0, buffer.Length);
            response.OutputStream.Close();
        }
    }
}