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
<link rel="stylesheet" type="text/css" href="sidebar3.css">

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

		<%@include file="PartNavbar.jsp"%>

		<div class="container-fluid">
			<div class="row">
				<div class="col-md-12">
					<!--JUDUL-->
					<div class="page-header">
						<h3 id="timeline">Roles</h3>
					</div>
					<!-- END JUDUL -->

					<!-- BREADCRUMB -->
					<ul class="breadcrumb">
						<li><span class="glyphicon glyphicon-dashboard"></span><a
							href="#"> Dashboard</a></li>
						<li><span class="glyphicon glyphicon-king"></span> Roles</li>
					</ul>
					<!-- END BREADCRUMB -->
				</div>

				<!-- KOLOM MD 8-->
				<div class="col-md-6 col-md-offset-3 div-center">
					<center>
						<button type="button" class="btn btn-primary">
							<a href="javascript:flyToPage('addEditRole');"
								style="color: white;"> <span
								class="glyphicon glyphicon-plus" aria-hidden="true"></span> Add
								New Role
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
	</html:form>
</body>
</html>