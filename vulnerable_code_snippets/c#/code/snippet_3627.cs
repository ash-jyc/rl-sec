using System;
using System.Web.Mvc;

namespace MvcApplication1.Controllers
{
    public class HomeController : Controller
    {
        [HttpGet]
        public ActionResult Index(string input)
        {
            ViewBag.Message = "Hello " + input;
            return View();
        }
    }
}