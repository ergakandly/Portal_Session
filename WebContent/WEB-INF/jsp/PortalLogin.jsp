<%@ taglib uri="/WEB-INF/tld/struts-html.tld" prefix="html"%>
<%@ taglib uri="/WEB-INF/tld/struts-logic.tld" prefix="logic"%>
<%@ taglib uri="/WEB-INF/tld/struts-bean.tld" prefix="bean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<link rel="stylesheet" type="text/css" href="asset/css/login.css">
<link rel="stylesheet" type="text/css" href="asset/css/FinalProject.css">

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
		<div id="login_el">
			<h2>login</h2>
			<form action="#">
				<div class="input">
					<label for="name" class="entypo-user"></label>
					<%-- <html:text name="PortalForm" property="user" styleId="abc"></html:text> --%>
					<input type="text" name="user" placeholder="username"
						value="<bean:write name="PortalForm" property="user"/>">
				</div>
				<div class="input">
					<label for="name" class="entypo-lock"></label>
					<%-- <html:password name="PortalForm" property="pass"></html:password> --%>
					<input type="password" name="pass" placeholder="**********"
						value="<bean:write name="PortalForm" property="pass"/>">
				</div>
				
				<html:submit value="Login" onclick="javascript:doSubmit();" />
			</form>
		</div>
	</html:form>
</body>
</html>