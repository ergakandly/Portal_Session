<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<!-- CSS -->
<%@include file="PartBootstrap.jsp"%>

<title>Master Module</title>
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
								<h3 id="timeline">Module</h3>
							</div>
							<!-- END PAGE HEADER -->

							<!-- BREADCRUMB -->
							<ul class="breadcrumb">
								<li><i class="fa fa-dashboard"></i><a
									href="javascript:flyToPage('dashboardAdmin');"> Dashboard</a></li>
								<li><i class="fa fa-th-large"></i> Module</li>
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
								<span class="glyphicon glyphicon-plus"></span> Add New Module
							</button>
						</div>

						<br />
						<table
							class="table table-nonfluid table-striped table-bordered table-hover "
							width="70%">
							<tr>
								<th>Module Name</th>
								<th>Module Link</th>
								<th>Module Icon</th>
								<th>Button Action</th>
							</tr>

							<tr>
								<td>Employee</td>
								<td>Link Employee</td>
								<td class="tengah"><span class="glyphicon glyphicon-user"></span>
								<td class="width30">
									<button type="button" class="btn btn-info" data-toggle="modal"
										data-target="#modalAddModul">
										<span class="glyphicon glyphicon-pencil"></span> Edit
									</button>
									<button type="button" class="btn btn-danger" data-toggle="modal"
										data-target="#modalYakin">
										<span class="glyphicon glyphicon-remove"></span> Delete
									</button>
								</td>
							</tr>

							<tr>
								<td>Attendance</td>
								<td>Link Attendance</td>
								<td class="tengah"><span class="glyphicon glyphicon-plane"></span>
								<td>
									<button type="button" class="btn btn-info" data-toggle="modal"
										data-target="#modalAddModul">
										<span class="glyphicon glyphicon-pencil"></span> Edit
									</button>
									<button type="button" class="btn btn-danger" data-toggle="modal"
										data-target="#modalYakin">
										<span class="glyphicon glyphicon-remove"></span> Delete
									</button>
								</td>
							</tr>

							<tr>
								<td>Leave</td>
								<td>Link Leave</td>
								<td class="tengah"><span
									class="glyphicon glyphicon-calendar"></span>
								<td>
									<button type="button" class="btn btn-info" data-toggle="modal"
										data-target="#modalAddModul">
										<span class="glyphicon glyphicon-pencil"></span> Edit
									</button>
									<button type="button" class="btn btn-danger" data-toggle="modal"
										data-target="#modalYakin">
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

	<!-- MODAL -->
	<div class="modal fade" id="modalAddModul" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel">
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
					<table class="table table-borderless">
						<tr>
							<td class="kanan">Module Name :</td>
							<td><input type=text class="form-control"></td>
						</tr>
						<tr>
							<td class="kanan">Module Link :</td>
							<td><input type=text class="form-control"></td>
						</tr>
						<tr>
							<td class="kanan">Icon :</td>
							<td>
								<button class="btn btn-default" data-iconset="glyphicon"
									data-icon="glyphicon-camera" role="iconpicker"></button>
							</td>
						</tr>

					</table>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-primary">
						<i class="fa fa-check"></i> Submit
					</button>
					<button type="button" class="btn btn-danger" data-dismiss="modal">
						<i class="fa fa-close"></i> Close
					</button>
				</div>
			</div>
		</div>
	</div>
	<!-- END MODAL  -->

	<!-- MODAL HAPUS -->
	<!-- MODAL -->
	<div class="modal fade" id="modalYakin" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title" id="myModalLabel">Delete Modul
						Data</h4>
				</div>
				<div class="modal-body ">
					<div class="alert alert-danger kiri" role="alert">
						<i class="fa fa-exclamation-triangle"></i> Are you sure want to delete this record?
					</div>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-primary"
						onclick="">
						<i class="fa fa-check "></i> Yes
					</button>
					<button type="button" class="btn btn-danger" data-dismiss="modal">
						<i class="fa fa-close "></i> No
					</button>
				</div>
			</div>
		</div>
	</div>
	<!-- END MODAL HAPUS-->

	<!-- JAVASCRIPT -->
	<%@include file="PartJavascript.jsp"%>
</body>
</html>