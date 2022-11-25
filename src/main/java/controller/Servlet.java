package controller;   
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
 
@WebServlet("/home")
public class Servlet extends HttpServlet {
public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {  
response.setContentType("text/html");
PrintWriter pr = response.getWriter();
HttpSession session = request.getSession(false);
if(session != null) 
{
    String email = (String) session.getAttribute("Email");
    pr.print("Welcome " + email);
    response.sendRedirect("Home.html");
    //pr.print("<br/><a href=\"logout\">Logout</a>");
}
else 
{
    response.sendRedirect("index.jsp");
}
//response.sendRedirect("home.html");
pr.close();
}
}
