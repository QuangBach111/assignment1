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
	<%--   library--%>
	<%@include file="/common/lib-header.jsp" %>
</head>
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
		<%--Table Content View--%>
		<section>
			<div class="modal-header">
				<h1 class="modal-title" style="margin-left: -20px; width: 800px; border-bottom: 1px solid black;">View Content</h1>
			</div>
			<div style="width: 1000px; border: 1px solid black;">
				<p style="border-bottom: 1px solid black; height: 50px; padding-top: 13px; padding-left: 20px; background-color: #F5F5F5;">View Content List</p>
				<table class="table table-striped">
					<thead>
					<tr>
						<th scope="col">#</th>
						<th scope="col">Title</th>
						<th scope="col">Brief</th>
						<th scope="col">Created Date</th>
						<th scope="col">Content</th>
						<th scope="col">Action</th>
					</tr>
					</thead>
					<tbody>
					<c:forEach items="${listS}" var="x">
					<tr>
						<th scope="row">${x.id}</th>
						<td>${x.title}</td>
						<td>${x.brief}</td>
						<td>${x.createDate}</td>
						<td>${x.content}</td>
						<td style="width: 170px;">
							<a href="<c:url value="/update?cid=${x.id}"/>" class="bg-info" data-target="#editModal" style="color: white; text-decoration: none">Edit</a>
							<a href="#" onclick="showMess(${x.id})"  class="bg-danger" data-target="#deleteModal" style="color: white; text-decoration: none">Delete</a></td>
					</tr>
					</c:forEach>
					</tbody>
				</table>
			</div>

		</section>

		<%--   content-right--%>
		<div class="col-sm-9">

		</div>
	</div>

	<%--   Library footer--%>
	<%@include file="/common/lib-footer.jsp" %>
</div>
</body>
<script>
	function showMess(id){
		var option = confirm("Are you sure to delete?");
		if(option === true){
			window.location.href ='delete?cid='+id;
		}
	}
</script>
</html>

