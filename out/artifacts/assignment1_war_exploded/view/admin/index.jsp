<%--
  Created by IntelliJ IDEA.
  User: buiqu
  Date: 6/10/2023
  Time: 4:35 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset-UTF-8" pageEncoding="UTF-8" %>
<html>
<head>
	<title>Title</title>
    <%@include file="/common/lib-header.jsp"%>
    <script>
        window.onload = function() {
            let successMessage = "${requestScope.success}";
            if (successMessage) {
                alert(successMessage);
            }
        };
    </script>
</head>
<body>
    <%@include file="/common/member/navbar.jsp"%>
    <%@include file="/common/member/navbar-left.jsp"%>
    <h1>Hello World</h1>
    <%@include file="/common/lib-footer.jsp"%>
</body>
</html>