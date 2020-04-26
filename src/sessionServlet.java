import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/sessionServlet")
public class sessionServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //calling page using RequestDispatcher and setting session variable
        //yash goswami
        String name="yash goswami";
        HttpSession session=request.getSession();
        session.setAttribute("name",name);
        RequestDispatcher rd=request.getRequestDispatcher("2nd_page.jsp");
        rd.forward(request,response);
    }

}
