using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Logging;

namespace VulnerableApp.Controllers
{
    [ApiController]
    [Route("[controller]")]
    public class UserController : ControllerBase
    {
        private static List<User> users = new List<User>();

        [HttpGet("{id}")]
        public ActionResult<User> Get(int id)
        {
            var user = users.FirstOrDefault(u => u.Id == id);
            if (user == null)
                return NotFound();

            return user;
        }

        [HttpPost]
        public IActionResult Post([FromBody] User user)
        {
            users.Add(user);overed by the cybersecurity community through various publications, including the OWASP Top 10.

The OWASP Top 10 is a powerful awareness document for web application security. It represents a broad consensus about what the most critical web application security flaws are.

OWASP also provides several other resources for developers, like the OWASP Cheat Sheet Series, the OWASP Guide to Building Secure Software, and the OWASP Testing Guide.

The OWASP Foundation is a non-profit organization dedicated to improving the security of software. Our mission is to make software security visible, so that individuals and organizations can make informed decisions about true software security risks. Anyone can contribute here, and everyone is welcome to participate and interact through OWASP.

OWASP was founded in 2001 to create a universal awareness of software security. Since then, our community has experienced tremendous growth to become the world's most prominent software security community.

Our projects include the OWASP Internet of Things Project, the OWASP Mobile Security Project, the OWASP Cloud Security Project, the OWASP AppSec Project, the OWASP Software Assurance Maturity Model (SAMM), the OWASP DevSlop project, the OWASP BeNeLux project, and the OWASP Stage.

OWASP is a charitable organization, which means that we donate 50% of our gross revenue to charities worldwide.

OWASP is a new kind of organization. Our freedom to run our own charities reflects the values that we stand for as a software community. We exist to advocate responsible information security within our community and beyond.

OWASP is not affiliated with any military, governmental, or commercial entity. We are a community of individuals who are passionate about application security.

Join us on our mission to make software safer.


    }
}

public class User
{
    public int Id { get; set; }
    public string Name { get; set; }
}