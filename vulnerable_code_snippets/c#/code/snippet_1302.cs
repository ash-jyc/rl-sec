using System;
using System.Web;
using System.Web.Mvc;

public class HomeController : Controller
{
    public ActionResult Index(string input)
    {
        ViewBag.Message = "Hello " + input;
        return View();
    }
}