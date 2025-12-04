using System;
using System.Web.Mvc;

public class HomeController : Controller
{
    public ActionResult Index(string id)
    {
        try
        {
            int number = Convert.ToInt32(id);
            ViewBag.Message = "Your secret number is: " + number;
            return View();
        }
        catch (Exception ex)
        {
            throw ex;
        }
    }
}