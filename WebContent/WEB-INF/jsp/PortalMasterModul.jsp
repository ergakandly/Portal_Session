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

<title>Master Module</title>
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

						<br /> <br />
						<table
							class="table table-striped table-hover table-condensed table-bordered"
							id="sort">
							<thead>
								<tr>
									<th>Module Name</th>
									<th>Module Link</th>
									<th>Module Icon</th>
									<th>Button Action</th>
								</tr>
							</thead>
							<tbody>

								<logic:notEmpty name="PortalForm" property="listPortalModulBean">
									<logic:iterate id="portalModulBeanList" name="PortalForm"
										property="listPortalModulBean">
										<tr>
											<td><bean:write name="portalModulBeanList"
													property="menuName" /></td>
											<td><bean:write name="portalModulBeanList"
													property="urlMenu" /></td>
											<td class="tengah"><span
												class="<bean:write name="portalModulBeanList" property="icon" />"></span>
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
				<!-- ROW MD6 OFFSET3 -->
			</div>
		</div>



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
								<td><html:text styleClass="form-control" name="PortalForm"
										property="portalModulBean.menuName" size="57" /></td>
							</tr>
							<tr>
								<td class="kanan">Module Link :</td>
								<td><html:text styleClass="form-control" name="PortalForm"
										property="portalModulBean.urlMenu" size="57" /></td>
							</tr>
							<tr>
								<td class="kanan">Icon :</td>
								<td>
									<button class="btn btn-default" data-iconset="glyphicon"
										data-icon="glyphicon-camera" role="iconpicker"
										name="portalModulBean.icon"></button> <!-- 								<button class="btn btn-default" data-iconset="glyphicon" -->
									<!-- 									data-icon="glyphicon-camera" role="iconpicker" ></button> -->
								</td>
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
		<!-- END MODAL  -->

		<!-- MODAL HAPUS -->
		<div class="modal fade" id="modalYakin" tabindex="-1" role="dialog"
			aria-labelledby="myModalLabel">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal"
							aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
						<h4 class="modal-title" id="myModalLabel">Delete Modul Data</h4>
					</div>
					<div class="modal-body">
						<div class="alert alert-danger kiri" role="alert">
							<i class="fa fa-exclamation-triangle"></i> Are you sure want to
							delete this record?
						</div>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-primary">
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

		<%@include file="PartJavascript.jsp"%>
		<script>
			$(document).ready(function() {
				$('#sort').DataTable();
			});
		</script>
	</html:form>
</body>
</html>