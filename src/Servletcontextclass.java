import javax.servlet.ServletConfig;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name="Servletcontextclass",urlPatterns = {"/Servletcontextclass"})
public class Servletcontextclass extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Servlet config parameter
        //yash goswami
        ServletConfig con = getServletConfig();
        String name = con.getInitParameter("name");
        PrintWriter out=response.getWriter();
        out.println("Servlet config paramater name -:"+name);
    }


}
