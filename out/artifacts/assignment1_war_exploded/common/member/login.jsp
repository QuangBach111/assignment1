<%--
  Created by IntelliJ IDEA.
  User: buiqu
  Date: 10-06-2023
  Time: 21:13
  To change this template use File | Settings | File Templates.
--%>
<html>
<head>
    <title>Login Page</title>
    <script>
        window.onload = function() {
            let successMessage = "${requestScope.success}";
            if (successMessage) {
                alert(successMessage);
            }
            let errorMessage = "${requestScope.error}";
            if (errorMessage) {
                alert(errorMessage);
            }
        };
    </script>
    <%@include file="../lib-header.jsp"%>
</head>
<body>
<%--<% String error = (String) request.getAttribute("error"); %>--%>
<%--<% String success = (String) request.getAttribute("success"); %>--%>

<div class="wrapper">
    <div class="container-fluid">
        <div class="row justify-content-around">
            <div class="col-md-15">
                <div class="card mt-4 mt-5">
                    <div class="card-header"><strong>Please Sign in</strong></div>
                    <div class="card-body">
                        <form action ="${pageContext.request.contextPath}/login-servlet" onsubmit="return validateLoginForm()" method="post">
                            <div class="form-group">
                                <input type="text" class="form-control" id="signInEmailOrUsername" name="signInEmailOrUsername"
                                       placeholder="E-mall or username" size="50" maxlength="50" value="${requestScope.email}" >
                            </div>
                            <div id="checkSignInAccount" class="text-danger"></div>
                            <div class="form-group">
                                <input type="password" class="form-control" id="signInPassword"
                                       name="signInPassword" placeholder="Password" size="50"
                                       maxlength="30" >
                            </div>
                            <div id="checkSignInPassword" class="text-danger"></div>
                            <div class="form-group form-check">
                                <input type="checkbox" id="rememberMe" name="rememberMe">
                                <label for="rememberMe">Remember Me</label>
                            </div>
<%--                          <div>--%>
<%--                             <span class="text-danger">${requestScope.error}</span>--%>
<%--                            <span class="text-success">${requestScope.success}</span>--%>
<%--                            </div>--%>
                            <button type="submit" id="loginButton" class="btn btn-primary btn-success btn-block">Login</button><br>
                            <div class="register-link">
                                <a href="register.jsp">Click here to Register</a>
                            </div>
                        </form>
                    </div>
                </div>
            </div>

        </div>
    </div>
</div>
<script src="${pageContext.request.contextPath}/vendor/js/login.js"></script>

<%@include file="../lib-footer.jsp"%>
</body>
</html>
