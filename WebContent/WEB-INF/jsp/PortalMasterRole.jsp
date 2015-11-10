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
 <link href="sidebar.css" rel="stylesheet">

<title>Master Role</title>
</head>

<script type="text/javascript">
	function flyToPage(task, id) {
		document.forms[0].task.value = task;
		document.forms[0].id.value = id;
		document.forms[0].submit();
	}
</script>

<body>

	<html:form method="post" action="/portal">
		<html:hidden name="PortalForm" property="task" />
		<html:hidden name="PortalForm" property="id" />
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
												<span class="glyphicon glyphicon-time"></span> Yesterday at
												4:32 PM
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
												<span class="glyphicon glyphicon-time"></span> Yesterday at
												4:32 PM
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
												<span class="glyphicon glyphicon-time"></span> Yesterday at
												4:32 PM
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
							Hi, Admin <b class="caret"></b></a>
						<ul class="dropdown-menu">
							<li><a href="#"> <large> <span
										class="glyphicon glyphicon-user"></span> <large>
									Profile</a></li>
							<li><a href="#"><span class="glyphicon glyphicon-wrench"></span>
									Settings</a></li>
							<li class="divider"></li>
							<li><a href="#"><span
									class="glyphicon glyphicon-log-out"></span> Log Out</a></li>
						</ul></li>
				</ul>
			</div>
		</div>
		
		  
		</nav>
		<!-- END NAVBAR -->
		
		  <!-- Sidebar -->
		 
<!--         <div id="sidebar-wrapper"> -->
<!--             <ul class="sidebar-nav"> -->
<!--                 <li class="sidebar-brand"> -->
<!--                     Judul -->
<!--                 </li> -->
<!--                 <li class="active"> -->
<!--                     <a href="#">Dashboard</a> -->
<!--                 </li> -->
<!--                 <li> -->
<!--                     <a href="#">Shortcuts</a> -->
<!--                 </li> -->
<!--                 <li> -->
<!--                     <a href="#">Overview</a> -->
<!--                 </li> -->
<!--                 <li> -->
<!--                     <a href="#">Events</a> -->
<!--                 </li> -->
<!--                 <li> -->
<!--                     <a href="#">About</a> -->
<!--                 </li> -->
<!--                 <li> -->
<!--                     <a href="#">Services</a> -->
<!--                 </li> -->
<!--                 <li> -->
<!--                     <a href="#">Contact</a> -->
<!--                 </li> -->
<!--             </ul> -->
<!--         </div> -->
        <!-- /#sidebar-wrapper -->

		<br />
		<br />
		<!-- CONTAINER -->
		<div class="container-fluid well" style="min-height: 100%;!important">
			<!--wadah-->
			

			<div class="row">
				<div class="col-md-12">
					<div class="tab-content">
						<div class="tab-pane active" id="dashboard">
							<br> <br> <br>
							
							<!-- MENU USER -->
							<div class="col-md-3">
								<ul class="nav nav-stacked nav-pills">
									<li class="active"><a href="index.html"> <span
											class="glyphicon glyphicon-user"></span> &nbsp; Hi, Admin
									</a></li>
									<li><a href="#"> <span
											class="glyphicon glyphicon-edit"></span> &nbsp; Edit Profile
									</a></li>
									<li><a href="#"> <span
											class="glyphicon glyphicon-flag"></span> &nbsp; Notification
									</a></li>
									<li><a href="#"> <span
											class="glyphicon glyphicon-log-out"></span> &nbsp; Logout
									</a></li>
								</ul>
							</div>
							<!-- END -->
							<!-- MENU COLUMN -->
							<div class="col-md-9">
							<h3>Role Settings</h3>
					<hr>
					<!-- Page Heading -->
					<div class="alert alert-info" role="alert">
						<ul class="breadcrumb">
							<li><span class="glyphicon glyphicon-user"></span><a
								href="#"> Dashboard</a></li>
							<li> <span class="glyphicon glyphicon-user"></span> Role Settings</li>
						</ul>
					</div>
								<center>
									<button type="button" class="btn btn-primary">
										<a href="javascript:flyToPage('addEditRole');"
											style="color: white;"> <span
											class="glyphicon glyphicon-plus" aria-hidden="true"></span>
											Add New Role
										</a>
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
												<button type="button" class="btn btn-info">
													<span class="glyphicon glyphicon-pencil" aria-hidden="true"></span>
													Edit
												</button>
												<button type="button" class="btn btn-danger">
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
												<button type="button" class="btn btn-info">
													<span class="glyphicon glyphicon-pencil" aria-hidden="true"></span>
													Edit
												</button>
												<button type="button" class="btn btn-danger">
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
												<button type="button" class="btn btn-info">
													<span class="glyphicon glyphicon-pencil" aria-hidden="true"></span>
													Edit
												</button>
												<button type="button" class="btn btn-danger">
													<span class="glyphicon glyphicon-remove" aria-hidden="true"></span>
													Delete
												</button>
											</td>
										</tr>

									</table>
								</center>
							</div>


						</div>
					</div>
				</div>
			</div>
		</div>
	</html:form>
</body>
</html>