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

<title>New Master Role</title>
</head>
<%@include file="PartNavbar.jsp"%>

<!-- CONTAINER -->
<div class="container-fluid">

	<!-- ROW 12 -->
	<div class="row">
		<div class="col-md-12">
			<!--JUDUL-->
			<div class="page-header">
				<h3 id="timeline">Add Role</h3>
			</div>
			<!-- END JUDUL -->

			<!-- BREADCRUMB -->
			<ul class="breadcrumb">
				<li><span class="glyphicon glyphicon-dashboard"></span><a
					href="#"> Dashboard</a></li>
				<li><span class="glyphicon glyphicon-king"></span> <a href="#">
						Roles</a></li>
				<li><span class="glyphicon glyphicon-plus"></span> Add</li>
			</ul>
			<!-- END BREADCRUMB -->

		</div>
	</div>
	<!-- END ROW 12 -->

	<!-- ROW MD6 OFFSET3 -->
	<div class="row">
		<div class="col-md-6 col-md-offset-3 div-center">
			<div class="tab-content">
				<div class="tab-pane active" id="dashboard">
					<br />
					<table
						class="table table-nonfluid table-striped table-bordered table-hover">
						<tr>
							<th colspan="2">Add New Role</th>
						</tr>
						<tr>
							<td>Role Name</td>
							<td><input type="text" class="form-control"></td>
						</tr>
						<tr>
							<td>Access Menu</td>
							<td><div class="checkbox">
									<label> <input type="checkbox"> Employee <br />
										<input type="checkbox"> Attendance <br /> <input
										type="checkbox"> Leave <br />
									</label>
								</div></td>
						</tr>
						<tr>
							<td>Access Privilages</td>
							<td><div class="checkbox">
									<label> <input type="checkbox"> Insert <br />
										<input type="checkbox"> Update <br /> <input
										type="checkbox"> Delete <br /> <input type="checkbox">
										List <br />
									</label>
								</div></td>
						</tr>
					</table>
					<div class="left">
						<input type="button" value="Save" class="btn btn-primary"
							onclick="javascript:doSubmit();" />
					</div>

				</div>
			</div>
		</div>
	</div>
	<!-- ROW MD6 OFFSET3 -->
</div>
</body>
</html>