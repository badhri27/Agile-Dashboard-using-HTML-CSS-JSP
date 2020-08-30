<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
<script src="script.js"></script>
<link rel="icon" href="faviicon-01.png">
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Home</title>
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
  background-color: #bb7acd ;
  -webkit-transition: .4s;
  transition: .4s;
  
}

input:checked + .slider {
  background-color:  #edf1f7;
}



input:checked + .slider:before {
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
<body class="home light-mode " style="overflow-y: hidden;position:static;">

	<div class="container-fluid display-table" >



		<nav class="navbar navbar-expand-sm bg-dark navbar-dark topnav"style="padding:0 1rem;">
			<!--  Logo -->
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




					<li class="nav-item logout"><a class="nav-link " href="logout.jsp"><i
							></i>Logout</a></li>

				</ul>
			</div>



		</nav>


		<div class="row display-row-table container-fluid">
			<div
				class="col-md-2 col-sm-1 hidden-xs display-table-cell v-align box"
				id="navigation" style="height: 3000px">
				<!-- Left Navigation bar-->


				<img class="header-nav-logo" src="nav-header-white-01.png">
				<label class="switch"> <input type="checkbox"  onclick="myFunction()"  checked>
					<span class="slider round" ></span>
				</label>


				<div class="navi">
					<!-- Navigation content -->
					<ul>
						<li class="active"><a href="home.jsp"><i
								class="fa fa-home" aria-hidden="true"></i><span
								class="hidden-xs hidden-sm">Home</span></a></li>
						<li><a href="meeting.jsp"><i class="fa fa-bar-chart"
								aria-hidden="true"></i><span class="hidden-xs hidden-sm">Meeting</span></a></li>
						<li><a href="members.jsp"><i class="fa fa-tasks"
								aria-hidden="true"></i><span class="hidden-xs hidden-sm">Members</span></a></li>

						<li><a href="search.jsp"><i class="fa fa-user"
								aria-hidden="true"></i><span class="hidden-xs hidden-sm">Assign</span></a></li>
						<li><a href="searchtrack.jsp"><i class="fa fa-info-circle"
								aria-hidden="true"></i><span class="hidden-xs hidden-sm">Track</span></a></li>
						<li></li>
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


			<div class="col-sm-10 display-table-cell v-align"
				style="overflow-y: scroll; height: 2000px;">
				<div class="user-dashboard" style="font-family: 'Manrope', sans-serif;">
					<div>
						<div class="navbar-header">
							<br>
							
							<h2 style="text-align:center;font-weight:bold;">VSoft Technologies</h2>

						</div>
						
						<div class="home-body-part">
							<p style="font-size:20px;padding:20px;text-align: center;">"The VSoft is a software based company that is specialized in project management.
								This is a project that indulges Agile flavors into the VSoft environment that
								helps in easing out the meeting process for the presenters and allows to segment 
								and brings out the comfort attained through Agile Meetings."</p> 
						</div>
						<div class="home-body-image">
						<img src="meeting.png">
						</div>
					</div>
				</div>
				<footer class="page-footer pull-right " style="position:fixed;bottom:0" >
				<div class="footer-copyright text-center py-3">© 2020 Copyright:
    <a href="home.jsp" > VSoftAgileMeet</a>
  </div>
				</footer>
			</div>
		</div>



	</div>







</body>

</html>