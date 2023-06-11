<%--
  Created by IntelliJ IDEA.
  User: buiqu
  Date: 12-06-2023
  Time: 02:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <%@include file="../lib-header.jsp"%>
    <title>Register Page</title>
</head>
<body>
<div class="wrapper">
  <div class="container-fluid">
    <div class="row justify-content-around">
      <div class="col-md-15">
        <div class="card mt-4 mt-5">
          <div class="card-header"><strong>Register</strong></div>
          <div class="card-body">
            <form>
              <div class="form-group">
                <input type="text" class="form-control" id="registerUserName"
                       name="registerUserName" placeholder="User name" size="50" minlength="3"
                       maxlength="30" required>
              </div>
              <div class="form-group">
                <input type="email" class="form-control" id="registerEmail" name="registerEmail"
                       placeholder="E-mall" size="50" minlength="5" required>
              </div>
              <div class="form-group">
                <input type="password" class="form-control" id="registerPassword"
                       name="registerPassword" placeholder="Password" size="50" minlength="8"
                       maxlength="30" required>
              </div>
              <div class="form-group">
                <input type="password" class="form-control" id="reEnterPassword"
                       name="reEnterPassword" minlength="8" maxlength="30" placeholder="Re Password"
                       required>
              </div>
              <button type="submit"
                      class="btn btn-primary btn-success btn-block">Register</button><br>
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
</body>
</html>
