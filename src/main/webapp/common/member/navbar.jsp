<%@ page import="com.example.assignment1.model.User" %><%--
  Created by IntelliJ IDEA.
  User: buiqu
  Date: 6/9/2023
  Time: 8:04 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset-UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
    <head>
        <%@include file="../lib-header.jsp"%>
        <link rel="stylesheet" href="${pageContext.request.contextPath}/vendor/css/navbar.css">
        <title>Member Navigation Bar</title>
    </head>
    <%
        User user = (User) session.getAttribute("user");
    %>
    <body>
    <div class="container-fluid">
        <nav class="navbar navbar-light bg-light justify-content-between">
            <a href="home.html" class="navbar-brand">CMS</a>
            <form class="form-inline">
                <% if (user == null) { %>
                <div class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" role="button" data-toggle="dropdown"
                       aria-expanded="false">
                        <i class="fa-solid fa-bars"></i> Menu
                    </a>
                    <div class="dropdown-menu">
                        <a class="dropdown-item" id="loginModalLink" data-toggle="modal" data-target="#loginModal" href="#">
                            <i class="fa-solid fa-right-to-bracket"></i> Login
                        </a>
                        <div class="dropdown-divider"></div>
                        <a class="dropdown-item" href="register.jsp">
                            <i class="fa-solid fa-registered"></i> Register
                        </a>
                    </div>
                </div>
                <% } else { %>
                <div class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" role="button" data-toggle="dropdown"
                       aria-expanded="false">
                        <i class="fa-solid fa-user"></i> User Name
                    </a>
                    <div class="dropdown-menu">
                        <a class="dropdown-item" href="userprofile.jsp">
                            <i class="fa-solid fa-user"></i> User Profile
                        </a>
                        <div class="dropdown-divider"></div>
                        <a class="dropdown-item" href="editprofile.jsp">
                            <i class="fa-solid fa-pen-to-square"></i> Edit Profile
                        </a>
                        <div class="dropdown-divider"></div>
                        <a class="dropdown-item" href="home.jsp">
                            <i class="fa-solid fa-right-from-bracket"></i> Logout
                        </a>
                    </div>
                </div>
                <% } %>
            </form>
        </nav>
    </div>
    <%@include file="../lib-footer.jsp"%>
    </body>
</html>