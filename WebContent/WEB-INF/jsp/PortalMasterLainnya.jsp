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

<title>Master Lainnya</title>
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
								<li><i class="fa fa-th-large"></i> Master Lainnya</li>
							</ul>
							<!-- END BREADCRUMB -->
						</div>
					</div>
					<!-- END ROW 12 -->
					<br />
					<!-- ROW MD6 OFFSET3 -->

					<div class="col-md-6">

						<!-- PANEL PROVINCE-->
						<div class="panel panel-info ">
							<div class="panel-heading">
								<h5 class="panel-title">
									<i class="fa fa-lock"></i> Master Province
								</h5>
							</div>
							<div class="panel-body">
								<button type="button" class="btn btn-primary"
									data-toggle="modal" data-target="#modalAddProvince">
									<span class="glyphicon glyphicon-plus"></span> Add New Province
								</button>
								<br /> <br />
								<table
									class="table table-striped table-hover table-condensed table-bordered"
									id="sortProvince">
									<thead>
										<tr>
											<th>Province ID</th>
											<th>Province Name</th>
											<th>Action</th>
										</tr>
									</thead>
									<tbody>
										<logic:notEmpty name="PortalForm"
											property="listPortalModulBean">
											<logic:iterate id="portalModulBeanList" name="PortalForm"
												property="listPortalModulBean">
												<tr>
													<td><bean:write name="portalModulBeanList"
															property="menuName" /></td>
													<td><bean:write name="portalModulBeanList"
															property="urlMenu" /></td>
													<td class="width30">
														<button type="button" class="btn btn-info"
															data-toggle="modal" data-target="#modalAddModul">
															<span class="glyphicon glyphicon-pencil"></span> Edit
														</button>
														<button type="button" class="btn btn-danger"
															data-toggle="modal" data-target="#modalYakin"
															onclick="javascript:flyToPage('deleteModul', '<bean:write name="portalModulBeanList" property="menuIdModul" />');">
															<span class="glyphicon glyphicon-remove"></span> Delete
														</button>
													</td>
												</tr>
											</logic:iterate>
										</logic:notEmpty>
									</tbody>
								</table>
							</div>
						</div>
						<!-- END PANEL PROVINCE-->
					</div>
					<!-- END ROW MD6 OFFSET3 -->

					<div class="col-md-6">
						<!-- PANEL CITY-->
						<div class="panel panel-info ">
							<div class="panel-heading">
								<h5 class="panel-title">
									<i class="fa fa-lock"></i> Master City
								</h5>
							</div>
							<div class="panel-body">
								<button type="button" class="btn btn-primary"
									data-toggle="modal" data-target="#modalAddCity">
									<span class="glyphicon glyphicon-plus"></span> Add New City
								</button>
								<br /> <br />
								<table
									class="table table-striped table-hover table-condensed table-bordered"
									id="sortCity">
									<thead>
										<tr>
											<th>City ID</th>
											<th>Province Name</th>
											<th>City Name</th>
											<th>Action</th>
										</tr>
									</thead>
									<tbody>
										<logic:notEmpty name="PortalForm"
											property="listPortalModulBean">
											<logic:iterate id="portalModulBeanList" name="PortalForm"
												property="listPortalModulBean">
												<tr>
													<td><bean:write name="portalModulBeanList"
															property="menuName" /></td>
													<td><bean:write name="portalModulBeanList"
															property="urlMenu" /></td>
													<td class="width30">
														<button type="button" class="btn btn-info"
															data-toggle="modal" data-target="#modalAddModul">
															<span class="glyphicon glyphicon-pencil"></span> Edit
														</button>
														<button type="button" class="btn btn-danger"
															data-toggle="modal" data-target="#modalYakin"
															onclick="javascript:flyToPage('deleteModul', '<bean:write name="portalModulBeanList" property="menuIdModul" />');">
															<span class="glyphicon glyphicon-remove"></span> Delete
														</button>
													</td>
												</tr>
											</logic:iterate>
										</logic:notEmpty>
									</tbody>
								</table>
							</div>
						</div>
						<!-- END PANEL CITY-->
					</div>
				</div>

			</div>
		</div>



		<!-- ADD PROVINCE MODAL -->
		<div class="modal fade" id="modalAddProvince" tabindex="-1" role="dialog"
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
								<td class="kanan">Province Name :</td>
								<td><html:text styleClass="form-control" name="PortalForm"
										property="portalModulBean.menuName"/></td>
							</tr>
						</table>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-primary"
							onclick="javascript:flyToPage('masterModul');">
							<i class="fa fa-check"></i> Submit
						</button>
						<button type="button" class="btn btn-danger" data-dismiss="modal">
							<i class="fa fa-close"></i> Close
						</button>
					</div>
				</div>
			</div>
		</div>
		<!-- END ADD PROVINCE MODAL  -->
		
		<!-- ADD CITY MODAL -->
		<div class="modal fade" id="modalAddCity" tabindex="-1" role="dialog"
			aria-labelledby="myModalLabel">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal"
							aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
						<h4 class="modal-title" id="myModalLabel">Add New City</h4>
					</div>
					<div class="modal-body">
						<table class="table table-borderless">
							<tr>
								<td class="kanan">Province Name :</td>
								<td><html:text styleClass="form-control" name="PortalForm"
										property="portalModulBean.menuName"/></td>
							</tr>
							<tr>
								<td class="kanan">City Name :</td>
								<td><html:text styleClass="form-control" name="PortalForm"
										property="portalModulBean.urlMenu" /></td>
							</tr>
						</table>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-primary"
							onclick="javascript:flyToPage('masterModul');">
							<i class="fa fa-check"></i> Submit
						</button>
						<button type="button" class="btn btn-danger" data-dismiss="modal">
							<i class="fa fa-close"></i> Close
						</button>
					</div>
				</div>
			</div>
		</div>
		<!-- END ADD CITY MODAL  -->

		<%@include file="PartJavascript.jsp"%>
		<script>
			$(document).ready(function() {
				$('#sortProvince').DataTable();
			});
			
			$(document).ready(function() {
				$('#sortCity').DataTable();
			});
		</script>
	</html:form>
</body>
</html>