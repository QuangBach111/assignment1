<%--
  Created by IntelliJ IDEA.
  User: buiqu
  Date: 10-06-2023
  Time: 01:59
  To change this template use File | Settings | File Templates.
--%>
<html>
<head>
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
            <i class="fa-solid fa-right-to-bracket"></i> Login
          </a>
          <div class="dropdown-menu">
            <a class="dropdown-item" href="login.jsp">
              <i class="fa-solid fa-right-to-bracket"></i> Login
            </a>
            <div class="dropdown-divider"></div>
            <a class="dropdown-item" href="register.jsp">
              <i class="fa-solid fa-registered"></i> Register
            </a>
        </div>
      </form>
    </nav>
  </div>
  <%@include file="../lib-footer.jsp"%>
  </body>
  </html>
</head>
<body>

</body>
</html>
