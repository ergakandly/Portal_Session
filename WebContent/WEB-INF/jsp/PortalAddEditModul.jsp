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

<title>New Master User</title>
</head>
<body>
	<%@include file="PartNavbar.jsp"%>

	<!-- CONTAINER -->
	<div class="container-fluid well">
		<!--wadah-->
		<div class="row">
			<div class="col-md-12">
				<!--JUDUL-->
				<div class="page-header">
					<h3 id="timeline">Add Module</h3>
				</div>
				<!-- END JUDUL -->
			</div>
		</div>
		<div class="row">
			<div class="col-md-12">
				<div class="tab-content">
					<div class="tab-pane active" id="dashboard">
						<br> <br> <br>

						<!-- KOLOM MD 8-->
						<div class="col-md-8">
							<center>
								<table align="center"
									class="table table-nonfluid table-striped table-hover ">
									<tr>
										<th colspan="2">Add New Modul</th>
									</tr>
									<tr>
										<td class="rataKanan">Modul Name :</td>
										<td>textbox</td>
									</tr>
									<tr>
										<td class="rataKanan">Modul Link :</td>
										<td>textbox</td>
									</tr>
									<tr>
										<td colspan="2" align="center"><input type="button"
											value="Save" class="btn btn-primary"
											onclick="javascript:doSubmit();" /></td>
									</tr>
								</table>

							</center>
						</div>
						<!-- END KOLOM MD 8-->

						<!-- --------------------------------------------- -->
						<!-- -----				PEMBATAS				-- -->
						<!-- --------------------------------------------- -->

						<!-- KOLOM MD 4-->
						<div class="col-md-4">
							<ul class="nav nav-stacked nav-pills">
								<li class="active"><a href="index.html"> <span
										class="glyphicon glyphicon-user"></span> &nbsp; Hi, Admin
								</a></li>
								<li><a href="#"> <span class="glyphicon glyphicon-edit"></span>
										&nbsp; Edit Profile
								</a></li>
								<li><a href="#"> <span class="glyphicon glyphicon-flag"></span>
										&nbsp; Notification
								</a></li>
								<li><a href="#"> <span
										class="glyphicon glyphicon-log-out"></span> &nbsp; Logout
								</a></li>
							</ul>
						</div>
						<!-- END KOLOM MD 4-->
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>