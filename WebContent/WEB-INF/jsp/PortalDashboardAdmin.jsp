<%@ taglib uri="/WEB-INF/tld/struts-html.tld" prefix="html"%>
<%@ taglib uri="/WEB-INF/tld/struts-logic.tld" prefix="logic"%>
<%@ taglib uri="/WEB-INF/tld/struts-bean.tld" prefix="bean"%>

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

			<!-- LOGO -->
			<div class="navbar-header">
				<a class="navbar-brand" href="#"> <img alt="Brand"
					src="asset/img/logo-normal.png">
				</a>
			</div>
			<!-- END LOGO -->

			<!-- MENU KANAN -->
			<ul class="nav navbar-nav navbar-right">
				<li class="dropdown"><a href="#" class="dropdown-toggle"
					data-toggle="dropdown"><span class="glyphicon glyphicon-user"></span>
						Hi, Admin <b class="caret"></b></a>
					<ul class="dropdown-menu">
						<li><a href="#"> <large> <span
									class="glyphicon glyphicon-user"></span> <large>
								Profile</a></li>
						<li class="divider"></li>
						<li><a href="#"><span class="glyphicon glyphicon-log-out"></span>
								Log Out</a></li>
					</ul></li>
			</ul>
			<!-- END MENU KANAN -->
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
					<h3>Dashboard</h3>
					<hr>

					<!-- BREADCRUMB -->
						<ul class="breadcrumb">
							<li><span class="glyphicon glyphicon-dashboard"></span>Dashboard</a></li>
						</ul>
					<!-- END BREADCRUMB -->

				</div>
			</div>
			<!-- END ROW 12 -->

			<!-- ROW 12 -->
			<div class="row">
				<div class="col-md-12">
					<div class="tab-content">
						<div class="tab-pane active" id="dashboard">
							<br /> <br /> <br />
							<center>
								<button class="btn btn-default iconDashboard" type="button"
									onclick="javascript:flyToPage('masterRole');">
									<span class="glyphicon glyphicon-king"
										style="font-size: 100px;"></span><br>
									<h3>Roles</h3>
								</button>
								<button class="btn btn-default iconDashboard" type="button"
									onclick="javascript:flyToPage('assignRole');">
									<span class="glyphicon glyphicon-screenshot"
										style="font-size: 100px;"></span><br>
									<h3>Assign Role</h3>
								</button>
								<button class="btn btn-default iconDashboard" type="button"
									onclick="javascript:flyToPage('masterModul');">
									<span class="glyphicon glyphicon-th-large"
										style="font-size: 100px;"></span><br>
									<h3>Modules</h3>
								</button>
								<br> <br>
							</center>
						</div>
					</div>
				</div>
			</div>
			<!-- END ROW 12 -->

		</div>
		<!-- END CONTAINER -->

	</html:form>
</body>
</html>