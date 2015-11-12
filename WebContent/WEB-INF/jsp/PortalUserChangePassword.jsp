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

<title>User Change Password</title>
</head>
<%@include file="PartNavbar.jsp"%>

<!-- CONTAINER -->
<div class="container-fluid">
	<div class="row">
		<div class="col-md-12">
			<button type="button" class="btn btn-info" onclick="#">Back
			</button>
			<h3>Master Role</h3>
			<hr>
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
									<th colspan="2">Change Password</th>
								</tr>
								<tr>
									<td class="rataKanan">Old Password:</td>
									<td></td>
								</tr>
								<tr>
									<td class="rataKanan">New Password :</td>
									<td></td>
								</tr>
								<tr>
									<td class="rataKanan">Retype New Password :</td>
									<td></td>
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
							<li><a href="index.html"> <span
									class="glyphicon glyphicon-user"></span> &nbsp; Hi, Admin
							</a></li>
							<li class="active"><a href="#"> <span
									class="glyphicon glyphicon-edit"></span> &nbsp; Change Password
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