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
	<script src="background.js"></script>
<script type="text/javascript" src="theStoredValue.js"></script>
<link rel="icon" href="faviicon-01.png">
<script src="script.js"></script>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Members</title>
<link rel="stylesheet" href="style3.css">
<style>
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

.tracktab table, th, tr, td {
	border: 1px solid #ddd;
	text-align: left;
}

table {
	border-collapse: collapse;
	width: 100%;
}

td {
	padding: 15px 10px;
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
	rel="stylesheet">
<body class="home light-mode" style="overflow-y: hidden">
	<div class="container-fluid display-table">



		<nav class="navbar navbar-expand-sm bg-dark navbar-dark top-fixed"
			style="padding: 0 1rem;">
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
						<li><a href="meeting.jsp"><i class="fa fa-bar-chart"
								aria-hidden="true"></i><span class="hidden-xs hidden-sm">Meeting</span></a></li>
						<li><a href="members.jsp"><i class="fa fa-tasks"
								aria-hidden="true"></i><span class="hidden-xs hidden-sm">Members</span></a></li>

						<li><a href="search.jsp"><i class="fa fa-user"
								aria-hidden="true"></i><span class="hidden-xs hidden-sm">Assign</span></a></li>
						<li class="active"><a href="searchtrack.jsp"><i
								class="fa fa-info-circle" aria-hidden="true"></i><span
								class="hidden-xs hidden-sm">Track</span></a></li>

					</ul>
				</div>
				<div class="lower-nav-part">

					<a href="#"><i class="fa fa-instagram" aria-hidden="true"></i></a>
					<a href="#"><i class="fa fa-linkedin" aria-hidden="true"></i></a>

				</div>
				<div class="lower-nav-phone">
					<a href="#"><i class="fa fa-phone" aria-hidden="true"></i> <span>1800-272-3552</span>
					</a>
				</div>
			</div>


			<div class="col-sm-10 display-table-cell v-align">
				<div class="user-dashboard"
					style="font-family: 'Manrope', sans-serif;">
					<div>
						<div class="navbar-header"
							style="font-family: 'Manrope', sans-serif;">
							<br>
							<h2 style="text-align: center; font-weight: bold;">Assign
								page</h2>


							<br> <br>
						</div>

						<div class="container">
							<%@page
								import="Dao.UserDao,Dao.MeetingDao,JavaP.User,JavaP.Meeting,java.util.*"%>
							<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


							<%
								List<Meeting> list = MeetingDao.getAllRecords();
							request.setAttribute("list", list);
							%>

							<div class="search hidden-xs hidden-sm">

								<form action="Track.jsp" method="post">
									<input type="text" placeholder="Search" name="search-name"
										id="search" style="font-weight: bold"><br> <br>
									<button type="submit" name="save" class="btn btn-primary">Search</button>
								</form>
							</div>
							<br>
							<%@ page import="java.sql.*"%>
							<%
								try {
								Class.forName("com.mysql.jdbc.Driver");
								Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/test", "root", "badhri@123");
								String searchname = request.getParameter("search-name");
								Statement st = con.createStatement();
								ResultSet rs;
								rs = st.executeQuery("select * from meeting where meetingtitle='" + searchname + "' ");
								while (rs.next()) {
							%>
							<div>
								<fieldset style="font-weight: bold; font-size: 30px;"
									name="meetingtitle" class="meetingnote"><%=rs.getString("meetingtitle")%></fieldset>
								<fieldset style="font-weight: bold; font-size: 30px;"
									name="meetingdate" class="meetingnote"><%=rs.getString("meetingdate")%></fieldset>
							</div>


							<br> <br>
							<div>
								<table class="tracktab">
									<tr>
										<td><%=rs.getString("meetingnote1")%></td>
										<td style="padding: 15px 10px"><select
											id="myDynamicSelectBox">
												<option value=""></option>
												<option value="a">In Progress</option>
												<option value="b">Completed</option>
												<option value="c">Not Started</option>
												
										</select></td>
									</tr>

									<tr>
										<td><%=rs.getString("meetingnote2")%></td>
										<td style="padding: 15px 10px"><select
											id="myDynamicSelectBox2">
												<option value=""></option>
												<option value="a">In Progress</option>
												<option value="b">Completed</option>
												<option value="c">Not Started</option>
												
										</select></td>
									</tr>

									<tr>
										<td><%=rs.getString("meetingnote3")%></td>
										<td style="padding: 15px 10px"><select
											id="myDynamicSelectBox3">
												<option value=""></option>
												<option value="a">In Progress</option>
												<option value="b">Completed</option>
												<option value="c">Not Started</option>
												
										</select></td>
									</tr>
								</table>
							</div>





							<%
								}
							con.close();
							} catch (Exception e) {
							System.out.println(e);
							}
							%>
							<br>
						</div>


					</div>
					<br>
				</div>
			</div>
		</div>
	</div>












</body>

</html>