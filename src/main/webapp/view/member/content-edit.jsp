<%--
  Created by IntelliJ IDEA.
  User: buiqu
  Date: 6/9/2023
  Time: 8:35 PM
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
	int id = Integer.parseInt(request.getParameter("cid"));
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
			<div style="width: 800px; border: 1px solid black;">
			<form action="update" method="post">
				<table class="table table-striped">
					<tr>
						<th scope="col">#</th>
						<td>
							<input style="width: 100%" value="${ct.id}" type="text" name="id" readonly>
						</td>
					</tr>
					<tr>
						<th scope="col">Title</th>
						<td>
							<input style="width: 100%" value="${ct.title}" type="text" name="title">
						</td>
					</tr>

					<tr>
						<th scope="col">Brief</th>
						<td>
							<input style="width: 100%" value="${ct.brief}" type="text" name="brief">
						</td>
					</tr>

					<tr>
						<th scope="col">Created Date</th>
						<td>
							<input style="width: 100%" value="${ct.createDate}" type="text" name="createdate" readonly>
						</td>
					</tr>

					<tr>
						<th scope="col">Content</th>
						<td>
							<input style="width: 100%" value="${ct.content}" type="text" name="content">
						</td>
					</tr>
					<tr>
						<th scope="col">Action</th>
						<td><button type="submit">Update</button></td>
					</tr>
				</table>
			</form>
			</div>
		</div>
	</div>
</div>
</body>
</html>