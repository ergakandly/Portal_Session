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

<title>New Assign Role</title>
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
								<h3 id="timeline">Assign Role</h3>
							</div>
							<!-- END PAGE HEADER -->

							<!-- BREADCRUMB -->
							<ul class="breadcrumb">
								<li><i class="fa fa-dashboard"></i><a
									href="javascript:flyToPage('dashboardAdmin');"> Dashboard</a></li>
								<li><i class="fa fa-crosshairs"></i> Assign Role</li>
							</ul>
							<!-- END BREADCRUMB -->
						</div>
					</div>
					<!-- END ROW 12 -->
					<br />
					<!-- ROW MD6 OFFSET3 -->

					<div class="col-md-6 col-md-offset-3">

						<!-- PANEL SEARCH -->
						<div class="panel-group" id="accordion">
							<div class="panel panel-primary">
								<div class="panel-heading">
									<h4 class="panel-title">
										<a data-toggle="collapse" data-parent="#accordion"
											href="#collapse"> <span
											class="glyphicon glyphicon-search"></span> Search Options
										</a>
									</h4>
								</div>
								<div id="collapse" class="panel-collapse collapse">
									<table align="center" class="table table-nonfluid table-hover ">
										<tr>
											<td class="kanan fontBold">Employee Name :</td>
											<td><html:text styleClass="form-control"
													name="PortalForm" property="searchName" /></td>
										</tr>
										<tr>
											<td class="kanan fontBold">Location :</td>
											<td><logic:notEmpty name="PortalForm"
													property="listPortalDepartment">
													<html:select styleClass="form-control" name="PortalForm"
														property="portalDepartmentBean.departmentId">
														<option value="">ALL</option>
														<logic:iterate id="portalDepartmentList" name="PortalForm"
															property="listPortalDepartment">
															<option
																value="<bean:write name="portalDepartmentList" property="departmentId"/>">
																<bean:write name="portalDepartmentList"
																	property="msDepartmentName" />
																<%--<html:hidden name="portalDepartmentList" property="departmentId"/> --%>
															</option>
														</logic:iterate>
													</html:select>
												</logic:notEmpty></td>
										</tr>
										<tr>
											<td colspan="2" class="tengah">
												<button type="button" class="btn btn-primary"
													onclick="javascript:flyToPage('search');">
													<i class="fa fa-search"></i> Search
												</button>
											</td>
										</tr>
									</table>
								</div>
							</div>
						</div>
						<!-- END COLLAPSE -->

						<table align="center"
							class="table table-nonfluid table-striped table-bordered table-hover">
							<tr>
								<th>Employee ID</th>
								<th>Employee Name</th>
								<th>Department Name</th>
								<th>Location Name</th>
								<th>Activated</th>
							</tr>
							<logic:notEmpty name="PortalForm" property="listPortal">
								<logic:iterate id="portalList" name="PortalForm"
									property="listPortal">
									<tr align="center">
										<td><bean:write name="portalList" property="employeeId" /></td>
										<td><bean:write name="portalList" property="employeeName" /></td>
										<td><bean:write name="portalList"
												property="departmentName" /></td>
										<td><bean:write name="portalList" property="locationName" /></td>
										<td><logic:empty name="portalList"
												property="userEmployeeId">
												<button type="button" class="btn btn-primary"
													onclick="javascript:flyToPage('select', '<bean:write name="portalList" property="employeeId" />');">
													<span class="glyphicon glyphicon-ok"></span>
												</button>
											</logic:empty> <logic:notEmpty name="portalList" property="userEmployeeId">
												<button type="button" class="btn btn-primary"
													onclick="javascript:flyToPage('select', '<bean:write name="portalList" property="employeeId" />');"
													disabled="true">
													<span class="glyphicon glyphicon-ok"></span>
												</button>
											</logic:notEmpty></td>
									</tr>
								</logic:iterate>
							</logic:notEmpty>
						</table>

						<!-- MODAL -->
						<!-- 						<div class="modal fade" id="modalNotification" tabindex="-1" role="dialog" -->
						<!-- 							aria-labelledby="myModalLabel"> -->
						<!-- 							<div class="modal-dialog" role="document"> -->
						<!-- 								<div class="modal-content"> -->
						<!-- 									<div class="modal-header"> -->
						<!-- 										<button type="button" class="close" data-dismiss="modal" -->
						<!-- 											aria-label="Close"> -->
						<!-- 											<span aria-hidden="true">&times;</span> -->
						<!-- 										</button> -->
						<!-- 										<h4 class="modal-title" id="myModalLabel">Notification</h4> -->
						<!-- 									</div> -->
						<!-- 									<div class="modal-body "> -->

						<!-- 										Are you sure? -->
						<!-- 									</div> -->
						<!-- 									<div class="modal-footer"> -->
						<!-- 										<button type="button" class="btn btn-primary">Save -->
						<!-- 											changes</button> -->
						<!-- 										<button type="button" class="btn btn-default" -->
						<!-- 											data-dismiss="modal">Close</button> -->
						<!-- 									</div> -->
						<!-- 								</div> -->
						<!-- 							</div> -->
						<!-- 						</div> -->
						<!-- MODAL -->

					</div>
					<!-- ROW MD6 OFFSET3 -->
				</div>
				<!-- END CONTAINER -->
			</div>
			<!-- END PAGE WRAPPER -->
		</div>
		<!-- END WRAPPER -->
	</html:form>
	<!-- JAVASCRIPT -->
	<%@include file="PartJavascript.jsp"%>
</body>
</html>