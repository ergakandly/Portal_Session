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

<title>Dashboard User</title>
</head>
<body>
	<!-- NAVBAR -->
	<nav class="navbar navbar-inverse navbar-fixed-top">
	<div class="container-fluid">
		<div class="navbar-header">
			<a class="navbar-brand"> HRIS Dashboard </a>
		</div>

		<div class="collapse navbar-collapse"
			id="bs-example-navbar-collapse-1">
			<ul class="nav navbar-nav">
				<li class="active"><a href="#"> <span
						class="glyphicon glyphicon-user"></span> Home <span
						class="sr-only">(current)</span>
				</a></li>
				<li><a href="javascript:flyToPage('masterRole');"> <span
						class="glyphicon glyphicon-check"></span> Role Settings
				</a></li>
				<li><a href="#"> <span class="glyphicon glyphicon-send"></span>
						Assign Role
				</a></li>
			</ul>

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
				<h3>Menu</h3>
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
								<button class="btn btn-default" type="button"
									style="height: 100px; width: 100px;">
									<span class="glyphicon glyphicon-user"></span><br>
									<Large>Employees</Large>
								</button>
								<button class="btn btn-default" type="button"
									style="height: 100px; width: 100px;">
									<span class="glyphicon glyphicon-check"></span><br>
									<Large>Attendance</Large>
								</button>
								<button class="btn btn-default" type="button"
									style="height: 100px; width: 100px;">
									<span class="glyphicon glyphicon-send"></span><br>
									<Large>Leave</Large>
								</button>
								<br> <br>
							</center>
						</div>

						<!-- MENU USER -->
						<div class="col-md-4">
							<ul class="nav nav-stacked nav-pills">
								<li class="active"><a href="index.html"> <span
										class="glyphicon glyphicon-user"></span> &nbsp; Hi, User
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