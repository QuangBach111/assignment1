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
    <%@include file="../lib-header.jsp"%>
</head>
<body>
<% String error = request.getAttribute("error")!=null ? request.getAttribute("error").toString():""; %>
<% String success = request.getAttribute("success")!=null ? request.getAttribute("success").toString():""; %>
<div class="wrapper">
    <div class="container-fluid">
        <div class="row justify-content-around">
            <div class="col-md-15">
                <div class="card mt-4 mt-5">
                    <div class="card-header"><strong>Please Sign in</strong></div>
                    <div class="card-body">
                        <form action ="${pageContext.request.contextPath}/login-servlet" method="post">
                            <div class="form-group">
                                <input type="text" class="form-control" id="signInEmail" name="signInEmailOrUsername"
                                       placeholder="E-mall or username" size="50" maxlength="50" required>
                            </div>
                            <div class="form-group">
                                <input type="password" class="form-control" id="signInPassword"
                                       name="signInPassword" placeholder="Password" size="50"
                                       maxlength="30" required>
                            </div>
                            <div class="form-group form-check">
                                <input type="checkbox" class="form-check-input" name="signInRemember"
                                       id="signInRemember">
                                <label for="signInRemember" class="form-check-label">Remember me</label>
                            </div>
                            <div>
                                <span class="text-danger"><%=error%></span>
                            </div>
                            <button type="submit" class="btn btn-primary btn-success btn-block">Login</button><br>
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
<%@include file="../lib-footer.jsp"%>
</body>
</html>
