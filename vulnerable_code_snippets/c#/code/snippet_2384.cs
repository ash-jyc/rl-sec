using System;
using System.Data.SqlClient;
using System.Web.Mvc;

namespace VulnerableApp.Controllers
{
    public class HomeController : Controller
    {
        public ActionResult Index(string id)
        {
            string connectionString = "Server=myServerAddress;Database=myDataBase;User Id=myUsername;Password=myPassword;";
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                connection.Open();
                using (SqlCommand command = new SqlCommand("SELECT * FROM Users WHERE UserId=" + id, connection))
                using (SqlDataReader reader = command.ExecuteReader())
                {
                    while (reader.Read())
                    {
                        // Do something with the data
                    }
                }
            }
            return View();
        }
    }
}