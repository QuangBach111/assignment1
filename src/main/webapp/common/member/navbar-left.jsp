<%--
  Created by IntelliJ IDEA.
  User: buiqu
  Date: 6/9/2023
  Time: 8:05 PM
  To change this template use File | Settings | File Templates.
--%>
<html>
<head>
	<%@include file="../lib-header.jsp"%>
	<link rel="stylesheet" href="${pageContext.request.contextPath}/vendor/css/navbar-left.css">
</head>
<body>
	<div class="row">
		<div class="col-md-2">
			<div class="sidebar">
				<ul class="nav flex-column">
					<li>
						<div class="dropdown-divider"></div>
					</li>
					<li>
						<form class="form-inline my-2 my-lg-0">
							<input class="form-control mr-sm-2" type="search" placeholder="Search">
							<button class="btn btn-outline-success my-2 my-sm-0" type="button"><i
									class="fa-solid fa-magnifying-glass"></i></button>
						</form>
					</li>
					<li>
						<div class="dropdown-divider"></div>
					</li>
					<li>
						<a class="dropdown-item text-primary" href="viewcontent.html">
							<i class="fa-solid fa-table-cells"></i> View contents
						</a>
					</li>
					<li>
						<div class="dropdown-divider"></div>
					</li>
					<li>
						<a class="dropdown-item text-primary" href="formcontent.html">
							<i class="fa-regular fa-pen-to-square"></i> Form content
						</a>
					</li>
					<li>
						<div class="dropdown-divider"></div>
					</li>
				</ul>
			</div>
		</div>
	</div>
	<%@include file="../lib-footer.jsp"%>
</body>
<script src=""></script>
</html>