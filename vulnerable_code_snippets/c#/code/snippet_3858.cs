using System;
using System.Web;

public class XssExample 
{
    public void SomeMethod(HttpContext context) 
    {
        HttpCookie cookie = new HttpCookie("userName");
        cookie.Value = context.Request.QueryString["username"];
        context.Response.Cookies.Add(cookie);
    }
}