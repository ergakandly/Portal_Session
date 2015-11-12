<%@ taglib uri="/WEB-INF/tld/struts-html.tld" prefix="html"%>
<%@ taglib uri="/WEB-INF/tld/struts-logic.tld" prefix="logic"%>
<%@ taglib uri="/WEB-INF/tld/struts-bean.tld" prefix="bean"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<%@include file="PartBootstrap.jsp"%>

<title>Dashboard User</title>
</head>
<!-- <body style="min-height:768px;!important"> -->

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
		
		<%@include file="PartNavbar.jsp" %>
		
		<!-- CONTAINER -->
		<div class="container-fluid" style="min-height: 100%;!important">

			<!-- PAGE HEADER -->
			<div class="page-header">
				<h3 id="timeline">Modals Users</h3>
			</div>
			<!-- END PAGE HEADER -->
			'

			<div class="row">
				<div class="col-md-12">
					<div class="tab-content">
						<div class="tab-pane active" id="dashboard">
							<br> <br> <br>
							<center>
								<button class="btn btn-default" type="button"
									onclick="location.href='/HRIS_Employee/index.do'"
									style="height: 200px; width: 200px;">
									<span class="glyphicon glyphicon-user"
										style="font-size: 100px;"></span><br>
									<h3>Employees</h3>
								</button>
								<button class="btn btn-default" type="button"
									style="height: 200px; width: 200px;">
									<span class="glyphicon glyphicon-check"
										style="font-size: 100px;"></span><br>
									<h3>Attendance</h3>
								</button>
								<button class="btn btn-default" type="button"
									style="height: 200px; width: 200px;">
									<span class="glyphicon glyphicon-send"
										style="font-size: 100px;"></span><br>
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
	</html:form>
</body>
</html>