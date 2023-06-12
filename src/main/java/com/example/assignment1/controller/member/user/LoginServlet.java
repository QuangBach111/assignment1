package com.example.assignment1.controller.member.user;

import com.example.assignment1.dao.impl.UserDaoImpl;
import com.example.assignment1.model.User;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

@WebServlet(name = "loginServlet" ,value = "/login-servlet")
public class LoginServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
       super.doGet(req, resp);
    }
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        UserDaoImpl userDao = new UserDaoImpl();
        User user = new User();
        String usernameOrEmail = req.getParameter("signInEmailOrUsername");
        String password = req.getParameter("signInPassword");
        HttpSession session = req.getSession();
        if(session.getAttribute("user") == null) {
            if (userDao.checkLoginByUsername(usernameOrEmail, password)) {
                req.setAttribute("success", "Login Successfully");
                user = userDao.getUserByUsername(usernameOrEmail);
                session.setAttribute("user", user);
                RequestDispatcher requestDispatcher = getServletContext().getRequestDispatcher("/view/admin/index.jsp");
                requestDispatcher.forward(req, resp);
            } else if (userDao.checkLoginByEmail(usernameOrEmail, password)){
                user = userDao.getUserByEmail(usernameOrEmail);
                session.setAttribute("user", user);
                req.setAttribute("success", "Login Successfully");
                RequestDispatcher requestDispatcher = getServletContext().getRequestDispatcher("/view/admin/index.jsp");
                requestDispatcher.forward(req, resp);
            } else {
                req.setAttribute("error", "Username/email or password is incorrect");
                RequestDispatcher requestDispatcher = getServletContext().getRequestDispatcher("/common/member/login.jsp");
                requestDispatcher.forward(req, resp);
            }
        }

    }
}
