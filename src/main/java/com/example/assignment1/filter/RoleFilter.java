package com.example.assignment1.filter;

import com.example.assignment1.util.Constants;
import jakarta.servlet.*;
import jakarta.servlet.annotation.WebFilter;
import jakarta.servlet.http.HttpServletRequest;

import java.io.IOException;
@WebFilter(urlPatterns = {"/login-test"})

public class RoleFilter implements Filter {
    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
        System.out.println("do filter");

        String role = request.getParameter("role");
        System.out.println("role: " + role);
        if(role.equals(Constants.ROLE_ADMIN)) {
            request.getRequestDispatcher("/login-test-admin").forward(request,response);
        }else {
            request.getRequestDispatcher("/login-test").forward(request,response);
        }
//        chain.doFilter(request, response);
    }

}