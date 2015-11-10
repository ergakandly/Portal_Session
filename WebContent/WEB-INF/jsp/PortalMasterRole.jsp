<%@ taglib uri="/WEB-INF/tld/struts-bean.tld" prefix="bean"%>
<%@ taglib uri="/WEB-INF/tld/struts-html.tld" prefix="html"%>
<%@ taglib uri="/WEB-INF/tld/struts-logic.tld" prefix="logic"%>
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

<title>Master Role</title>
</head>
<body>
<!-- NAVBAR -->
<nav class="navbar navbar-inverse navbar-fixed-top">
<div class="container-fluid">
	<div class="navbar-header">
		<a class="navbar-brand"> HRIS Dashboard </a>
	</div>

	<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
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
			<button type="button" class="btn btn-info" onclick="#">
				Back
			</button>
			<h3>Master Role</h3>
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
							<button type="button" class="btn btn-primary" onclick="#">
								<span class="glyphicon glyphicon-plus" aria-hidden="true"></span>
								Add New Role
							</button>
							<br /> <br />
							<table align="center"
								class="table table-nonfluid table-striped table-bordered table-hover"
								width="70%">
								<tr>
									<th>Role Name</th>
									<th>Access Menu</th>
									<th>Access Privileges</th>
									<th>Action Button</th>
								</tr>

								<tr>
									<td>Admin</td>
									<td>
										<div class="checkbox">
											<label> <input type="checkbox"> Employee <br />
												<input type="checkbox"> Attendance <br /> <input
												type="checkbox"> Leave <br />
											</label>
										</div>
									</td>
									<td>
										<div class="checkbox">
											<label> <input type="checkbox"> Insert <br />
												<input type="checkbox"> Update <br /> <input
												type="checkbox"> Delete <br /> <input
												type="checkbox"> List <br />
											</label>
										</div>
									</td>
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
									<td>HR</td>
									<td>
										<div class="checkbox">
											<label> <input type="checkbox"> Employee <br />
												<input type="checkbox"> Attendance <br /> <input
												type="checkbox"> Leave <br />
											</label>
										</div>
									</td>
									<td>
										<div class="checkbox">
											<label> <input type="checkbox"> Insert <br />
												<input type="checkbox"> Update <br /> <input
												type="checkbox"> Delete <br /> <input
												type="checkbox"> List <br />
											</label>
										</div>
									</td>
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
									<td>User</td>
									<td>
										<div class="checkbox">
											<label> <input type="checkbox"> Employee <br />
												<input type="checkbox"> Attendance <br /> <input
												type="checkbox"> Leave <br />
											</label>
										</div>
									</td>
									<td>
										<div class="checkbox">
											<label> <input type="checkbox"> Insert <br />
												<input type="checkbox"> Update <br /> <input
												type="checkbox"> Delete <br /> <input
												type="checkbox"> List <br />
											</label>
										</div>
									</td>
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
</body>
</html>