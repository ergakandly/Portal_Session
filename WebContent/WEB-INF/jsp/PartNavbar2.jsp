<%@ taglib uri="/WEB-INF/tld/struts-html.tld" prefix="html"%>
<%@ taglib uri="/WEB-INF/tld/struts-logic.tld" prefix="logic"%>
<%@ taglib uri="/WEB-INF/tld/struts-bean.tld" prefix="bean"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<!-- TIME -->
<script type="text/javascript">
	function startTime() {
		var today = new Date();
		var h = today.getHours();
		var m = today.getMinutes();
		var s = today.getSeconds();
		var day = today.getDay();
		var weekday = "";
		var date = today.getDate();
		var month = today.getMonth();
		var monthname = "";
		var year = today.getFullYear();

		switch (day) {
		case 0:
			weekday = "Sunday";
			break;
		case 1:
			weekday = "Monday";
			break;
		case 2:
			weekday = "Tuesday";
			break;
		case 3:
			weekday = "Wednesday";
			break;
		case 4:
			weekday = "Thursday";
			break;
		case 5:
			weekday = "Friday";
			break;
		case 6:
			weekday = "Saturday";
			break;
		}

		switch (month) {
		case 0:
			monthname = "January";
			break;
		case 1:
			monthname = "February";
			break;
		case 2:
			monthname = "March";
			break;
		case 3:
			monthname = "April";
			break;
		case 4:
			monthname = "May";
			break;
		case 5:
			monthname = "June";
			break;
		case 6:
			monthname = "July";
			break;
		case 7:
			monthname = "August";
			break;
		case 8:
			monthname = "September";
			break;
		case 9:
			monthname = "October";
			break;
		case 10:
			monthname = "November";
			break;
		case 11:
			monthname = "Desember";
			break;
		}

		m = checkTime(m);
		s = checkTime(s);
		document.getElementById('timeText').innerHTML = weekday + ", " + date
				+ " " + monthname + " " + year + " [" + h + ":" + m + ":" + s
				+ " WIB]";
		var t = setTimeout(startTime, 500);
	}
	function checkTime(i) {
		if (i < 10) {
			i = "0" + i
		}
		; // add zero in front of numbers < 10
		return i;
	}
</script>
<!-- END TIME -->

</head>

<body onload="startTime()">
	<!-- NAVBAR -->
	<nav class="navbar navbar-inverse navbar-fixed-top role="navigation">

	<!-- LOGO -->
	<div class="navbar-header">
		<button type="button" class="navbar-toggle" data-toggle="collapse"
			data-target=".navbar-ex1-collapse">
			<span class="sr-only">Toggle navigation</span> <span class="icon-bar"></span>
			<span class="icon-bar"></span> <span class="icon-bar"></span>
		</button>
		<a class="navbar-brand" href="#"> <img alt="Brand"
			src="asset/img/logo-hover.png">
		</a>
	</div>
	<!-- END LOGO -->

	<ul class="nav navbar-right top-nav">
		<li><label id="timeText"></label></li>

		<!-- NOTIFICATION -->
		<li class="dropdown"><a href="#" class="dropdown-toggle"
			data-toggle="dropdown"><span id="warnaPutih"
				class="glyphicon glyphicon-bell"></span> <small><span class="badge">3</span></small>
				<b class="caret" id="warnaPutih"></b></a>
			<ul class="dropdown-menu message-dropdown">
				<li class="message-preview"><a href="#">
						<div class="media">
							<span class="pull-left"> <img class="media-object"
								src="http://placehold.it/50x50" alt="">
							</span>
							<div class="media-body">
								<h5 class="media-heading">
									<strong>John Smith</strong>
								</h5>
								<p class="small text-muted">
									<i class="fa fa-clock-o"></i> Yesterday at 4:32 PM
								</p>
								<p>Lorem ipsum dolor sit amet, consectetur...</p>
							</div>
						</div>
				</a></li>
				<li class="message-preview"><a href="#">
						<div class="media">
							<span class="pull-left"> <img class="media-object"
								src="http://placehold.it/50x50" alt="">
							</span>
							<div class="media-body">
								<h5 class="media-heading">
									<strong>John Smith</strong>
								</h5>
								<p class="small text-muted">
									<i class="fa fa-clock-o"></i> Yesterday at 4:32 PM
								</p>
								<p>Lorem ipsum dolor sit amet, consectetur...</p>
							</div>
						</div>
				</a></li>
				<li class="message-preview"><a href="#">
						<div class="media">
							<span class="pull-left"> <img class="media-object"
								src="http://placehold.it/50x50" alt="">
							</span>
							<div class="media-body">
								<h5 class="media-heading">
									<strong>John Smith</strong>
								</h5>
								<p class="small text-muted">
									<i class="fa fa-clock-o"></i> Yesterday at 4:32 PM
								</p>
								<p>Lorem ipsum dolor sit amet, consectetur...</p>
							</div>
						</div>
				</a></li>
				<li class="message-footer"><a href="#">Read All New
						Messages</a></li>
			</ul></li>
		<!-- END NOTIFICATION -->

		<!-- DROPDOWN USER -->
		<li class="dropdown"><a href="#" class="dropdown-toggle"
			data-toggle="dropdown"><i class=" fa fa-user" id="warnaPutih"></i>
				<font color="white">Hi, User</font>  <b class="caret" id="warnaPutih"></b></a>
			<ul class="dropdown-menu">
				<li><a href="" data-toggle="modal" data-target="#modalLogin"><large>
						<i class=" fa fa-user"></i> <large> Profile</a></li>
				<li class="divider"></li>
				<li><a href="javascript:flyToPage('success');"><span
						class="glyphicon glyphicon-log-out"></span> Log Out</a></li>
			</ul></li>
		<!-- END DROPDOWN USER -->
	</ul>

	<!-- SIDEBAR  -->
	<div class="collapse navbar-collapse navbar-ex1-collapse">
		<ul class="nav navbar-nav side-nav">

			
				<li><a href="javascript:flyToPage('backToList','','1','1')"><i
						class="fa fa-list"></i> Master</a></li>
			

		</ul>
	</div>
	<!-- END SIDEBAR --> </nav>

	</nav>
	<!-- END NAVBAR -->

	
</body>
</html>