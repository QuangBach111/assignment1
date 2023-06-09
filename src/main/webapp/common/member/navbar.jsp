<%--
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
    </head>
    <body>
    <div class="container-fluid">
        <nav class="navbar navbar-light bg-light justify-content-between">
            <a href="editprofile.html" class="navbar-brand">CMS</a>
            <form class="form-inline">
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
            </form>
        </nav>
    </div>
    <%@include file="../lib-footer.jsp"%>
    </body>
</html>