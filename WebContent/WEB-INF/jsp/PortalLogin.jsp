<%@ taglib uri="/WEB-INF/tld/struts-html.tld" prefix="html"%>
<%@ taglib uri="/WEB-INF/tld/struts-logic.tld" prefix="logic"%>
<%@ taglib uri="/WEB-INF/tld/struts-bean.tld" prefix="bean"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<!-- <script src="js/jquery-2.1.1.min.js"></script> -->
<!-- <script src="js/bootstrap.min.js"></script> -->

<script src="js/jquery-2.1.1.min.js"></script>
<link href="css/bootstrap.min.css" rel="stylesheet">
<script src="js/bootstrap.js"></script>
<link href="css/bootstrapValidator.css" rel="stylesheet">
<script src="js/bootstrapValidator.js"></script>

<%@include file="PartBootstrap.jsp"%>

<title>Login Page</title>

<!-- SCRIPT -->
<script language="JavaScript">
	function doSubmit() {
		var frm = document.forms[0];
		if (!validateForm(frm)) {
			alert("I am an alert box!");
			return;
		}
		frm.submit();
	}
</script>

</head>



<body>
	<html:form method="post" action="/portal">
		<html:hidden name="PortalForm" property="task" value="login" />
		<br>
		<br>
		<br>
		<br>
		<br>
		<br>
		<br>
		<br>
		<br>
		<!-- CONTAINER -->
		<div class="container-fluid">
			<div class="row">
				<!-- PANEL -->
				<div class="col-md-5 col-md-offset-4">
					<div class="panel panel-info">

						<!-- PANEL HEADER -->
						<div class="panel-heading">
							<center>
								<h4>
									<span class="glyphicon glyphicon-user"></span> Login Admin
								</h4>
							</center>
						</div>
						<!-- END PANEL HEADER -->

						<!-- PANEL -->
						<div class="panel-body">
							<form class="form-horizontal" role="form">
								<div class="form-group has-error">
									<label for="inputPassword3" class="col-sm-2 control-label">Username</label>
									<div class="col-sm-10">
<!-- 										<input type="text" class="form-control widthh" placeholder="Enter your username" name="PortalForm" property="user"> -->
										<html:text name="PortalForm" property="user"></html:text>
									</div>
								</div>
								<div class="form-group">
									<label for="inputPassword3" class="col-sm-2 control-label">Password</label>
									<div class="col-sm-10">
										<!-- 								<input type="text" class="form-control widthh" placeholder="Enter your password here"> -->
										<html:password name="PortalForm" property="pass"></html:password>
									</div>
								</div>
								<div class=kanan>

<!-- 									<button type="button" class="btn btn-primary" -->
<!-- 										onclick="javascript:doSubmit();"> -->
<!-- 										<span class="glyphicon glyphicon-plus"></span> Login -->
<!-- 									</button> -->


									<!-- 							<input type="button" class="btn btn-primary btn-lg" data-toggle="modal" -->
									<!-- 								data-target="#myModal" onclick= "javascript:doSubmit();"> -->
									<!-- 								<span class="glyphicon glyphicon-log-in"></span> &nbsp; Login -->
									<!-- 							</button> -->
									<html:submit value="Login" onclick="javascript:doSubmit();" />
									<!-- 							<input type= "button" value ="Login" onclick= "javascript:doSubmit();" /> -->
								</div>
							</form>
						</div>
						<!-- END BODY PANEL -->
					</div>
				</div>
			</div>
			<!--END PANEL-->
		</div>
		<!-- END CONTAINER -->

	</html:form>
</body>
</html>