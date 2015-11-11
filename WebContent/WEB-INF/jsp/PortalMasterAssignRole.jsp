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

<title>New Master User</title>
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
<<<<<<< HEAD
		
<!-- NAVBAR -->
<nav class="navbar navbar-inverse navbar-fixed-top">
<div class="container-fluid">
	<div class="navbar-header">
		<a class="navbar-brand"> HRIS Dashboard </a>
	</div>

	<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
		<ul class="nav navbar-nav navbar-right">
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
			<button type="button" class="btn btn-info" onclick="javascript:flyToPage('dashboardAdmin');">Back
			</button>
			<h3>Master Assign Role</h3>
			<hr>
		</div>
	</div>
	<div class="row">
		<div class="col-md-12">
			<div class="tab-content">
				<div class="tab-pane active" id="dashboard">
					<br> <br> <br>

					<!-- KOLOM MD 8-->
					<div class="col-md-8">
						<center>
							<table align="center"
								class="table table-nonfluid table-striped table-hover ">
								<tr>
									<th colspan="3">Add New Assign Role</th>
								</tr>
								<tr>
									<td class="rataKanan">Employee Name :</td>
									<td>
										<logic:equal name="PortalForm" property="id" value="undefined">
											<input type="text" class="form-control" id="exampleInputName2" readonly="readonly">
										</logic:equal>
										<logic:notEqual name="PortalForm" property="id" value="undefined">
											<html:text styleClass="form-control" styleId="exampleInputName2" property="portalBean.employeeName" readonly="true"><bean:write name="PortalForm" property="portalBean.employeeName"/></html:text>
										</logic:notEqual>
										</td>
										<td>
										<input
										type="button" value="browse" class="btn btn-primary" onclick="javascript:flyToPage('assignRoleEmployee');" /></td>
								</tr>
								<tr>
									<td class="rataKanan">Role :</td>
									<td><select class="form-control">
											<option value="volvo">Admin</option>
											<option value="saab">HR</option>
											<option value="mercedes">User</option>
									</select></td>
								</tr>
								<tr>
									<td colspan="2" align="center"><input type="button"
										value="Save" class="btn btn-primary"
										onclick="javascript:doSubmit();" /></td>
								</tr>
							</table>

						</center>
					</div>
					<!-- END KOLOM MD 8-->

					<!-- --------------------------------------------- -->
					<!-- -----				PEMBATAS				-- -->
					<!-- --------------------------------------------- -->

					<!-- KOLOM MD 4-->
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
					<!-- END KOLOM MD 4-->
=======

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

			<div class="collapse navbar-collapse"
				id="bs-example-navbar-collapse-1">

				<ul class="nav navbar-nav navbar-right">

					<!-- DROPDOWN USER -->
					<li class="dropdown"><a href="#" class="dropdown-toggle"
						data-toggle="dropdown"><span class="glyphicon glyphicon-user"></span>
							Hi, Admin <b class="caret"></b></a>
						<ul class="dropdown-menu">
							<li><a href="#"> <large> <span
										class="glyphicon glyphicon-user"></span> <large>
									Profile</a></li>
							<li class="divider"></li>
							<li><a href="#"><span
									class="glyphicon glyphicon-log-out"></span> Log Out</a></li>
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
					<h3>Assign Role</h3>
					<hr>

					<!-- BREADCRUMB -->
					<ul class="breadcrumb">
						<li><span class="glyphicon glyphicon-dashboard"></span><a
							href="#"> Dashboard</a></li>
						<li><span class="glyphicon glyphicon-screenshot"></span>
							Assign Role</li>
					</ul>
					<!-- END BREADCRUMB -->

>>>>>>> 514fefcef93474a8edf223b1bdd9ffba74b2c37f
				</div>
			</div>
			<!-- END ROW 12 -->

			<!-- KOLOM MD 8-->
			<div class="col-md-6 col-md-offset-3 div-center">
				<center>
					<button type="button" class="btn btn-primary">
						<a href="javascript:flyToPage('masterRole');"
							style="color: white;"> <span class="glyphicon glyphicon-plus"></span>
							Add New Assign Role
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
								<button type="button" class="btn btn-info" onclick="">
									<span class="glyphicon glyphicon-pencil"></span> Edit
								</button>
								<button type="button" class="btn btn-danger" onclick="">
									<span class="glyphicon glyphicon-remove"></span> Delete
								</button>
							</td>
						</tr>

						<tr>
							<td>Employee 2</td>
							<td>Role 2</td>
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
							<td>Employee 3</td>
							<td>Role 3</td>
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
				</center>

			</div>
			<!-- END KOLOM MD 8-->

		</div>
	</html:form>
</body>
</html>