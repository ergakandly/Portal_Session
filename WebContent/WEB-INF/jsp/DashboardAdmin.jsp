<%@ taglib uri="/WEB-INF/tld/struts-html.tld" prefix="html" %>
<%@ taglib uri="/WEB-INF/tld/struts-logic.tld" prefix="logic" %>
<%@ taglib uri="/WEB-INF/tld/struts-bean.tld" prefix="bean" %>

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

<style>
table th {
	background-color: black;
	color: white;
	align: center;
}

.table-nonfluid {
	width: auto !important;
}
</style>

<title>Dashboard Admin</title>
</head>

<script type="text/javascript">
	function flyToPage(task, id) {
	    	document.forms[0].task.value=task;
	    	document.forms[0].id.value=id;
	 		document.forms[0].submit();	 	
	}
</script>

<body>

<html:form method="post" action="/portal">
<html:hidden name="PortalForm" property="task"/>
<html:hidden name="PortalForm" property="id"/>

	<!-- NAVBAR -->
	<nav class="navbar navbar-inverse navbar-fixed-top">
	<div class="container-fluid">
		<div class="navbar-header">
			<a class="navbar-brand"> HRIS Dashboard </a>
		</div>

		<div class="collapse navbar-collapse"
			id="bs-example-navbar-collapse-1">
			<!-- 			<ul class="nav navbar-nav"> -->
			<!-- 				<li class="active"><a href="#"> <span -->
			<!-- 						class="glyphicon glyphicon-user"></span> Employees <span -->
			<!-- 						class="sr-only">(current)</span> -->
			<!-- 				</a></li> -->
			<!-- 				<li><a href="javascript:flyToPage('showListDept');"> <span -->
			<!-- 						class="glyphicon glyphicon-check"></span> Attendance -->
			<!-- 				</a></li> -->
			<!-- 				<li><a href="javascript:flyToPage('showListDept');"> <span -->
			<!-- 						class="glyphicon glyphicon-send"></span> Leave -->
			<!-- 				</a></li> -->
			<!-- 			</ul> -->

			<ul class="nav navbar-nav navbar-right">
				<!-- 				<li class="dropdown"><a href="#" class="dropdown-toggle" -->
				<!-- 					data-toggle="dropdown"><span class="glyphicon glyphicon-user"></span> -->
				<!-- 						Nama User <b class="caret"></b></a> -->
				<!-- 					<ul class="dropdown-menu"> -->
				<!-- 						<li><a href="#"><span class="glyphicon glyphicon-user"></span> -->
				<!-- 								Profile</a></li> -->
				<!-- 						<li><a href="#"><span class="glyphicon glyphicon-wrench"></span> Settings</a> -->
				<!-- 						</li> -->
				<!-- 						<li class="divider"></li> -->
				<!-- 						<li><a href="#"><span class="glyphicon glyphicon-log-out"></span> Log -->
				<!-- 								Out</a></li> -->
				<!-- 					</ul></li> -->
			</ul>
		</div>
	</div>
	</nav>
	<!-- END NAVBAR -->
	<br />
	<br />
	<!-- CONTAINER -->
	<div class="container-fluid well">
		<!--wadah-->
		<div class="row">
			<div class="col-md-12">
				<h3>Menu Admin</h3>
				<hr>
			</div>
		</div>
		<div class="row">
			<div class="col-md-12">
				<div class="tab-content">
					<div class="tab-pane active" id="dashboard">
						<br> <br> <br>

						<!-- MENU COLUMN -->
						<div class="col-md-8">
							<center>
								<button type="button" class="btn btn-primary">
									<a href="javascript:flyToPage('masterRole');" style="color: white;">
									<span class="glyphicon glyphicon-asterisk" aria-hidden="true"></span>
									Master Role
									</a>
								</button>
								<br /> <br />
								<table align="center"
									class="table table-nonfluid table-striped table-bordered table-hover"
									width="70%">
									<tr>
										<th>Employee Name</th>
										<th>Role</th>
										<th>Button Action</th>
									</tr>

									<tr>
										<td>Employee 1</td>
										<td>Role 1</td>
										<td>
											<button type="button" class="btn btn-info" onclick="#">
												<span class="glyphicon glyphicon-pencil" aria-hidden="true"></span>
												Edit
											</button>
											<button type="button" class="btn btn-danger" onclick="#">
												<span class="glyphicon glyphicon-remove" aria-hidden="true"></span>
												Delete
											</button>
										</td>
									</tr>

									<tr>
										<td>Employee 2</td>
										<td>Role 2</td>
										<td>
											<button type="button" class="btn btn-info" onclick="#">
												<span class="glyphicon glyphicon-pencil" aria-hidden="true"></span>
												Edit
											</button>
											<button type="button" class="btn btn-danger" onclick="#">
												<span class="glyphicon glyphicon-remove" aria-hidden="true"></span>
												Delete
											</button>
										</td>
									</tr>

									<tr>
										<td>Employee 3</td>
										<td>Role 3</td>
										<td>
											<button type="button" class="btn btn-info" onclick="#">
												<span class="glyphicon glyphicon-pencil" aria-hidden="true"></span>
												Edit
											</button>
											<button type="button" class="btn btn-danger" onclick="#">
												<span class="glyphicon glyphicon-remove" aria-hidden="true"></span>
												Delete
											</button>
										</td>
									</tr>

								</table>
							</center>
						</div>

						<!-- MENU USER -->
						<div class="col-md-4">
							<ul class="nav nav-stacked nav-pills">
								<li class="active"><a href="index.html"> <span
										class="glyphicon glyphicon-user"></span> &nbsp; Hi, Admin
								</a></li>
								<li><a href="#"> <span class="glyphicon glyphicon-edit"></span>
										&nbsp; Edit Profile
								</a></li>
								<li><a href="#"> <span class="glyphicon glyphicon-flag"></span>
										&nbsp; Notification
								</a></li>
								<li><a href="#"> <span
										class="glyphicon glyphicon-log-out"></span> &nbsp; Logout
								</a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	</html:form>
</body>
</html>