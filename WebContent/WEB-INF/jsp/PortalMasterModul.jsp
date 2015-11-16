<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<!-- CSS -->
<%@include file="PartBootstrap.jsp"%>

<title>Master Moduls</title>
</head>
<body>
	<html:form method="post" action="/portal">
		<html:hidden name="PortalForm" property="task" />
		<html:hidden name="PortalForm" property="id" />
		<div id="wrapper">
			<%@include file="PartNavbar.jsp"%>
			<div id="page-wrapper">

				<!-- CONTAINER -->
				<div class="container-fluid">

					<!-- ROW 12 -->
					<div class="row">
						<div class="col-md-12">
							<!-- PAGE HEADER -->
							<div class="page-header">
								<h3 id="timeline">Modul</h3>
							</div>
							<!-- END PAGE HEADER -->

							<!-- BREADCRUMB -->
							<ul class="breadcrumb">
								<li><i class="fa fa-dashboard"></i><a
									href="javascript:flyToPage('dashboardAdmin');"> Dashboard</a></li>
								<li><i class="fa fa-th-large"></i> Modul</li>
							</ul>
							<!-- END BREADCRUMB -->
						</div>
					</div>
					<!-- END ROW 12 -->
					<br />
					<!-- ROW MD6 OFFSET3 -->

					<div class="col-md-6 col-md-offset-3">
						<div class="tengah">
							<button type="button" class="btn btn-primary" data-toggle="modal"
								data-target="#modalAddModul">
								<span class="glyphicon glyphicon-plus"></span> Add New Modul
							</button>

							<div class="modal fade" id="modalAddModul" tabindex="-1"
								role="dialog" aria-labelledby="myModalLabel">
								<div class="modal-dialog" role="document">
									<div class="modal-content">
										<div class="modal-header">
											<button type="button" class="close" data-dismiss="modal"
												aria-label="Close">
												<span aria-hidden="true">&times;</span>
											</button>
											<h4 class="modal-title" id="myModalLabel">Add New Modul</h4>
										</div>
										<div class="modal-body">
											<table>
												<tr>
													<td>Modul Name :</td>
													<td><input type=text></td>
												</tr>
												<tr>
													<td>Modul Link :</td>
													<td><input type=text></td>
												</tr>
												<tr>
													<td>Icon :</td>
													<td>
														<button class="btn btn-default" data-iconset="glyphicon"
															data-icon="glyphicon-camera" role="iconpicker"></button>
													</td>
												</tr>

											</table>
										</div>
										<div class="modal-footer">
											<button type="button" class="btn btn-primary">Submit</button>
											<button type="button" class="btn btn-default"
												data-dismiss="modal">Close</button>
										</div>
									</div>
								</div>
							</div>
						</div>

						<br /> <br />
						<table
							class="table table-nonfluid table-striped table-bordered table-hover tengah"
							width="70%">
							<tr>
								<th style="background-color: black;">Modul Name</th>
								<th style="background-color: black;">Button Action</th>
							</tr>

							<tr>
								<td>Employee</td>
								<td class="width30">
									<button type="button" class="btn btn-info" onclick="">
										<span class="glyphicon glyphicon-pencil"></span> Edit
									</button>
									<button type="button" class="btn btn-danger" onclick="">
										<span class="glyphicon glyphicon-remove"></span> Delete
									</button>
								</td>
							</tr>

							<tr>
								<td>Attendance</td>
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
								<td>Leave</td>
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
					</div>
				</div>
				<!-- ROW MD6 OFFSET3 -->
			</div>
		</div>
	</html:form>

	<!-- JAVASCRIPT -->
	<%@include file="PartJavascript.jsp"%>
</body>
</html>