import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

class VulnerableServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String userInput = request.getParameter("userInput");
        String query = "SELECT * FROM users WHERE username='" + userInput + "'";
        // execute the query here
    }
}