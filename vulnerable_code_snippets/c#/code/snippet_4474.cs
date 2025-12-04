using System;
using System.Web.Mvc;

public class HomeController : Controller
{
    public ActionResult Index(string id)
    {
        // Vulnerable code: Direct object reference from request
        ViewBag.Message = "Hello " + id;
        return View();
    }
}