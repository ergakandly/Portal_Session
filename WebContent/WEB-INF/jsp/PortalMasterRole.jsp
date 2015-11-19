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
						<button type="button" class="btn btn-primary" data-toggle="modal"
							data-target="#modalAddRole" data-backdrop="static">
							<span class="glyphicon glyphicon-plus"></span> Add New Role

						</button>
						<br /> <br />
						<table align="center"
							class="table table-nonfluid table-striped table-bordered table-hover"
							width="70%">
							<tr>
								<th>Role Name</th>
								<th>Access Menu</th>
								<th>Access Privileges for Employee Modul</th>
								<th>Action Button</th>
							</tr>
							<logic:notEmpty name="PortalForm" property="listPortalMasterRole">
								<logic:iterate id="portalMasterRoleList" name="PortalForm" property="listPortalMasterRole">
									<tr>
									
										<!-- ROLE NAME -->
										<td align="center"><bean:write name="portalMasterRoleList" property="roleName" /></td>
										
										<!-- MENU -->
										<td align="center">
<!-- 											<div class="checkbox">  -->
<!-- 												<label>  -->
													<logic:notEmpty name="portalMasterRoleList" property="listMasterRoleBean">
														<logic:iterate id="role" name="portalMasterRoleList" property="listMasterRoleBean">
															<bean:write name="role" property="menuName" /><br />
														</logic:iterate>
													</logic:notEmpty>
<!-- 												</label> -->
<!-- 											</div> -->
										</td>
										
										
 										<!-- PRIVILAGES -->
										<td align="center">
<!-- 											<div class="checkbox"> -->
<!-- 												<label>  -->
													<logic:notEmpty name="portalMasterRoleList" property="listMasterRoleBeanPriv">
														<logic:iterate id="priv" name="portalMasterRoleList" property="listMasterRoleBeanPriv">
															<bean:write name="priv" property="privilegeName" /><br />
														</logic:iterate>
													</logic:notEmpty>
<!-- 												</label> -->
<!-- 											</div> -->
										</td>
										
										<td align="center">
											<button type="button" class="btn btn-info">
												<span class="glyphicon glyphicon-pencil" aria-hidden="true"></span>
												Edit
											</button>
											<button type="button" class="btn btn-danger">
												<span class="glyphicon glyphicon-remove" aria-hidden="true"></span>
												Delete
											</button>
										</td>
										
<!-- 										<td>Admin</td> -->
<!-- 										<td> -->
<!-- 											<div class="checkbox"> -->
<!-- 												<label> <input type="checkbox"> Employee <br /> -->
<!-- 													<input type="checkbox"> Attendance <br /> <input -->
<!-- 													type="checkbox"> Leave <br /> -->
<!-- 												</label> -->
<!-- 											</div> -->
<!-- 										</td> -->
<!-- 										<td> -->
<!-- 											<div class="checkbox"> -->
<!-- 												<label> <input type="checkbox"> Insert <br /> -->
<!-- 													<input type="checkbox"> Update <br /> <input -->
<!-- 													type="checkbox"> Delete <br /> <input -->
<!-- 													type="checkbox"> List <br /> -->
<!-- 												</label> -->
<!-- 											</div> -->
<!-- 										</td> -->
<!-- 										<td> -->
<!-- 											<button type="button" class="btn btn-info"> -->
<!-- 												<span class="glyphicon glyphicon-pencil" aria-hidden="true"></span> -->
<!-- 												Edit -->
<!-- 											</button> -->
<!-- 											<button type="button" class="btn btn-danger"> -->
<!-- 												<span class="glyphicon glyphicon-remove" aria-hidden="true"></span> -->
<!-- 												Delete -->
<!-- 											</button> -->
<!-- 										</td> -->
<!-- 									</tr> -->
<!-- 									<tr> -->
<!-- 										<td>HR</td> -->
<!-- 										<td> -->
<!-- 											<div class="checkbox"> -->
<!-- 												<label> <input type="checkbox"> Employee <br /> -->
<!-- 													<input type="checkbox"> Attendance <br /> <input -->
<!-- 													type="checkbox"> Leave <br /> -->
<!-- 												</label> -->
<!-- 											</div> -->
<!-- 										</td> -->
<!-- 										<td> -->
<!-- 											<div class="checkbox"> -->
<!-- 												<label> <input type="checkbox"> Insert <br /> -->
<!-- 													<input type="checkbox"> Update <br /> <input -->
<!-- 													type="checkbox"> Delete <br /> <input -->
<!-- 													type="checkbox"> List <br /> -->
<!-- 												</label> -->
<!-- 											</div> -->
<!-- 										</td> -->
<!-- 										<td> -->
<!-- 											<button type="button" class="btn btn-info"> -->
<!-- 												<span class="glyphicon glyphicon-pencil" aria-hidden="true"></span> -->
<!-- 												Edit -->
<!-- 											</button> -->
<!-- 											<button type="button" class="btn btn-danger"> -->
<!-- 												<span class="glyphicon glyphicon-remove" aria-hidden="true"></span> -->
<!-- 												Delete -->
<!-- 											</button> -->
<!-- 										</td> -->
<!-- 									</tr> -->
<!-- 									<tr> -->
<!-- 										<td>User</td> -->
<!-- 										<td> -->
<!-- 											<div class="checkbox"> -->
<!-- 												<label> <input type="checkbox"> Employee <br /> -->
<!-- 													<input type="checkbox"> Attendance <br /> <input -->
<!-- 													type="checkbox"> Leave <br /> -->
<!-- 												</label> -->
<!-- 											</div> -->
<!-- 										</td> -->
<!-- 										<td> -->
<!-- 											<div class="checkbox"> -->
<!-- 												<label> <input type="checkbox"> Insert <br /> -->
<!-- 													<input type="checkbox"> Update <br /> <input -->
<!-- 													type="checkbox"> Delete <br /> <input -->
<!-- 													type="checkbox"> List <br /> -->
<!-- 												</label> -->
<!-- 											</div> -->
<!-- 										</td> -->
<!-- 										<td> -->
<!-- 											<button type="button" class="btn btn-info"> -->
<!-- 												<span class="glyphicon glyphicon-pencil" aria-hidden="true"></span> -->
<!-- 												Edit -->
<!-- 											</button> -->
<!-- 											<button type="button" class="btn btn-danger"> -->
<!-- 												<span class="glyphicon glyphicon-remove" aria-hidden="true"></span> -->
<!-- 												Delete -->
<!-- 											</button> -->
<!-- 										</td> -->


									</tr>
								</logic:iterate>
							</logic:notEmpty>
						</table>
					</center>
				</div>
			</div>
		</div>
	</html:form>

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
					<h4 class="modal-title" id="myModalLabel">Add New Role</h4>
				</div>
				<div class="modal-body ">
					<table>
						<tr>
							<td class="kanan">Role Name :</td>
							<td><input type="text" class="form-control"></td>
						</tr>

					</table>


					<table
						class="table table-nonfluid table-striped table-bordered table-hover">
						<tr>
							<td rowspan="2">Access Menu</td>
							<td colspan="4">Access Privilages</td>
						</tr>
						<tr>
							<td>Insert</td>
							<td>Update</td>
							<td>Delete</td>
							<td>List</td>
						</tr>
						<tr>
							<td><input type="checkbox"> Employee</td>
							<td><input type="checkbox"></td>
							<td><input type="checkbox"></td>
							<td><input type="checkbox"></td>
							<td><input type="checkbox"></td>
						</tr>
						<tr>
							<td><input type="checkbox"> Attendance</td>
							<td><input type="checkbox"></td>
							<td><input type="checkbox"></td>
							<td><input type="checkbox"></td>
							<td><input type="checkbox"></td>
						</tr>
						<tr>
							<td><input type="checkbox"> Leave</td>
							<td><input type="checkbox"></td>
							<td><input type="checkbox"></td>
							<td><input type="checkbox"></td>
							<td><input type="checkbox"></td>
						</tr>

					</table>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-primary"
						onclick="javascript:doSubmit();">Submit</button>
					<button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
				</div>
			</div>
		</div>
	</div>
	<!-- MODAL -->
	<!-- JAVASCRIPT -->
	<%@include file="PartJavascript.jsp"%>
</body>
</html>