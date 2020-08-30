<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html data-ng-app="demoApp">
<head>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.5/angular.min.js"></script>
<script src="script.js"></script>
<link rel="icon" href="faviicon-01.png">

<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Meeting</title>
<link rel="stylesheet" href="style3.css">

<style>
textarea {
	resize: none;
	border: 3px solid #cccccc;
	padding: 5px;
	
	
	background-position: bottom right;
	background-repeat: no-repeat;
}



.switch {
	position: relative;
	display: inline-block;
	width: 60px;
	height: 34px;
}

.switch input {
	opacity: 0;
	width: 0;
	height: 0;
}

.slider {
	position: absolute;
	cursor: pointer;
	top: 0;
	left: 0;
	right: 0;
	bottom: 0;
	background-color: #292e33;
	-webkit-transition: .4s;
	transition: .4s;
}

.slider:before {
	position: absolute;
	content: "";
	height: 26px;
	width: 26px;
	left: 4px;
	bottom: 4px;
	background-color: #bb7acd;
	-webkit-transition: .4s;
	transition: .4s;
}

input:checked+.slider {
	background-color: #edf1f7;
}

input:checked+.slider:before {
	background-color: #919294;
	-webkit-transform: translateX(26px);
	-ms-transform: translateX(26px);
	transform: translateX(26px);
}

/* Rounded sliders */
.slider.round {
	border-radius: 34px;
}

.slider.round:before {
	border-radius: 50%;
}
</style>

</head>


<%
	if (session.getAttribute("emailid") == null) {
	response.sendRedirect("index.jsp");
}
%>

<link
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.3/css/font-awesome.min.css"
	rel="stylesheet"
	>
<body class="home light-mode" style="overflow-y: hidden">
	<div class="container-fluid display-table">



		<nav class="navbar navbar-expand-sm bg-dark navbar-dark "style="padding:0 1rem;">
			<a class="navbar-brand" href="home.jsp"><img class="logo_img"
				src="logo2-01.png"></a>
			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#collapsibleNavbar">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="collapsibleNavbar">
				<ul class="navbar-nav">



				</ul>

			</div>




			<div class="header-rightside">
				<ul class="list-inline header-top pull-right navbar-nav">



					<li class="nav-item "><a class="nav-link " href="logout.jsp"><i></i>Logout</a></li>

				</ul>
			</div>



		</nav>


		<div class="row display-row-table container-fluid">
			<div
				class="col-md-2 col-sm-1 hidden-xs display-table-cell v-align box"
				id="navigation" style="height: 3000px">
				<!-- Left Navigation bar-->
				<img class="header-nav-logo" src="nav-header-white-01.png"> <label
					class="switch"> <input type="checkbox"
					onclick="myFunction()" checked> <span class="slider round"></span>
				</label>
				<div class="navi">
					<!-- Navigation content -->
					<ul>
						<li><a href="home.jsp"><i class="fa fa-home"
								aria-hidden="true"></i><span class="hidden-xs hidden-sm">Home</span></a></li>
						<li class="active"><a href="meeting.jsp"><i
								class="fa fa-bar-chart" aria-hidden="true"></i><span
								class="hidden-xs hidden-sm">Meeting</span></a></li>
						<li><a href="members.jsp"><i class="fa fa-tasks"
								aria-hidden="true"></i><span class="hidden-xs hidden-sm">Members</span></a></li>

						<li><a href="search.jsp"><i class="fa fa-user"
								aria-hidden="true"></i><span class="hidden-xs hidden-sm">Assign</span></a></li>
						<li><a href="searchtrack.jsp"><i class="fa fa-info-circle"
								aria-hidden="true"></i><span class="hidden-xs hidden-sm">Track</span></a></li>
						
					</ul>
				</div>
				<div class="lower-nav-part">
				
				<a href="#"><i class="fa fa-instagram" aria-hidden="true"></i></a>
				<a href="#"><i class="fa fa-linkedin" aria-hidden="true"></i></a>
				
				</div>
				<div class="lower-nav-phone">
				<a href="#"><i class="fa fa-phone" aria-hidden="true"></i>
				<span>1800-272-3552</span>
				</a>
				</div>
			</div>


			<div class="col-sm-10 display-table-cell v-align " style="overflow-y:scroll;height:650px;">
				<div class="user-dashboard" style="font-family: 'Manrope', sans-serif;">
					<div>
						<div class="navbar-header">
						<br>
							<h2 style="text-align: center;font-weight:bold;">Meeting page</h2>
						</div>

						<br> 


						<div class="container">
							<form class="container meeting-form" method="post" action="addmeeting.jsp">
								<fieldset class="form-group">
									<label for="meet-id" style="font-weight:bold"> Meeting Id: </label> <input
										class="first-name form-control" type="text" name="meetingid" style="font-weight:bold"/>
								</fieldset>
								<fieldset class="form-group">
									<label for="meet-title" style="font-weight:bold"> Meeting Title: </label> <input
										class="first-name form-control" type="text"
										name="meetingtitle" style="font-weight:bold" />
								</fieldset>

								<fieldset class="form-group">
									<label for="meet-date" style="font-weight:bold"> Meeting date: </label> <input
										class="first-name form-control" type="date" name="meetingdate" style="font-weight:bold"/>
								</fieldset>
								<table class="myTab">
									<tr>
										<th>Tasks</th>
									</tr>
									<tr>
										<td><textarea cols="75" class="first-name form-control"
												name="meetingnote1" id="myInput" style="font-weight:bold"></textarea></td>
									</tr>
									<tr>
										<td><textarea class="first-name form-control"
												name="meetingnote2" id="myInput" style="font-weight:bold"></textarea></td>
									</tr>
									<tr>
										<td><textarea class="first-name form-control"
												name="meetingnote3" id="myInput" style="font-weight:bold"></textarea></td>
									</tr>
								</table>

								<br>
								<fieldset>
									<button type="submit" class="btn btn-primary" value="publish">Publish</button>
								</fieldset>
							</form>
						</div>











						<%@page import="Dao.UserDao,JavaP.User,java.util.*"%>
						<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
						<%
							List<User> list = UserDao.getAllRecords();
						request.setAttribute("list", list);
						%>

						<div class="container">
							<!--  <form action="EmailSend" method="post">
									<table class="table table-hover">
										<tr>
											<td>To:</td>
										</tr>


										<tr>
											<td><select name="email" required="required"
												class="form-control">
													<c:forEach items="${list}" var="u">
														<option>${u.getEmail()}</option>
													</c:forEach>
											</select></td>
										</tr>



										<tr>
											<td>Subject:</td>
											<td><input type="text" name="subject"
												placeholder="enter subject" class="form-control"></td>
										</tr>

										<tr>
											<td>Message:</td>
											<td><textarea rows="5" cols="100" name="message"
													placeholder="  enter message" required="required"></textarea></td>
										</tr>

										<tr>
											<td><input type="submit" value="send"
												class="btn btn-primary"></td>
										</tr>

									</table>
									
								</form>-->
						</div>
						<br>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- Modal content-->










</body>

</html>