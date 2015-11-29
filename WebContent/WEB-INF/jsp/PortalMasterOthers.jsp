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
	function flyToPage(task, id, isDeleteMasterOthers) {
// 		alert(task+"::"+id+"::"+isDeleteMasterOthers);
		document.forms[0].task.value = task;
		document.forms[0].id.value = id;
		document.forms[0].isDeleteMasterOthers.value = isDeleteMasterOthers;
// 		alert(document.forms[0].task.value+"//"+document.forms[0].id.value+"//"+document.forms[0].isDeleteMasterOthers.value);
		document.forms[0].submit();
		
	}
</script>

<body>
	<html:form method="post" action="/portal">
		<html:hidden name="PortalForm" property="task" />
		<html:hidden name="PortalForm" property="id" />
		<html:hidden name="PortalForm" property="isDeleteMasterOthers" />
		
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
									href="javascript:flyToPage('dashboardUser');"> Dashboard</a></li>
								<li><i class="fa fa-th-large"></i> Master Lainnya</li>
							</ul>
							<!-- END BREADCRUMB -->
						</div>
					</div>
					<!-- END ROW 12 -->
					<br />
					
					<!-- PANEL PROVINCE-->
					<div class="col-md-6">
						<div class="panel panel-info ">
							<div class="panel-heading">
								<h5 class="panel-title">
									<i class="fa fa-lock"></i> Master Province
								</h5>
							</div>
							<div class="panel-body" align="center">
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
											property="listPortalProvince">
											<logic:iterate id="portalProvinceList" name="PortalForm"
												property="listPortalProvince">
												<tr>
													<td><bean:write name="portalProvinceList"
															property="provinceId" /></td>
													<td><bean:write name="portalProvinceList"
															property="provinceName" /></td>
													<td class="width30">
														<button type="button" class="btn btn-info"
															data-toggle="modal" data-target="#modalAddModul">
															<span class="glyphicon glyphicon-pencil"></span> Edit
														</button>
														<button type="button" class="btn btn-danger"
															data-toggle="modal" data-target="#modalYakin"
															onclick="javascript:flyToPage('masterOthers', '<bean:write name="portalProvinceList" property="provinceId" />', 'province');">
<%-- 															<html:hidden name="PortalForm" property="isDeleteMasterOthers" value="province" /> --%>
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
					</div>
					<!-- END PANEL PROVINCE-->
					
					<!-- PANEL CITY-->
					<div class="col-md-6">
						<div class="panel panel-info ">
							<div class="panel-heading">
								<h5 class="panel-title">
									<i class="fa fa-lock"></i> Master City
								</h5>
							</div>
							<div class="panel-body" align="center">
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
											property="listPortalCity">
											<logic:iterate id="portalCityList" name="PortalForm"
												property="listPortalCity">
												<tr>
													<td><bean:write name="portalCityList"
															property="cityId" /></td>
													<td><bean:write name="portalCityList"
															property="cityProvinceName" /></td>
													<td><bean:write name="portalCityList"
															property="cityName" /></td>
													<td class="width30">
														<button type="button" class="btn btn-info"
															data-toggle="modal" data-target="#modalAddModul">
															<span class="glyphicon glyphicon-pencil"></span> Edit
														</button>
														<button type="button" class="btn btn-danger"
															data-toggle="modal" data-target="#modalYakin"
															onclick="javascript:flyToPage('masterOthers', '<bean:write name="portalCityList" property="cityId" />', 'city');">
<%-- 															<html:hidden name="PortalForm" property="isDeleteMasterOthers" value="city" /> --%>
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
					</div>
				<!-- END PANEL CITY-->
				
				<!-- PANEL MAJOR-->
					<div class="col-md-6">
						<div class="panel panel-info ">
							<div class="panel-heading">
								<h5 class="panel-title">
									<i class="fa fa-lock"></i> Master Major
								</h5>
							</div>
							<div class="panel-body" align="center">
								<button type="button" class="btn btn-primary"
									data-toggle="modal" data-target="#modalAddMajor">
									<span class="glyphicon glyphicon-plus"></span> Add New Major
								</button>
								<br /> <br />
								<table
									class="table table-striped table-hover table-condensed table-bordered"
									id="sortCity">
									<thead>
										<tr>
											<th>Major ID</th>
											<th>Major Name</th>
											<th>Description</th>
											<th>Action</th>
										</tr>
									</thead>
									<tbody>
										<logic:notEmpty name="PortalForm"
											property="listPortalMajor">
											<logic:iterate id="portalMajorList" name="PortalForm"
												property="listPortalMajor">
												<tr>
													<td><bean:write name="portalMajorList"
															property="majorId" /></td>
													<td><bean:write name="portalMajorList"
															property="majorName" /></td>
													<td><bean:write name="portalMajorList"
															property="description" /></td>
													<td class="width30">
														<button type="button" class="btn btn-info"
															data-toggle="modal" data-target="#modalAddModul">
															<span class="glyphicon glyphicon-pencil"></span> Edit
														</button>
														<button type="button" class="btn btn-danger"
															data-toggle="modal" data-target="#modalYakin"
															onclick="javascript:flyToPage('masterOthers', '<bean:write name="portalMajorList" property="majorId" />', 'major');">
<%-- 															<html:hidden name="PortalForm" property="isDeleteMasterOthers" value="major" /> --%>
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
					</div>
				<!-- END PANEL MAJOR-->
				
				<!-- PANEL DEPARTMENT-->
					<div class="col-md-6">
						<div class="panel panel-info ">
							<div class="panel-heading">
								<h5 class="panel-title">
									<i class="fa fa-lock"></i> Master Department
								</h5>
							</div>
							<div class="panel-body" align="center">
								<button type="button" class="btn btn-primary"
									data-toggle="modal" data-target="#modalAddDepartment">
									<span class="glyphicon glyphicon-plus"></span> Add New Department
								</button>
								<br /> <br />
								<table
									class="table table-striped table-hover table-condensed table-bordered"
									id="sortCity">
									<thead>
										<tr>
											<th>Department ID</th>
											<th>Department Name</th>
											<th>Description</th>
											<th>Action</th>
										</tr>
									</thead>
									<tbody>
										<logic:notEmpty name="PortalForm"
											property="listPortalDepartment">
											<logic:iterate id="portalDepartmentList" name="PortalForm"
												property="listPortalDepartment">
												<tr>
													<td><bean:write name="portalDepartmentList"
															property="departmentId" /></td>
													<td><bean:write name="portalDepartmentList"
															property="msDepartmentName" /></td>
													<td><bean:write name="portalDepartmentList"
															property="description" /></td>
													<td class="width30">
														<button type="button" class="btn btn-info"
															data-toggle="modal" data-target="#modalAddModul">
															<span class="glyphicon glyphicon-pencil"></span> Edit
														</button>
														<button type="button" class="btn btn-danger"
															data-toggle="modal" data-target="#modalYakin"
															onclick="javascript:flyToPage('masterOthers', '<bean:write name="portalDepartmentList" property="departmentId" />', 'department');">
<%-- 															<html:hidden name="PortalForm" property="isDeleteMasterOthers" value="department" /> --%>
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
					</div>
				<!-- END PANEL DEPARTMENT-->
				
				<!-- PANEL LOCATION-->
					<div class="col-md-6">
						<div class="panel panel-info ">
							<div class="panel-heading">
								<h5 class="panel-title">
									<i class="fa fa-lock"></i> Master Location
								</h5>
							</div>
							<div class="panel-body" align="center">
								<button type="button" class="btn btn-primary"
									data-toggle="modal" data-target="#modalAddLocation">
									<span class="glyphicon glyphicon-plus"></span> Add New Location
								</button>
								<br /> <br />
								<table
									class="table table-striped table-hover table-condensed table-bordered"
									id="sortCity">
									<thead>
										<tr>
											<th>Location ID</th>
											<th>Location Name</th>
											<th>Description</th>
											<th>Action</th>
										</tr>
									</thead>
									<tbody>
										<logic:notEmpty name="PortalForm"
											property="listPortalLocation">
											<logic:iterate id="portalLocationList" name="PortalForm"
												property="listPortalLocation">
												<tr>
													<td><bean:write name="portalLocationList"
															property="locationId" /></td>
													<td><bean:write name="portalLocationList"
															property="locationName" /></td>
													<td><bean:write name="portalLocationList"
															property="description" /></td>
													<td class="width30">
														<button type="button" class="btn btn-info"
															data-toggle="modal" data-target="#modalAddModul">
															<span class="glyphicon glyphicon-pencil"></span> Edit
														</button>
														<button type="button" class="btn btn-danger"
															data-toggle="modal" data-target="#modalYakin"
															onclick="javascript:flyToPage('masterOthers', '<bean:write name="portalLocationList" property="locationId" />', 'location');">
<%-- 															<html:hidden name="PortalForm" property="isDeleteMasterOthers" value="location" /> --%>
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
					</div>
				<!-- END PANEL LOCATION-->
				
				<!-- PANEL PRIVILEGE-->
					<div class="col-md-6">
						<div class="panel panel-info ">
							<div class="panel-heading">
								<h5 class="panel-title">
									<i class="fa fa-lock"></i> Master Privilege
								</h5>
							</div>
							<div class="panel-body" align="center">
								<button type="button" class="btn btn-primary"
									data-toggle="modal" data-target="#modalAddPrivilege">
									<span class="glyphicon glyphicon-plus"></span> Add New Privilege
								</button>
								<br /> <br />
								<table
									class="table table-striped table-hover table-condensed table-bordered"
									id="sortCity">
									<thead>
										<tr>
											<th>Privilege ID</th>
											<th>Privilege Name</th>
											<th>Description</th>
											<th>Action</th>
										</tr>
									</thead>
									<tbody>
										<logic:notEmpty name="PortalForm"
											property="listPortalPrivilege">
											<logic:iterate id="portalPrivilegeList" name="PortalForm"
												property="listPortalPrivilege">
												<tr>
													<td><bean:write name="portalPrivilegeList"
															property="privilegeId" /></td>
													<td><bean:write name="portalPrivilegeList"
															property="privilegeName" /></td>
													<td><bean:write name="portalPrivilegeList"
															property="description" /></td>
													<td class="width30">
														<button type="button" class="btn btn-info"
															data-toggle="modal" data-target="#modalAddModul">
															<span class="glyphicon glyphicon-pencil"></span> Edit
														</button>
														<button type="button" class="btn btn-danger"
															data-toggle="modal" data-target="#modalYakin"
															onclick="javascript:flyToPage('masterOthers', '<bean:write name="portalPrivilegeList" property="privilegeId" />', 'privilege');">
<%-- 															<html:hidden name="PortalForm" property="isDeleteMasterOthers" value="privilege" /> --%>
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
					</div>
				<!-- END PANEL PRIVILEGE-->
				
				<!-- PANEL POSITION-->
					<div class="col-md-6">
						<div class="panel panel-info ">
							<div class="panel-heading">
								<h5 class="panel-title">
									<i class="fa fa-lock"></i> Master Position
								</h5>
							</div>
							<div class="panel-body" align="center">
								<button type="button" class="btn btn-primary"
									data-toggle="modal" data-target="#modalAddPosition">
									<span class="glyphicon glyphicon-plus"></span> Add New Position
								</button>
								<br /> <br />
								<table
									class="table table-striped table-hover table-condensed table-bordered"
									id="sortCity">
									<thead>
										<tr>
											<th>Position ID</th>
											<th>Position Name</th>
											<th>Description</th>
											<th>Action</th>
										</tr>
									</thead>
									<tbody>
										<logic:notEmpty name="PortalForm"
											property="listPortalPosition">
											<logic:iterate id="portalPositionList" name="PortalForm"
												property="listPortalPosition">
												<tr>
													<td><bean:write name="portalPositionList"
															property="positionId" /></td>
													<td><bean:write name="portalPositionList"
															property="positionName" /></td>
													<td><bean:write name="portalPositionList"
															property="description" /></td>
													<td class="width30">
														<button type="button" class="btn btn-info"
															data-toggle="modal" data-target="#modalAddModul">
															<span class="glyphicon glyphicon-pencil"></span> Edit
														</button>
														<button type="button" class="btn btn-danger"
															data-toggle="modal" data-target="#modalYakin"
															onclick="javascript:flyToPage('masterOthers', '<bean:write name="portalPositionList" property="positionId" />', 'position');">
<%-- 															<html:hidden name="PortalForm" property="isDeleteMasterOthers" value="position" /> --%>
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
					</div>
				<!-- END PANEL POSITION-->
				
				<!-- PANEL BANK-->
					<div class="col-md-6">
						<div class="panel panel-info ">
							<div class="panel-heading">
								<h5 class="panel-title">
									<i class="fa fa-lock"></i> Master Bank
								</h5>
							</div>
							<div class="panel-body" align="center">
								<button type="button" class="btn btn-primary"
									data-toggle="modal" data-target="#modalAddBank">
									<span class="glyphicon glyphicon-plus"></span> Add New Bank
								</button>
								<br /> <br />
								<table
									class="table table-striped table-hover table-condensed table-bordered"
									id="sortCity">
									<thead>
										<tr>
											<th>Bank ID</th>
											<th>Bank Name</th>
											<th>Description</th>
											<th>Action</th>
										</tr>
									</thead>
									<tbody>
										<logic:notEmpty name="PortalForm"
											property="listPortalBank">
											<logic:iterate id="portalBankList" name="PortalForm"
												property="listPortalBank">
												<tr>
													<td><bean:write name="portalBankList"
															property="bankId" /></td>
													<td><bean:write name="portalBankList"
															property="bankName" /></td>
													<td><bean:write name="portalBankList"
															property="description" /></td>
													<td class="width30">
														<button type="button" class="btn btn-info"
															data-toggle="modal" data-target="#modalAddModul">
															<span class="glyphicon glyphicon-pencil"></span> Edit
														</button>
														<button type="button" class="btn btn-danger"
															data-toggle="modal" data-target="#modalYakin"
															onclick="javascript:flyToPage('masterOthers', '<bean:write name="portalBankList" property="bankId" />', 'bank');">
<%-- 															<html:hidden name="PortalForm" property="isDeleteMasterOthers" value="bank" /> --%>
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
					</div>
				<!-- END PANEL BANK-->
				
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
										property="portalProvinceBean.provinceNameTemp"/></td>
							</tr>
						</table>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-primary"
							onclick="javascript:flyToPage('masterOthers');">
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
								<td class="kanan">Province ID :</td>
								<td><html:text styleClass="form-control" name="PortalForm"
										property="portalCityBean.cityProvinceId"/></td>
							</tr>
							<tr>
								<td class="kanan">City Name :</td>
								<td><html:text styleClass="form-control" name="PortalForm"
										property="portalCityBean.cityNameTemp" /></td>
							</tr>
						</table>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-primary"
							onclick="javascript:flyToPage('masterOthers');">
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
		
		<!-- ADD MAJOR MODAL -->
		<div class="modal fade" id="modalAddMajor" tabindex="-1" role="dialog"
			aria-labelledby="myModalLabel">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal"
							aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
						<h4 class="modal-title" id="myModalLabel">Add New Major</h4>
					</div>
					<div class="modal-body">
						<table class="table table-borderless">
							<tr>
								<td class="kanan">Major Name :</td>
								<td><html:text styleClass="form-control" name="PortalForm"
										property="portalMajorBean.majorNameTemp"/></td>
							</tr>
							<tr>
								<td class="kanan">Description :</td>
								<td><html:text styleClass="form-control" name="PortalForm"
										property="portalMajorBean.description" /></td>
							</tr>
						</table>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-primary"
							onclick="javascript:flyToPage('masterOthers');">
							<i class="fa fa-check"></i> Submit
						</button>
						<button type="button" class="btn btn-danger" data-dismiss="modal">
							<i class="fa fa-close"></i> Close
						</button>
					</div>
				</div>
			</div>
		</div>
		<!-- END ADD MAJOR MODAL  -->
		
		<!-- ADD DEPARTMENT MODAL -->
		<div class="modal fade" id="modalAddDepartment" tabindex="-1" role="dialog"
			aria-labelledby="myModalLabel">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal"
							aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
						<h4 class="modal-title" id="myModalLabel">Add New Department</h4>
					</div>
					<div class="modal-body">
						<table class="table table-borderless">
							<tr>
								<td class="kanan">Department Name :</td>
								<td><html:text styleClass="form-control" name="PortalForm"
										property="portalDepartmentBean.msDepartmentNameTemp"/></td>
							</tr>
							<tr>
								<td class="kanan">Description :</td>
								<td><html:text styleClass="form-control" name="PortalForm"
										property="portalDepartmentBean.description" /></td>
							</tr>
						</table>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-primary"
							onclick="javascript:flyToPage('masterOthers');">
							<i class="fa fa-check"></i> Submit
						</button>
						<button type="button" class="btn btn-danger" data-dismiss="modal">
							<i class="fa fa-close"></i> Close
						</button>
					</div>
				</div>
			</div>
		</div>
		<!-- END ADD DEPARTMENT MODAL  -->
		
		<!-- ADD LOCATION MODAL -->
		<div class="modal fade" id="modalAddLocation" tabindex="-1" role="dialog"
			aria-labelledby="myModalLabel">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal"
							aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
						<h4 class="modal-title" id="myModalLabel">Add New Location</h4>
					</div>
					<div class="modal-body">
						<table class="table table-borderless">
							<tr>
								<td class="kanan">Location Name :</td>
								<td><html:text styleClass="form-control" name="PortalForm"
										property="portalLocationBean.locationNameTemp"/></td>
							</tr>
							<tr>
								<td class="kanan">Description :</td>
								<td><html:text styleClass="form-control" name="PortalForm"
										property="portalLocationBean.description" /></td>
							</tr>
						</table>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-primary"
							onclick="javascript:flyToPage('masterOthers');">
							<i class="fa fa-check"></i> Submit
						</button>
						<button type="button" class="btn btn-danger" data-dismiss="modal">
							<i class="fa fa-close"></i> Close
						</button>
					</div>
				</div>
			</div>
		</div>
		<!-- END ADD LOCATION MODAL  -->
		
		<!-- ADD PRIVILEGE MODAL -->
		<div class="modal fade" id="modalAddPrivilege" tabindex="-1" role="dialog"
			aria-labelledby="myModalLabel">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal"
							aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
						<h4 class="modal-title" id="myModalLabel">Add New Privilege</h4>
					</div>
					<div class="modal-body">
						<table class="table table-borderless">
							<tr>
								<td class="kanan">Privilege Name :</td>
								<td><html:text styleClass="form-control" name="PortalForm"
										property="portalPrivilegeBean.privilegeNameTemp"/></td>
							</tr>
							<tr>
								<td class="kanan">Description :</td>
								<td><html:text styleClass="form-control" name="PortalForm"
										property="portalPrivilegeBean.description" /></td>
							</tr>
						</table>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-primary"
							onclick="javascript:flyToPage('masterOthers');">
							<i class="fa fa-check"></i> Submit
						</button>
						<button type="button" class="btn btn-danger" data-dismiss="modal">
							<i class="fa fa-close"></i> Close
						</button>
					</div>
				</div>
			</div>
		</div>
		<!-- END ADD PRIVILEGE MODAL  -->
		
		<!-- ADD POSITION MODAL -->
		<div class="modal fade" id="modalAddPosition" tabindex="-1" role="dialog"
			aria-labelledby="myModalLabel">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal"
							aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
						<h4 class="modal-title" id="myModalLabel">Add New Position</h4>
					</div>
					<div class="modal-body">
						<table class="table table-borderless">
							<tr>
								<td class="kanan">Position Name :</td>
								<td><html:text styleClass="form-control" name="PortalForm"
										property="portalPositionBean.positionNameTemp"/></td>
							</tr>
							<tr>
								<td class="kanan">Description :</td>
								<td><html:text styleClass="form-control" name="PortalForm"
										property="portalPositionBean.description" /></td>
							</tr>
						</table>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-primary"
							onclick="javascript:flyToPage('masterOthers');">
							<i class="fa fa-check"></i> Submit
						</button>
						<button type="button" class="btn btn-danger" data-dismiss="modal">
							<i class="fa fa-close"></i> Close
						</button>
					</div>
				</div>
			</div>
		</div>
		<!-- END ADD POSITION MODAL  -->
		
		<!-- ADD BANK MODAL -->
		<div class="modal fade" id="modalAddBank" tabindex="-1" role="dialog"
			aria-labelledby="myModalLabel">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal"
							aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
						<h4 class="modal-title" id="myModalLabel">Add New Bank</h4>
					</div>
					<div class="modal-body">
						<table class="table table-borderless">
							<tr>
								<td class="kanan">Bank Name :</td>
								<td><html:text styleClass="form-control" name="PortalForm"
										property="portalBankBean.bankNameTemp"/></td>
							</tr>
							<tr>
								<td class="kanan">Description :</td>
								<td><html:text styleClass="form-control" name="PortalForm"
										property="portalBankBean.description" /></td>
							</tr>
						</table>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-primary"
							onclick="javascript:flyToPage('masterOthers');">
							<i class="fa fa-check"></i> Submit
						</button>
						<button type="button" class="btn btn-danger" data-dismiss="modal">
							<i class="fa fa-close"></i> Close
						</button>
					</div>
				</div>
			</div>
		</div>
		<!-- END ADD BANK MODAL  -->

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