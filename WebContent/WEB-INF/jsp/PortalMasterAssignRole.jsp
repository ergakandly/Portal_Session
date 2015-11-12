<%@ taglib uri="/WEB-INF/tld/struts-bean.tld" prefix="bean"%>
<%@ taglib uri="/WEB-INF/tld/struts-html.tld" prefix="html"%>
<%@ taglib uri="/WEB-INF/tld/struts-logic.tld" prefix="logic"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
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

				</div>
			</div>
			<!-- END ROW 12 -->

			<!-- KOLOM MD 8-->
			<div class="col-md-6 col-md-offset-3 div-center">
				<center>
					<button type="button" class="btn btn-primary">
<!-- 						<a href="javascript:flyToPage('addEditAssignRole');" -->
<!-- 							style="color: white;"> <span class="glyphicon glyphicon-plus"></span> -->
<!-- 							Add New Assign Role -->
<!-- 						</a> -->

						<a href="javascript:flyToPage('assignRoleEmployee');"
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
<<<<<<< HEAD
						</tr>

						<tr>
							<td>Employee 1</td>
							<td>Role 1</td>
						</tr>

						<tr>
							<td>Employee 2</td>
							<td>Role 2</td>
						</tr>

						<tr>
							<td>Employee 3</td>
							<td>Role 3</td>
=======
>>>>>>> a5193108c2394deb621c943477457afbe5014d92
						</tr>
						
						<logic:notEmpty name="PortalForm" property="listPortal">
							<logic:iterate id="portalList" name="PortalForm" property="listPortal">
								<tr>
									<td><bean:write name="portalList" property="employeeName"/></td>
									<td><bean:write name="portalList" property="roleName" /></td>
								</tr>								
							</logic:iterate>
						</logic:notEmpty>

					</table>
				</center>

			</div>
			<!-- END KOLOM MD 8-->

		</div>
	</html:form>
</body>
</html>