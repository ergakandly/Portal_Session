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
<!-- <body style="min-height:768px;!important"> -->
<body>
	<!-- NAVBAR -->
	<nav class="navbar navbar-inverse navbar-fixed-top">
	<div class="container-fluid">
		<div class="navbar-header">
			<a class="navbar-brand"> HRIS Dashboard </a>
		</div>

		<div class="collapse navbar-collapse"
			id="bs-example-navbar-collapse-1">

			<ul class="nav navbar-nav navbar-right">

				<!-- DROPDOWN NOTIFICATION -->
				<li class="dropdown"><a href="#" class="dropdown-toggle"
					data-toggle="dropdown"><span class="glyphicon glyphicon-bell"></span><span
						class="badge">3</span> <b class="caret"></b></a>
					<ul class="dropdown-menu message-dropdown">
						<li class="message-preview"><a href="#">
								<div class="media">
									<span class="pull-left"> <img class="media-object"
										src="http://placehold.it/50x50" alt="">
									</span>
									<div class="media-body">
										<h5 class="media-heading">
											<strong>John Smith</strong>
										</h5>
										<p class="small text-muted">
											<span class="glyphicon glyphicon-time"></span> Yesterday at 4:32 PM
										</p>
										<p>Lorem ipsum dolor sit amet, consectetur...</p>
									</div>
								</div>
						</a></li>
						<li class="divider"></li>
						<li class="message-preview"><a href="#">
								<div class="media">
									<span class="pull-left"> <img class="media-object"
										src="http://placehold.it/50x50" alt="">
									</span>
									<div class="media-body">
										<h5 class="media-heading">
											<strong>John Smith</strong>
										</h5>
										<p class="small text-muted">
											<span class="glyphicon glyphicon-time"></span> Yesterday at 4:32 PM
										</p>
										<p>Lorem ipsum dolor sit amet, consectetur...</p>
									</div>
								</div>
						</a></li>
						<li class="divider"></li>
						<li class="message-preview"><a href="#">
								<div class="media">
								
									<span class="pull-left"> <img class="media-object"
										src="http://placehold.it/50x50" alt="">
									</span>
									
									<div class="media-body">
										<h5 class="media-heading">
											<strong>John Smith</strong>
										</h5>
										<p class="small text-muted">
											<span class="glyphicon glyphicon-time"></span> Yesterday at 4:32 PM
										</p>
										<p>Lorem ipsum dolor sit amet, consectetur...</p>
									</div>
								</div>
						</a></li>
						<li class="divider"></li>
						<li class="message-footer"><a href="#">Read All New
								Notification</a></li>
					</ul></li>
				<!-- END DROPDOWN NOTIFICATION -->

				<!-- DROPDOWN USER -->
				<li class="dropdown"><a href="#" class="dropdown-toggle"
					data-toggle="dropdown"><span class="glyphicon glyphicon-user"></span>
						Hi, User <b class="caret"></b></a>
					<ul class="dropdown-menu">
						<li><a href="#"> <large> <span
									class="glyphicon glyphicon-user"></span> <large>
								Profile</a></li>
						<li><a href="#"><span class="glyphicon glyphicon-wrench"></span>
								Settings</a></li>
						<li class="divider"></li>
						<li><a href="#"><span class="glyphicon glyphicon-log-out"></span>
								Log Out</a></li>
					</ul></li>
			</ul>
		</div>
	</div>
	</nav>
	<!-- END NAVBAR -->
	<br />
	<br />

	<!-- CONTAINER -->
	<div class="container-fluid well" style="min-height: 100%;!important">
		<!--wadah-->
		<div class="row">
			<div class="col-md-12">
				<h3>Modals Users</h3>
				<hr>
			</div>
		</div>
		<div class="row">
			<div class="col-md-12">
				<div class="tab-content">
					<div class="tab-pane active" id="dashboard">
						<br> <br> <br>


						<center>
							<button class="btn btn-default" type="button"
								style="height: 200px; width: 200px;">
								<span class="glyphicon glyphicon-user" style="font-size: 100px;"></span><br>
								<h3>Employees</h3>
							</button>
							<button class="btn btn-default" type="button"
								style="height: 200px; width: 200px;">
								<span class="glyphicon glyphicon-check"
									style="font-size: 100px;"></span><br>
								<h3>Attendence</h3>
							</button>
							<button class="btn btn-default" type="button"
								style="height: 200px; width: 200px;">
								<span class="glyphicon glyphicon-send" style="font-size: 100px;"></span><br>
								<h3>Leave</h3>
							</button>
							<br> <br>
						</center>


					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- END CONTAINER -->
</body>
</html>