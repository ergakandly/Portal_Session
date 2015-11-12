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
						<a href="javascript:flyToPage('addEditAssignRole');"
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