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
					
					<div class="col-md-6 col-md-offset-3">
						<div class="panel panel-default">
							<div class="panel-heading">
								<h3 class="panel-title">
									<span class="glyphicon glyphicon-lock"></span> Change Password
								</h3>
							</div>
							<div class="panel-body">
								<table align="center"
									class="table table-hover ">
									<tr>
										<td class="kanan fontBold">Old Password:</td>
										<td><input type="password"></td>
									</tr>
									<tr>
										<td class="kanan fontBold">New Password :</td>
										<td><input type="password"></td>
									</tr>
									<tr>
										<td class="kanan fontBold">Retype New Password :</td>
										<td><input type="password"></td>
									</tr>
									<tr>
										<td colspan="2" align="center"><input type="button"
											value="Save Password Changes" class="btn btn-primary"
											onclick="javascript:doSubmit();" /></td>
									</tr>
								</table>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
</body>
</html>