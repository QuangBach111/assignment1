<%@ page import="com.example.assignment1.model.User" %><%--
  Created by IntelliJ IDEA.
  User: buiqu
  Date: 6/9/2023
  Time: 8:12 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
	<title>Title</title>
	<%--	library--%>
	<%@include file="/common/lib-header.jsp" %>
</head>
<%
	// show message
	String messageError = (String) request.getAttribute("messageError");
	String messageSuccess = (String) request.getAttribute("messageSuccess");
%>
<body>
<div class="container-fluid">
	<%--  Navbar--%>
	<%@include file="/common/member/navbar.jsp" %>
	<%--Content--%>
	<div class="row">
		<%--    Navbar left--%>
		<div class="col-sm-3">
			<%@include file="/common/member/navbar-left.jsp" %>
		</div>

		<%--	content-right--%>
		<div class="col-sm-9">
			<h2>From</h2>
			<%
				if (messageError != null) {
			%>
			<p class="text-danger">
				<%=messageError%>
			</p>
			<%
				}
			%>
			<%
				if(messageSuccess != null) {
			%>
			<p class="text-success">
				<%=messageSuccess%>
			</p>
			<%
				}
			%>
			<form action="">

			</form>
		</div>
	</div>
</div>
</body>
</html>