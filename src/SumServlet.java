import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
//square of sum of two number using doGet Method
//by Yash Goswami
@WebServlet("/SumServlet")
public class SumServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int i=Integer.parseInt(request.getParameter("num1"));
        int j=Integer.parseInt(request.getParameter("num2"));
        int k=i+j;
        k=k*k;
        PrintWriter out=response.getWriter();
        response.setContentType("text/html");
        out.println("<h2>Square of sum of "+i+" and "+j+" is -: " +k+"</h2>");
    }


}
