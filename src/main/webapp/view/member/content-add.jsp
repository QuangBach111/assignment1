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
			<!DOCTYPE html>
			<html>

			<head>
				<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css"
					  integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
				<link rel="stylesheet" href="style.css">
				<title>Content Form Element</title>
			</head>
			<body>
			<header>
				CMS
			</header>
			<h1 style="text-align: center;">Add content</h1>
			<div class="container">
				<h2>Content Form Element</h2>
				<%
					if (messageError != null) {
				%>
				<p class="text-danger text-center">
					<%=messageError%>
				</p>
				<%
					}
				%>
				<%
					if(messageSuccess != null) {
				%>
				<p class="text-success text-center">
					<%=messageSuccess%>
				</p>
				<%
					}
				%>
				<form action="${pageContext.request.contextPath}/content-add"
					  method="post">
					<label for="title">Title:</label>
					<input type="text" id="title" name="title" placeholder="Enter the title" required>

					<label for="brief">Brief:</label>
					<input type="text" id="brief" name="brief" placeholder="" required>

					<label for="content">Content:</label>
					<textarea id="content" name="content" placeholder="" required></textarea>

					<div class="button-container">
						<button type="submit">Create</button>
						<button type="reset">Reset</button>
					</div>
				</form>

			</div>
			</body>
			<style>
				header, footer {
					padding: 0.5em;
					color: rgb(63, 62, 62);
					background-color: rgb(222, 221, 221);
					clear: left;
				}
				.container {
					width: 1000px;
					margin: 0 auto;
					padding: 20px;
					border: 1px solid #ccc;
					background-color: #f4f4f4;
				}

				.container h2 {
					margin-top: 0;
				}

				.container label,
				.container input,
				.container textarea {
					display: block;
					margin-bottom: 10px;
				}

				.container input[type="text"],
				.container textarea {
					width: 100%;
					padding: 5px;
				}

				.container .button-container {
					text-align: center;
					margin-top: 20px;
				}

				.container button {
					padding: 10px 20px;
					margin-right: 10px;
					background-color: #00ec4f;
					color: rgb(255, 255, 255);
					border: none;
					cursor: pointer;
				}


				.container button:hover {
					background-color: #1dfd00;
				}

				.container .search-container {
					display: flex;
					align-items: center;
					justify-content: flex-start;
					margin-bottom: 10px;
				}

				.container .search-container input[type="text"] {
					margin-right: 10px;
					width: 200px;
				}
				/* .container button[type="submit"] {
                  background-color: #027d1b;
                } */

				.container button[type="reset"] {
					background-color: #fb0000;
				}
			</style>
			</html>
<%--		<div class="col-sm-9">--%>
<%--			<%--%>
<%--				boolean user = false;--%>
<%--			%>if (user == null) {--%>
<%--			<h1>No login</h1>--%>
<%--			} else {--%>
<%--			<h2>Login</h2>--%>
<%--			}<%%>--%>
<%--		</div>--%>
	</div>
</div>
</body>
</html>