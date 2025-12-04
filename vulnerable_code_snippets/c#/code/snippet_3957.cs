using System;
using System.Web;

public class XssExample
{
    public string DecodeAndRender(string encodedString)
    {
        var decodedString = HttpUtility.UrlDecode(encodedString);
        return "<div>" + decodedString + "</div>";
    }
}