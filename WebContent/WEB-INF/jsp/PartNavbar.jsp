<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
</head>
<body>
	<!-- NAVBAR -->
	<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">

	<!-- LOGO -->
	<div class="navbar-header">
		<a class="navbar-brand" href="#"> <img alt="Brand"
			src="asset/img/logo-normal.png">
		</a>
	</div>
	<!-- END LOGO -->

	<ul class="nav navbar-nav navbar-right">
		<!-- DROPDOWN USER -->
		<li class="dropdown"><a href="#" class="dropdown-toggle"
			data-toggle="dropdown"><i class=" fa fa-user"></i> Hi, User <b
				class="caret"> </b></a>
			<ul class="dropdown-menu">
				<li><a href="#" data-toggle="modal" data-target="#modalLogin" data-backdrop="static">
						<large> <i class=" fa fa-user"></i> <large>
						Change Password 
				</a></li>
				<li class="divider"></li>
				<li><a href="javascript:flyToPage('success');"><i
						class=" fa fa-sign-out"></i> Log Out</a></li>
			</ul></li>
	</ul>
	</div>

	</nav>
	<!-- END NAVBAR -->
	<br />
	<br />
	<!-- MODAL -->
	<div class="modal fade" id="modalLogin" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title" id="myModalLabel">User Profile</h4>
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
							</table>
						</div>
					</div>
					<!-- PANEL -->
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-primary">Save changes</button>
					<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
				</div>
			</div>
		</div>
	</div>
	<!-- MODAL -->
</body>
</html>