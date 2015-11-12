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

		<%@include file="PartNavbar.jsp"%>

		<!-- SIDEBAR -->
		<div id="sidebar-wrapper">
			<ul class="sidebar-nav">
				<li class="sidebar-brand">Menu List</li>
				<li class="active"><a href="#">Dashboard</a></li>
				<li><a href="#">Shortcuts</a></li>
				<li><a href="#">Overview</a></li>
				<li><a href="#">Events</a></li>
				<li><a href="#">About</a></li>
				<li><a href="#">Services</a></li>
				<li><a href="#">Contact</a></li>
			</ul>
		</div>
		<!-- END SIDEBAR -->


		<!-- CONTAINER -->
		<div class="container-fluid" style="min-height: 100%;!important">
			<!--wadah-->


			<!-- Page content -->
			<div id="page-content-wrapper">
				<!-- Keep all page content within the page-content inset div! -->
				<div class="page-content inset">
					<div class="row">
						<div class="col-md-12">
							<div class="tab-content">
								<div class="tab-pane active" id="dashboard">
									<br />

									<!-- MENU USER -->
									<div class="col-md-2"></div>
									<!-- END -->

									<!-- MENU COLUMN -->
									<div class="col-md-10">
										<h3>Roles</h3>
										<hr>
										
										<!-- BREADCRUMB -->
											<ul class="breadcrumb">
												<li><span class="glyphicon glyphicon-dashboard"></span><a
													href="#"> Dashboard</a></li>
												<li><span class="glyphicon glyphicon-king"></span>
													Roles</li>
											</ul>
										<!-- END BREADCRUMB -->
										
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
															<label> <input type="checkbox"> Employee
																<br /> <input type="checkbox"> Attendance <br />
																<input type="checkbox"> Leave <br />
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
															<span class="glyphicon glyphicon-pencil"
																aria-hidden="true"></span> Edit
														</button>
														<button type="button" class="btn btn-danger">
															<span class="glyphicon glyphicon-remove"
																aria-hidden="true"></span> Delete
														</button>
													</td>
												</tr>

												<tr>
													<td>HR</td>
													<td>
														<div class="checkbox">
															<label> <input type="checkbox"> Employee
																<br /> <input type="checkbox"> Attendance <br />
																<input type="checkbox"> Leave <br />
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
															<span class="glyphicon glyphicon-pencil"
																aria-hidden="true"></span> Edit
														</button>
														<button type="button" class="btn btn-danger">
															<span class="glyphicon glyphicon-remove"
																aria-hidden="true"></span> Delete
														</button>
													</td>
												</tr>

												<tr>
													<td>User</td>
													<td>
														<div class="checkbox">
															<label> <input type="checkbox"> Employee
																<br /> <input type="checkbox"> Attendance <br />
																<input type="checkbox"> Leave <br />
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
															<span class="glyphicon glyphicon-pencil"
																aria-hidden="true"></span> Edit
														</button>
														<button type="button" class="btn btn-danger">
															<span class="glyphicon glyphicon-remove"
																aria-hidden="true"></span> Delete
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
			</div>
		</div>
	</html:form>
</body>
</html>