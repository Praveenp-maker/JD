package controller;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
 
@WebServlet("/login")
public class LoginServlet extends HttpServlet {
public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {  
String email = request.getParameter("email");
int i = ValidateServlet.checkUser(email);
if(i==1 || i==0) {
HttpSession session = request.getSession();
session.setAttribute("email", email);
response.sendRedirect("home.html");
}
else  {
response.sendRedirect("index.jsp");
}
}
}