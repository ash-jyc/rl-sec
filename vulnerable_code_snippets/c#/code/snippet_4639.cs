using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Logging;

namespace IDOR_Vulnerability.Controllers
{
    [ApiController]
    [Route("[controller]")]
    public class UserController : ControllerBase
    {
        private static List<User> users = new List<User>()
        {
            new User { Id = 1, Name = "John Doe", SSN = "123-45-6789" },
            new User { Id = 2, Name = "Jane Doe", SSN = "987-65-4321" }
        };

        [HttpGet("{id}")]
        public string Get(int id)
        {
            var user = users.FirstOrDefault(u => u.Id == id);
            if (user == null)
                return "User not found";

            return $"Name: {user.Name}, SSN: {user.SSN}";
        }
    }

    public class User
    {
        public int Id { get; set; }
        public string Name { get; set; }
        public string SSN { get; set; }
    }
}