package com.org.jsp.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet(name = "LoginServlet", urlPatterns = {"/LoginServlet"})
public class LoginServlet extends HttpServlet {
    
    private final String userID = "admin";
    private final String password = "password";

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException 
    {
        
    }


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException 
    {
        response.setContentType("text/html; charset=utf-8");
        String user = (String) request.getParameter("username");
        String pass = (String) request.getParameter("pass");
        
        if(user.equals(userID) && pass.equals(password))
        {
            HttpSession session = request.getSession();
            session.setAttribute("user", "Mustafa");
            //session ömrü 30 dakika olarak ayarlanır:
            session.setMaxInactiveInterval(30*60);
            Cookie userName = new Cookie("user", user);
            userName.setMaxAge(30*60);
            response.addCookie(userName);
            response.sendRedirect("LoginSuccess.jsp");
        }
        else
        {
            RequestDispatcher rd = getServletContext().getRequestDispatcher("/login.html");
            PrintWriter out = response.getWriter();
            out.println("<font color=red>Kullanıcı adı veya parolanız hatalı!</font>");
            rd.include(request, response);
        }
    }
}
