<%@ taglib uri="/WEB-INF/tld/struts-bean.tld" prefix="bean"%>
<%@ taglib uri="/WEB-INF/tld/struts-html.tld" prefix="html"%>
<%@ taglib uri="/WEB-INF/tld/struts-logic.tld" prefix="logic"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	
<%
String choose = request.getContextPath()+"/img/select.png";
%>

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
			<button type="button" class="btn btn-info" onclick="javascript:flyToPage('assignRole');">Back
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
						
								<p align="center">Search Employee Name : <html:text name="PortalForm" property="searchName"/>
									<button onclick="javascript:flyToPage('search');">
										Search
									</button>
								</p>
								
								<table align="center" border ="5px">
									<tr style="background-color: #736EF5; color: white; height: 40px;">
										<td align="center">Employee ID</td>
										<td align="center">Employee Name</td>
										<td align="center">Department Name</td>
										<td align="center">Location Name</td>
										<td align="center"></td>
									</tr>
									<logic:notEmpty name="PortalForm" property="listPortal">
										<logic:iterate id="portalList" name="PortalForm" property="listPortal">
											<tr style="background-color: #F2F2F5; height: 40px;">				
												<td width="100px" align="center"><bean:write name="portalList" property="employeeId"/></td>
												<td width="200px" align="center"><bean:write name="portalList" property="employeeName"/></td>
												<td width="200px" align="center"><bean:write name="portalList" property="departmentName"/></td>
												<td width="200px" align="center"><bean:write name="portalList" property="locationName"/></td>
												<td width="40px" align="center"><a href="javascript:flyToPage('select', '<bean:write name="portalList" property="employeeId" />');"><html:img src="<%=choose%>" width="25px" height="25px" alt="select" /></a></td>
											</tr>
										</logic:iterate>
									</logic:notEmpty>
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
				</div>
			</div>
		</div>
	</div>
</div>
</html:form>
</body>
</html>