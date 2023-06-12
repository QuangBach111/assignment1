<%--
  Created by IntelliJ IDEA.
  User: buiqu
  Date: 6/10/2023
  Time: 4:35 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
 Welcome <% String username = request.getAttribute("username")!=null ? request.getAttribute("success").toString():""; %>
</body>
</html>