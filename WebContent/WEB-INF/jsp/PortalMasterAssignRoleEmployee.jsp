<%@ taglib uri="/WEB-INF/tld/struts-bean.tld" prefix="bean"%>
<%@ taglib uri="/WEB-INF/tld/struts-html.tld" prefix="html"%>
<%@ taglib uri="/WEB-INF/tld/struts-logic.tld" prefix="logic"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%
	String choose = request.getContextPath() + "/img/select.png";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<%@include file="PartBootstrap.jsp"%>

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

		<%@include file="PartNavbar.jsp"%>

		<br />
		<br />
		<!-- CONTAINER -->
		<div class="container-fluid">

			<!-- ROW 12 -->
			<div class="row">
				<div class="col-md-12">
					<h3>Search Employee</h3>
					<hr>

					<!-- BREADCRUMB -->
					<ul class="breadcrumb">
						<li><span class="glyphicon glyphicon-dashboard"></span><a
							href="#"> Dashboard</a></li>
						<li><span class="glyphicon glyphicon-screenshot"></span> <a
							href="#"> Assign Role</a></li>
						<li><span class="glyphicon glyphicon-plus"></span> <a
							href="#"> New </a></li>
						<li><span class="glyphicon glyphicon-search"></span> Search</li>
					</ul>
					<!-- END BREADCRUMB -->
				</div>
			</div>
			<!-- END ROW 12 -->
			<br />
			<!-- ROW MD6 OFFSET3 -->
			<div class="row">
				<div class="col-md-6 col-md-offset-3 div-center">
				
				<!-- 				COLLAPSE -->
				<div class="panel-group" id="accordion">
<!-- 					panel 1 -->
					<div class="panel panel-primary">
						<div class="panel-heading">
							<h4 class="panel-title">
								<a data-toggle="collapse" data-parent="#accordion"
									href="#collapse"> <span class="glyphicon glyphicon-search"></span>
									Search Options
								</a>
							</h4>
						</div>
						<div id="collapse" class="panel-collapse collapse">
<!-- 							collapse in to show it- -->

<p class="tengah">
						Search Employee Name :
						<html:text name="PortalForm" property="searchName" />
						<button onclick="javascript:flyToPage('search');">Search</button>
					</p>
					</div>
				</div>
			</div>

			<!-- END COLLAPSE -->

					

					<table
						class="table table-nonfluid table-striped table-bordered table-hover">
						<tr style="background-color: #736EF5; color: white; height: 40px;">
							<th>Employee ID</th>
							<th>Employee Name</th>
							<th>Department Name</th>
							<th>Location Name</th>
							<th>Select</th>
						</tr>
						<logic:notEmpty name="PortalForm" property="listPortal">
							<logic:iterate id="portalList" name="PortalForm" property="listPortal">
								<tr>
									<td><bean:write name="portalList" property="employeeId" /></td>
									<td><bean:write name="portalList" property="employeeName" /></td>
									<td><bean:write name="portalList"
											property="departmentName" /></td>
									<td><bean:write name="portalList" property="locationName" /></td>
									<td>
										<button type="button" class="btn btn-primary"
											onclick="javascript:flyToPage('select', '<bean:write name="portalList" property="employeeId" />');">
											<span class="glyphicon glyphicon-ok"></span>
										</button>
									</td>
								</tr>
							</logic:iterate>
						</logic:notEmpty>
					</table>


				</div>

			</div>
			<!-- ROW MD6 OFFSET3 -->
		</div>
	</html:form>
</body>
</html>