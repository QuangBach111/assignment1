package com.example.assignment1.controller.member.user;

import com.example.assignment1.dao.impl.UserDaoImpl;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet(name = "loginServlet" ,value = "login-servlet")
public class LoginServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
       super.doGet(req, resp);
    }
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        UserDaoImpl userDao = new UserDaoImpl();
        String usernameOrEmail = req.getParameter("signInEmailOrUsername");
        String password = req.getParameter("signInPassword");

        if(userDao.checkLoginByUsername(usernameOrEmail, password)){
            req.setAttribute("success", "Login Success");
            RequestDispatcher requestDispatcher = getServletContext().getRequestDispatcher("/index.jsp");
            requestDispatcher.forward(req, resp);
        } else if(userDao.checkLoginByEmail(usernameOrEmail, password)){
            req.setAttribute("success", "Login Success");
            RequestDispatcher requestDispatcher = getServletContext().getRequestDispatcher("/index.jsp");
            requestDispatcher.forward(req, resp);
        } else {
            req.setAttribute("error", "Username/email or password is incorrect");
            RequestDispatcher requestDispatcher = getServletContext().getRequestDispatcher("/login.jsp");
            requestDispatcher.forward(req, resp);
        }
    }
}
