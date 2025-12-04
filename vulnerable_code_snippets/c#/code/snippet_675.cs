using System;
using System.Data.SqlClient;
using System.Web.Http;

namespace VulnerableAPI.Controllers
{
    public class UserController : ApiController
    {
        private readonly SqlConnection _connection = new SqlConnection("Server=localhost;Database=myDataBase;User Id=myUsername;Password=myPassword;");

        [HttpGet]
        public IHttpActionResult GetUser(string userId)
        {
            string query = $"SELECT * FROM Users WHERE UserId = '{userId}'";
            var command = new SqlCommand(query, _connection);
            _connection.Open();
            var reader = command.ExecuteReader();
            
            while (reader.Read())
            {
                // Return user data
            }

            _connection.Close();
            return Ok();
        }
    }
}