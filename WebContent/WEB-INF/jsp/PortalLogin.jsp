<%@ taglib uri="/WEB-INF/tld/struts-html.tld" prefix="html"%>
<%@ taglib uri="/WEB-INF/tld/struts-logic.tld" prefix="logic"%>
<%@ taglib uri="/WEB-INF/tld/struts-bean.tld" prefix="bean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<style>
@import url(http://weloveiconfonts.com/api/?family=entypo);

/* entypo */
[class*="entypo-"]:before {
	font-family: 'entypo', sans-serif;
}

body {
	margin: 0;
	padding: 0;
	background: url(BackgroundLogin.png);
	/* 	background: */
	/* 		url(http://fc02.deviantart.net/fs71/f/2011/174/5/5/first_attempt_at_blur_abstract_by_ivereor-d3jqylp.png); */
	-webkit-background-size: cover cover;
	background-size: cover cover;
	font-family: "helvetica neue";
}

#login_el {
	width: 370px;
	height: 300px;
	background: rgba(255, 255, 255, 0.2);
	margin: auto;
	margin-top: 130px;
	padding-top: 70px;
	border-radius: 5px;
	border: 1px solid rgba(255, 255, 255, 0.4);
	-webkit-box-shadow: 2px 3px 10px rgba(0, 0, 0, .2);
	-moz-box-shadow: 2px 3px 10px rgba(0, 0, 0, .2);
	box-shadow: 2px 3px 10px rgba(0, 0, 0, .2);
	-webkit-box-sizing: border-box;
	-moz-box-sizing: border-box;
	box-sizing: border-box;
}

#login_el:after {
	content: '';
	display: block;
	position: absolute;
	top: 130px;
	left: 0;
	right: 0;
	width: 80px;
	height: 7px;
	margin: 25px auto 38px auto;
	background: rgba(0, 0, 0, .2);
	border: 1px solid rgba(255, 255, 255, 0.4);
	border-radius: 4px;
}

#login_el:before {
	content: '';
	display: block;
	position: absolute;
	left: 0;
	right: 0;
	margin: auto;
	top: -140px;
	width: 54px;
	height: 300px;
	background-color: #dfdfdf;
	background-image:
		url(data:image/png;base64,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);
	background-repeat: repeat-y;
	z-index: 999;
}

h2 {
	position: relative;
	text-align: center;
	text-transform: uppercase;
	text-shadow: 1px 1px 2px rgba(0, 0, 0, 0.15);
	color: #fff;
	font-size: 16px;
	margin-bottom: 42px;
}

#login_el form {
	width: 285px;
	margin: auto;
}

.input {
	width: 100%;
	height: 38px;
	line-height: 36px;
	padding: 0px 9px;
	margin-bottom: 10px;
	border-radius: 5px;
	border: 1px solid rgba(242, 242, 242, 0.3);
	-webkit-box-sizing: border-box;
	-moz-box-sizing: border-box;
	box-sizing: border-box;
	-webkit-box-shadow: inset 0px 0px 8px rgba(0, 0, 0, .2);
	-moz-box-shadow: inset 0px 0px 8px rgba(0, 0, 0, .2);
	box-shadow: inset 0px 0px 8px rgba(0, 0, 0, .2);
}

.input label {
	color: #fff;
	display: inline-block;
	text-align: center;
	width: 20px;
}

.input input {
	-webkit-appearance: none;
	-moz-appearance: none;
	appearance: none;
	background: none;
	border: none;
	width: 235px;
	outline: none;
	color: #fff;
	font-size: 12px;
	font-weight: 100;
}

::-webkit-input-placeholder { /* WebKit browsers */
	color: #fff;
}

:-moz-placeholder { /* Mozilla Firefox 4 to 18 */
	color: #fff;
}

::-moz-placeholder { /* Mozilla Firefox 19+ */
	color: #fff;
}

:-ms-input-placeholder { /* Internet Explorer 10+ */
	color: #fff;
}

input[type="submit"] {
	display: block;
	width: 100%;
	height: 38px;
	-webkit-box-sizing: border-box;
	-moz-box-sizing: border-box;
	box-sizing: border-box;
	background: #91c46c;
	border-radius: 5px;
	border: 1px solid #73a84c;
	outline: none;
	cursor: pointer;
	color: #fff;
	font-size: 14px;
	-webkit-box-shadow: inset 1px 1px 0px #c8e5b3, 1px 2px 1px
		rgba(0, 0, 0, .09);
	-moz-box-shadow: inset 1px 1px 0px #c8e5b3, 1px 2px 1px
		rgba(0, 0, 0, .09);
	box-shadow: inset 1px 1px 0px #c8e5b3, 1px 2px 1px rgba(0, 0, 0, .09);
}

h1 {
	margin-top: 50px;
	color: #fff;
	text-align: center;
	font-weight: 200;
}

h1 a {
	color: #ea4c89;
	text-decoration: none;
}
</style>

<title>Login</title>
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
					<html:text name="PortalForm" property="user"></html:text>
				</div>
				<div class="input">
					<label for="name" class="entypo-lock"></label>
					<!--<input type="password" name="pw" id="pw" placeholder="*****" /> -->
					<html:password name="PortalForm" property="pass"></html:password>
				</div>


				<html:submit value="Login" onclick="javascript:doSubmit();" />
			</form>
		</div>
	</html:form>
</body>
</html>