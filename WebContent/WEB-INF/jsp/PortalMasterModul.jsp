<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<!-- BOOTSTRAP -->
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
<!-- END BOOTSTRAP -->

<!-- CSS -->
<link rel="stylesheet" type="text/css" href="mystyle.css">

<title>Master Moduls</title>
</head>
<body>
	<html:form method="post" action="/portal">
		<html:hidden name="PortalForm" property="task" />
		<html:hidden name="PortalForm" property="id" />

		<%@include file="PartNavbar.jsp"%>

		<br />
		<br />
		<!-- CONTAINER -->
		<div class="container-fluid">

			<!-- ROW 12 -->
			<div class="row">
				<div class="col-md-12">
					<h3>Modules</h3>
					<hr>

					<!-- BREADCRUMB -->
					<ul class="breadcrumb">
						<li><span class="glyphicon glyphicon-dashboard"></span><a
							href="#"> Dashboard</a></li>
						<li><span class="glyphicon glyphicon-th-large"></span>
							Modules</li>
					</ul>
					<!-- END BREADCRUMB -->

				</div>
			</div>
			<!-- END ROW 12 -->
			<br />
			<!-- ROW MD6 OFFSET3 -->
			<div class="row">
				<div class="col-md-6 col-md-offset-3 div-center">
					<center>
						<button type="button" class="btn btn-primary">
							<a href="javascript:flyToPage('masterRole');"
								style="color: white;"> <span
								class="glyphicon glyphicon-plus"></span> Add
								New Modul
							</a>
						</button>
					</center>

					<br /> <br />
					<table
						class="table table-nonfluid table-striped table-bordered table-hover tengah"
						width="70%">
						<tr>
							<th>Modul Name</th>
							<th>Button Action</th>
						</tr>

						<tr>
							<td>Employee</td>
							<td class="width30">
								<button type="button" class="btn btn-info" onclick="">
									<span class="glyphicon glyphicon-pencil"></span> Edit
								</button>
								<button type="button" class="btn btn-danger" onclick="">
									<span class="glyphicon glyphicon-remove"></span> Delete
								</button>
							</td>
						</tr>

						<tr>
							<td>Attendance</td>
							<td>
								<button type="button" class="btn btn-info" onclick="">
									<span class="glyphicon glyphicon-pencil"></span> Edit
								</button>
								<button type="button" class="btn btn-danger" onclick="">
									<span class="glyphicon glyphicon-remove"></span> Delete
								</button>
							</td>
						</tr>

						<tr>
							<td>Leave</td>
							<td>
								<button type="button" class="btn btn-info" onclick="">
									<span class="glyphicon glyphicon-pencil"></span> Edit
								</button>
								<button type="button" class="btn btn-danger" onclick="">
									<span class="glyphicon glyphicon-remove"></span> Delete
								</button>
							</td>
						</tr>
					</table>
				</div>

			</div>
			<!-- ROW MD6 OFFSET3 -->
		</div>
	</html:form>
</body>
</html>