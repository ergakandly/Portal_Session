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

<title>New Master Role</title>
</head>
<!-- NAVBAR -->
<nav class="navbar navbar-inverse navbar-fixed-top">
<div class="container-fluid">

	<!-- LOGO -->
	<div class="navbar-header">
		<a class="navbar-brand" href="#"> <img alt="Brand"
			src="asset/img/logo-normal.png">
		</a>
	</div>
	<!-- END LOGO -->

	<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">

		<ul class="nav navbar-nav navbar-right">

			<!-- DROPDOWN USER -->
			<li class="dropdown"><a href="#" class="dropdown-toggle"
				data-toggle="dropdown"><span class="glyphicon glyphicon-user"></span>
					Hi, Admin <b class="caret"></b></a>
				<ul class="dropdown-menu">
					<li><a href="#"> <large> <span
								class="glyphicon glyphicon-user"></span> <large> Profile</a></li>
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
<div class="container-fluid">

	<!-- ROW 12 -->
	<div class="row">
		<div class="col-md-12">
			<h3>Add New Role</h3>
			<hr>

			<!-- BREADCRUMB -->
				<ul class="breadcrumb">
					<li><span class="glyphicon glyphicon-dashboard"></span><a
						href="#"> Dashboard</a></li>
					<li><span class="glyphicon glyphicon-king"></span> <a href="#">
							Roles</a></li>
					<li><span class="glyphicon glyphicon-plus"></span> Add</li>
				</ul>
			<!-- END BREADCRUMB -->

		</div>
	</div>
	<!-- END ROW 12 -->

	<!-- ROW MD6 OFFSET3 -->
	<div class="row">
		<div class="col-md-6 col-md-offset-3 div-center">
			<div class="tab-content">
				<div class="tab-pane active" id="dashboard">
					<br />
					<table
						class="table table-nonfluid table-striped table-bordered table-hover">
						<tr>
							<th colspan="2">Add New Role</th>
						</tr>
						<tr>
							<td>Role Name</td>
							<td><input type="text" class="form-control"></td>
						</tr>
						<tr>
							<td>Access Menu</td>
							<td><div class="checkbox">
									<label> <input type="checkbox"> Employee <br />
										<input type="checkbox"> Attendance <br /> <input
										type="checkbox"> Leave <br />
									</label>
								</div></td>
						</tr>
						<tr>
							<td>Access Privilages</td>
							<td><div class="checkbox">
									<label> <input type="checkbox"> Insert <br />
										<input type="checkbox"> Update <br /> <input
										type="checkbox"> Delete <br /> <input type="checkbox">
										List <br />
									</label>
								</div></td>
						</tr>
					</table>
					<div class="left">
						<input type="button" value="Save" class="btn btn-primary"
							onclick="javascript:doSubmit();" />
					</div>

				</div>
			</div>
		</div>
	</div>
	<!-- ROW MD6 OFFSET3 -->
</div>
</body>
</html>