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

<title>Master Role</title>
</head>
<script language="JavaScript">
	function flyToPage(task, id) {
		document.forms[0].task.value = task;
		document.forms[0].id.value = id;
		document.forms[0].submit();
	}

	function doAlert(){
		var selectedMenuArr=[];
		var selectedPrivArr=[];
		$("input:checkbox[name=selectedNewMenu]:checked").each(function(){
			selectedMenuArr.push($(this).val());
		});
		$("input:checkbox[name=selectedNewPriv]:checked").each(function(){
			selectedPrivArr.push($(this).val());
		});
		
		document.forms[0].selectedNewMenu = selectedMenuArr;
		document.forms[0].selectedNewPriv = selectedPrivArr;
		alert(selectedMenuArr);
		alert(selectedPrivArr);
	}
</script>

<body>
	<%@include file="PartNavbar.jsp"%>
	<html:form method="post" action="/portal"
		onsubmit="javascript:doAlert();">
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
						<li><i class="fa fa-dashboard"></i><a
							href="javascript:flyToPage('dashboardAdmin');"> Dashboard</a></li>
						<li><span class="glyphicon glyphicon-king"></span> Roles</li>
					</ul>
					<!-- END BREADCRUMB -->
				</div>

				<!-- KOLOM MD 8-->
				<div class="col-md-8 col-md-offset-2">
					<center>
						<button type="button" onclick="javascript:addModal();" id="addBtn"
							class="btn btn-primary" data-toggle="modal"
							data-target="#modalAddRole" data-backdrop="static">
							<span class="glyphicon glyphicon-plus"></span> Add New Role
						</button>
					</center>
					<br /> <br />
					<table
						class="table table-striped table-hover table-condensed table-bordered"
						id="sort">
						<thead>
							<tr>
								<th>Role Name</th>
								<th>Access Menu</th>
								<th>Access Privileges for Employee Modul</th>
								<th>Description</th>
								<th class="tengah">Action Button</th>
							</tr>
						</thead>
						<logic:notEmpty name="PortalForm" property="listPortalMasterRole">
							<logic:iterate id="portalMasterRoleList" name="PortalForm"
								property="listPortalMasterRole">
								<tr>

									<!-- ROLE NAME -->
									<td><bean:write name="portalMasterRoleList"
											property="roleName" /></td>

									<!-- MENU -->
									<td><logic:notEmpty name="portalMasterRoleList"
											property="listMasterRoleBean">
											<logic:iterate id="role" name="portalMasterRoleList"
												property="listMasterRoleBean">
												<bean:write name="role" property="menuName" />
												<br />
											</logic:iterate>
										</logic:notEmpty></td>


									<!-- PRIVILAGES -->
									<td class="tengah"><logic:notEmpty
											name="portalMasterRoleList" property="listMasterRoleBeanPriv">
											<logic:iterate id="priv" name="portalMasterRoleList"
												property="listMasterRoleBeanPriv">
												<logic:empty name="priv" property="privilegeName">
													<p>
														<br /> -
													</p>
												</logic:empty>
												<bean:write name="priv" property="privilegeName" />
												<br />
											</logic:iterate>
										</logic:notEmpty></td>

									<!-- Description -->
									<td><bean:write name="portalMasterRoleList"
											property="description" /></td>

									<td class="tengah" width="20%">
										<button type="button" id="editBtn" class="btn btn-info"
											onclick="javascript:editRole('<bean:write name="portalMasterRoleList"
											property="roleId" />','<bean:write name="portalMasterRoleList"
											property="roleName" />','<bean:write name="portalMasterRoleList"
											property="description" />');"
											data-toggle="modal" data-target="#modalAddRole"
											data-backdrop="static">
											<i class="fa fa-pencil"></i> Edit
										</button>
										<button type="button" class="btn btn-danger"
											onclick="javascript:flyToPage('deleteRole', '<bean:write name="portalMasterRoleList" property="roleId" />');">
											<span class="glyphicon glyphicon-remove" aria-hidden="true"></span>
											Delete
										</button>
									</td>
								</tr>
							</logic:iterate>
						</logic:notEmpty>
					</table>
				</div>
			</div>
		</div>

		<!-- MODAL -->
		<div class="modal fade" id="modalAddRole" tabindex="-1" role="dialog"
			aria-labelledby="myModalLabel">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal"
							aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
						<h4 id="modalLabel"></h4>
					</div>
					<div class="modal-body ">
						<html:hidden name="PortalForm" property="task" value="masterRole" />
						<html:hidden name="PortalForm" property="id" />
						<table align="center">
							<tr>
								<td class="kanan">Role Name :</td>
								<td><html:text styleClass="form-control" name="PortalForm"
										property="addRoleName" size="57" /></td>
							</tr>
						</table>
						<br />

						<table align="center"
							class="table table-hover table-condensed table-bordered">
							<thead>
								<tr>
									<td style="vertical-align: middle;" rowspan="2" class="tengah">Access
										Menu</td>
									<td colspan="4" class="tengah">Access Privilages</td>
								</tr>
								<tr>
									<td class="tengah">List</td>
									<td class="tengah">Add</td>
									<td class="tengah">Edit</td>
									<td class="tengah">Disable</td>
								</tr>
							</thead>

							<tbody>
								<logic:notEmpty name="PortalForm"
									property="listPortalMasterRoleMenu">
									<logic:iterate id="portalMasterRoleMenuList" name="PortalForm"
										property="viewMenu">
										<tr>
											<td>
												<bean:define id="menuId" name="portalMasterRoleMenuList"
													property="menuIdView" type="java.lang.String" /> <html:multibox
													name="PortalForm" property="selectedNewMenu"
													value="<%=menuId%>">
													<bean:write name="portalMasterRoleMenuList"
														property="menuIdView" />
												</html:multibox> <bean:write name="portalMasterRoleMenuList"
													property="menuNameView" /><br /></td>

											<logic:notEmpty name="PortalForm"
												property="listPortalMasterRolePriv">
												<logic:iterate id="portalMasterRolePrivList"
													name="PortalForm" property="listPortalMasterRolePriv">
													<logic:equal name="portalMasterRoleMenuList"
														property="menuNameView" value="Employee">
														<td class="tengah"><html:multibox name="PortalForm"
																property="selectedNewPriv" styleId="multiPriv">
																<bean:write name="portalMasterRolePrivList"
																	property="privilegeIdView" />
															</html:multibox></td>

													</logic:equal>
												</logic:iterate>
											</logic:notEmpty>

										</tr>
									</logic:iterate>
								</logic:notEmpty>
							</tbody>
						</table>
						<tr>
							<td class="kanan">Description :</td>
							<td><html:textarea styleClass="form-control"
									name="PortalForm" property="roleDescription" rows="4" cols="50" /></td>
						</tr>
					</div>
					<div class="modal-footer">
						<!-- 						<button type="button" class="btn btn-primary" -->
						<!-- 							onclick="javascript:flyToPage('masterRole');"> -->
						<!-- 							<i class="fa fa-check"></i> Submit -->
						<!-- 						</button> -->

						<button type="submit" class="btn btn-primary">
							<i class="fa fa-check"></i> Submit
						</button>

						<!-- 						<button type="button" class="btn btn-danger" data-dismiss="modal"> -->
						<!-- 							<i class="fa fa-close"></i> Close -->
						<!-- 						</button> -->

						<button type="button" class="btn btn-danger" data-dismiss="modal"
							onclick="javascript:onRoleClose();">
							<i class="fa fa-close"></i> Close
						</button>
					</div>
				</div>
			</div>
		</div>
	</html:form>
	<!-- MODAL -->
	<!-- JAVASCRIPT -->
	<%@include file="PartJavascript.jsp"%>
	<script>
	$(document).ready(function() {
		$('#sort').dataTable( {
			 "columns": [
			             null,
			             null,
			             null,
			             null,
			             { "orderable": false }
			            ]
		} );
	});
	
		$(function() {
			$('#addBtn').click(function() {
				$("#modalLabel").html("Add New Role");
			});
			$('#editBtn').click(function() {
				$("#modalLabel").html("Edit Role");
			});
		});
		
		function addRole() {
			document.forms["PortalForm"].elements["addRoleName"].value = "";
			document.forms["PortalForm"].elements["roleDescription"].value = "";

		}

		function editRole(id, name, desc) {
			document.forms["PortalForm"].elements["addRoleName"].value = name;
			document.forms["PortalForm"].elements["roleDescription"].value = desc;
			document.forms["PortalForm"].id.value = id;
		}

		function onRoleClose() {
			$('#contact-form').bootstrapValidator('resetField','portalModulBean.menuName');
			$('#contact-form').bootstrapValidator('resetField','portalModulBean.urlMenu');
			document.forms["PortalForm"].elements["addRoleName"].value = "";
			document.forms["PortalForm"].elements["roleDescription"].value = "";
		}
		
		function submitForm(task, id) {
			
			var method = task==""? document.forms["PortalForm"].task.value:task;
			
			if(id != "")
				document.forms["PortalForm"].id.value= id;
					
			document.forms["PortalForm"].submit();
		}
	</script>
</body>

</html>