package com.example.assignment1.controller.member.user;

import com.example.assignment1.dao.impl.UserDaoImpl;
import com.example.assignment1.model.User;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "registerServlet", value = "/register-servlet")
public class RegisterServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException{
        super.doGet(req, resp);
    }
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException{
        UserDaoImpl userDao = new UserDaoImpl();
        String username = req.getParameter("registerUserName");
        String email = req.getParameter("registerEmail");
        String password = req.getParameter("registerPassword");

        if(userDao.checkRegisterEmail(email)){
            req.setAttribute("error", "Username or email already exists");
            RequestDispatcher requestDispatcher = getServletContext().getRequestDispatcher("/common/member/register.jsp");
            requestDispatcher.forward(req, resp);
        } else if (userDao.checkRegisterUsername(username)){
            req.setAttribute("error", "Username or email already exists");
            RequestDispatcher requestDispatcher = getServletContext().getRequestDispatcher("/common/member/register.jsp");
            requestDispatcher.forward(req, resp);
        } else {
            req.setAttribute("success", "Register successfully");
            req.setAttribute("email", email);
            User user = new User();
            user.setUsername(username);
            user.setEmail(email);
            user.setPassword(password);
            userDao.saveUser(user);
            RequestDispatcher requestDispatcher = getServletContext().getRequestDispatcher("/common/member/login.jsp");
            requestDispatcher.forward(req, resp);
        }
    }
}
