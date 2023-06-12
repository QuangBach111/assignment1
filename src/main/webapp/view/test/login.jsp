<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: buiqu
  Date: 6/12/2023
  Time: 9:53 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
	<title>Login</title>
</head>
<body>
<form action="<c:url value="/login-test"/>"
      method="post">
	<input name="name" placeholder="name">
	<input name="role" placeholder="role">
	<button type="submit">Login</button>
</form>
</body>
</html>