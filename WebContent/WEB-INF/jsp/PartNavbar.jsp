<%@ taglib uri="/WEB-INF/tld/struts-html.tld" prefix="html"%>
<%@ taglib uri="/WEB-INF/tld/struts-logic.tld" prefix="logic"%>
<%@ taglib uri="/WEB-INF/tld/struts-bean.tld" prefix="bean"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
</head>
<style>
.nav {
    padding: 0 15px;
}

.nav {
	color: #0D47A1;
}

.nav>li {
    display: inline-block;
    float: left;
}

.nav>li>a {
    padding-top: 15px;
    padding-bottom: 15px;
    line-height: 20px;
    color: #999;
}

.nav>li>a:hover,
.nav>li>a:focus,
.nav>.open>a,
.nav>.open>a:hover,
.nav>.open>a:focus {
    color: #fff;
    background-color: #0D47A1 !important;
}

.nav>.open>.dropdown-menu {
    float: left;
    position: absolute;
    margin-top: 0;
    border: 1px solid rgba(0,0,0,.15);
    border-top-left-radius: 0;
    border-top-right-radius: 0;
    background-color: #fff;
    -webkit-box-shadow: 0 6px 12px rgba(0,0,0,.175);
    box-shadow: 0 6px 12px rgba(0,0,0,.175);
}

.nav>.open>.dropdown-menu>li>a {
    white-space: normal;
}

ul.message-dropdown {
    padding: 0;
    max-height: 250px;
    overflow-x: hidden;
    overflow-y: auto;
}

li.message-preview {
    width: 275px;
    border-bottom: 1px solid rgba(0,0,0,.15);
}

li.message-preview>a {
    padding-top: 15px;
    padding-bottom: 15px;
}

li.message-footer {
    margin: 5px 0;
}

</style>
<script type="text/javascript">

// 	function flyToPage(task, id) {
// 	//		alert(document.forms[0].addRoleName.value);	
// 		document.forms[0].task.value = task;
// 		document.forms[0].id.value = id;
// 		document.forms[0].submit();
// 	}

	function navigateToPage(task) {

		document.forms[0].task.value = task;
		if (task == "masterMassLeave")
			document.forms[0].action = "/HRIS_Leave/manageSpecialDate.do?method=showMassLeaveList";
		else if (task == "masterNationalHoliday")
			document.forms[0].action = "/HRIS_Leave/manageSpecialDate.do?method=showNationalHolidayList";

		document.forms[0].submit();
	}

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
<body>
	<!-- NAVBAR -->
	<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">

	<!-- LOGO -->
	<div class="navbar-header">
		<a class="navbar-brand" href="#"> <img alt="Brand"
			src="asset/img/logo-hover.png">
		</a>
	</div>
	<!-- END LOGO -->

	<ul class="nav navbar-nav navbar-right">
		<li><label id="timeText"></label></li>
		<!-- DROPDOWN NOTIFICATION -->
		<li class="dropdown"><a href="#" class="dropdown-toggle"
			data-toggle="dropdown"><span class="glyphicon glyphicon-bell"></span>
				<span class="badge">3</span> <b class="caret"></b></a>
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
				<li class="message-footer" ><a href="#">Read All New
						Messages</a></li>
			</ul></li>
		<!-- END NOTIFICATION -->

		<!-- DROPDOWN USER -->
		<li class="dropdown"><a href="#" class="dropdown-toggle"
			data-toggle="dropdown"><i class=" fa fa-user"></i> Hi, <bean:write name="PortalForm" property="userExist" /> <b
				class="caret"> </b></a>
			<ul class="dropdown-menu">
				<li><a href="#" data-toggle="modal" data-target="#modalLogin"
					data-backdrop="static"> <large> <i class=" fa fa-lock"></i>
						<large> User Password </a></li>
				<li class="divider"></li>
				<li><a href="javascript:flyToPage('logout');"><i
						class=" fa fa-sign-out"></i> Log Out</a></li>
			</ul></li>
		<!-- END DROPDOWN USER -->
	</ul>
	</div>

	</nav>
	<!-- END NAVBAR -->
	<br />
	<br />
	<!-- MODAL PASSWORD-->
	<div class="modal fade" id="modalLogin" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title" id="myModalLabel">User <bean:write name="PortalForm" property="userExist" /></h4>
				</div>
				<div class="modal-body ">

					<!-- PANEL PASSWORD-->
					<div class="panel panel-info ">
						<div class="panel-heading">
							<h5 class="panel-title">
								<span class="glyphicon glyphicon-lock"></span> Change Password
							</h5>
						</div>
						<div class="panel-body">
							<table align="center" class="table table-nonfluid table-hover ">
								<tr>
									<td class="kanan fontBold">Old Password:</td>			
									<td><html:text styleClass="form-control" name="PortalForm"
										property="oldPass"/></td>	
															
<!-- 									<td><input type="password" class="form-control" name="oldPass" placeholder="**********" -->
<%-- 										value="<bean:write name="PortalForm" property="oldPass"/>"></td> --%>
<!-- 									<td><input type="password" class="form-control"></td> -->
								</tr>
								<tr>
									<td class="kanan fontBold">New Password :</td>			
									<td><html:text styleClass="form-control" name="PortalForm"
										property="newPass"/></td>
										
<!-- 									<td><input type="password" class="form-control" name="newPass" placeholder="**********" -->
<%-- 										value="<bean:write name="PortalForm" property="newPass"/>"></td> --%>
<!-- 									<td><input type="password" class="form-control"></td> -->
								</tr>
								<tr>
									<td class="kanan fontBold">Retype New Password :</td>			
									<td><html:text styleClass="form-control" name="PortalForm"
										property="rePass"/></td>
										
<!-- 									<td><input type="password" class="form-control" name="rePass" placeholder="**********" -->
<%-- 										value="<bean:write name="PortalForm" property="rePass"/>"></td> --%>
<!-- 									<td><input type="password" class="form-control"></td> -->
								</tr>
							</table>
						</div>
					</div>
					<!-- PANEL -->
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-primary"
							onclick="javascript:flyToPage('masterOthers');">
							<i class="fa fa-check"></i> Save Changes
					</button>
					
<!-- 					<button type="button" class="btn btn-primary" -->
<!-- 							onclick="javascript:flyToPage('masterOthers', '', '', 'oldPass', 'newPass', 'rePass');"> -->
<!-- 							<i class="fa fa-check"></i> Save changes -->
<!-- 					</button> -->
<!-- 					<button type="button" class="btn btn-primary"> -->
<!-- 						<i class="fa fa-check"></i> Save changes -->
<!-- 					</button> -->

					<button type="button" class="btn btn-danger" data-dismiss="modal">
						<i class="fa fa-close"></i> Close
					</button>
				</div>
			</div>
		</div>
	</div>
	<!-- MODAL -->
	
	<script type="text/javascript">
		$('#validate-form')
				.bootstrapValidator(
						{
							//       live: 'disabled',
							excluded : 'disabled',
							message : 'This value is not valid',
							feedbackIcons : {
								valid : 'glyphicon glyphicon-ok',
								invalid : 'glyphicon glyphicon-remove',
								validating : 'glyphicon glyphicon-refresh'
							},
							fields : {
								'empBean.employeeName' : {
									validators : {
										notEmpty : {
											message : 'Name is required and cannot be empty'
										},

									}
								},
								'currentSpecialDateBean.description' : {
									validators : {
										notEmpty : {
											message : 'Description is required and cannot be empty'
										},

										stringLength : {
											message : 'Description content must be less than 100 characters',
											max : function(value, validator,
													$field) {
												return 100 - (value
														.match(/\r/g) || []).length;
											}
										}
									}
								},
								'empBean.departmentId' : {
									validators : {
										callback : {
											message : 'Destination Department is required and cannot be empty',
											callback : function(value,
													validator, $field) {
												// Get the selected options
												var options = validator
														.getFieldElements(
																'empBean.departmentId')
														.val();

												if (options == null)
													return (false);
												else if (options != null)
													return (true);

											}

										}
									}
								}
							// 								'empBean.roleId' : {
							// 									validators : {
							// 										callback : {
							// 											message : 'Destination Role is required and cannot be empty',
							// 											callback : function(value,
							// 													validator, $field) {
							// 												// Get the selected options
							// 												var options = validator
							// 														.getFieldElements(
							// 																'empBean.departmentId')
							// 														.val();

							// 												if (options == null)
							// 													return (false);
							// 												else if (options != null)
							// 													return (true);
							// 											}
							// 										}
							// 									}
							// 								}
							}
						});
	</script>
</body>
</html>