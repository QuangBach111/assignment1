<%--
  Created by IntelliJ IDEA.
  User: buiqu
  Date: 12-06-2023
  Time: 02:56
  To change this template use File | Settings | File Templates.
--%>
<html>
<head>
    <%@include file="../lib-header.jsp"%>
  <script>
    window.onload = function() {
      let errorMessage = "${requestScope.error}";
      if (errorMessage) {
        alert(errorMessage);
      }
    };
  </script>
    <title>Register Page</title>
</head>
<body>
<% String error = (String) request.getAttribute("error"); %>
<% String success = (String) request.getAttribute("success"); %>
<div class="wrapper">
  <div class="container-fluid">
    <div class="row justify-content-around">
      <div class="col-md-15">
        <div class="card mt-4 mt-5">
          <div class="card-header"><strong>Register</strong></div>
          <div class="card-body">
            <form action="${pageContext.request.contextPath}/register-servlet" onsubmit="return validateRegisterForm()"  method="post">
              <div class="form-group">
                <input type="text" class="form-control" id="registerUserName"
                       name="registerUserName" placeholder="User name" size="50" minlength="3"
                       maxlength="30" >
                <div id="checkRegisterUserName" class="text-danger"></div>
              </div>
              <div class="form-group">
                <input type="text" class="form-control" id="registerEmail" name="registerEmail"
                       placeholder="E-mall" size="50"  >
                <div id="checkRegisterEmail" class="text-danger"></div>
              </div>
              <div class="form-group">
                <input type="password" class="form-control" id="registerPassword"
                       name="registerPassword" placeholder="Password" size="50"
                       maxlength="30" >
                <div id="checkRegisterPassword" class="text-danger"></div>
              </div>
              <div class="form-group">
                <input type="password" class="form-control" id="registerConfirmPassword"
                       name="registerConfirmPassword" maxlength="30" placeholder="Re Password">
                <div  id="checkRegisterConfirmPassword" class="text-danger"></div>
              </div>
              <div>
                <span class="text-danger">${requestScope.error}</span>
                <span class="text-success">${requestScope.success}</span>
              </div>
              <button type="submit" id="registerButton" class="btn btn-primary btn-success btn-block">Register</button>
              <div class="register-link">
                <a href="login.jsp">Click here to login</a>
              </div>
            </form>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
    <%@include file="../lib-footer.jsp"%>
    <script src="${pageContext.request.contextPath}/vendor/js/register.js"></script>
</body>
</html>
