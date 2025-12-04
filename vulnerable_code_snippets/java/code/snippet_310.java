import javax.servlet.*;
import javax.servlet.http.*;
import java.io.*;

class XssServlet extends HttpServlet {
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String searchQuery = request.getParameter("search");
        PrintWriter out = response.getWriter();
        out.println("<html><body>");
        out.println("Your search query is: " + searchQuery);
        out.println("</body></html>");
    }
}