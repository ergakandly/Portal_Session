<%@ taglib uri="/WEB-INF/tld/struts-html.tld" prefix="html" %>
<%@ taglib uri="/WEB-INF/tld/struts-logic.tld" prefix="logic" %>
<%@ taglib uri="/WEB-INF/tld/struts-bean.tld" prefix="bean" %>

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

<!-- BOOTSTRAP -->
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
<!-- END BOOTSTRAP -->

<!-- CSS -->
<link rel="stylesheet" type="text/css" href="mystyle.css">

<title>Login Page</title>
</head>

<script type="text/javascript">
	function flyToPage(task, id) {
	    	document.forms[0].task.value=task;
	    	document.forms[0].id.value=id;
	 		document.forms[0].submit();	 	
	}
</script>

<body>
<html:form method="post" action="/helloWorld">
<html:hidden name="ibForm" property="task"/>
<html:hidden name="ibForm" property="id"/>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<div class="row">
		<!-- PANEL -->
		<div class="col-md-5 col-md-offset-4">
			<div class="panel panel-info">
				<div class="panel-heading">
					<center>
						<h4>
							<span class="glyphicon glyphicon-user"></span> &nbsp; Login Admin
						</h4>
					</center>
				</div>
				<div class="panel-body">
					<form class="form-horizontal" role="form">
						<div class="form-group has-error">
							<label for="inputPassword3" class="col-sm-2 control-label">Username</label>
							<div class="col-sm-10">
								<input type="text" class="form-control widthh"
									placeholder="Enter your username">
							</div>
						</div>
						<div class="form-group">
							<label for="inputPassword3" class="col-sm-2 control-label">Password</label>
							<div class="col-sm-10">
								<input type="text" class="form-control widthh"
									placeholder="Enter your password here">
							</div>
						</div>
						<div class=kanan>
							<button class="btn btn-primary btn-lg" data-toggle="modal"
								data-target="#myModal">
								<span class="glyphicon glyphicon-log-in"></span> &nbsp; Login
							</button>
						</div>
					</form>
				</div>
			</div>
		</div>
		<!--END PANEL-->
</html:form>
</body>
</html>