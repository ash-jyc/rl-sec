using System;
using System.Web.Mvc;

namespace XSSApplication.Controllers
{
    public class HomeController : Controller
    {
        [HttpGet]
        public ActionResult Index(string userInput)
        {
            ViewBag.UserInput = userInput;
            return View();
        }
    }
}