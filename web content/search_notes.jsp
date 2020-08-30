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


<style>
textarea {
	resize: none;
	border: 3px solid #cccccc;
	padding: 5px;
	
	
	background-position: bottom right;
	background-repeat: no-repeat;
}
</style>
<script>
	$('textarea').autoResize();
</script>

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
<body class="home light-mode" style="overflow-y:hidden">
	<div class="container-fluid display-table" >



		<nav class="navbar navbar-expand-sm bg-dark navbar-dark top-fixed" style="padding:0 1rem;">
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



					<li class="nav-item "><a class="nav-link " href="logout.jsp"><i
							></i>Logout</a></li>

				</ul>
			</div>



		</nav>


		<div class="row display-row-table container-fluid" >
			<div
				class="col-md-2 col-sm-1 hidden-xs display-table-cell v-align box"
				id="navigation" style="height:3000px">
				<!-- Left Navigation bar-->
				<img class="header-nav-logo" src="nav-header-white-01.png">
				
				<label class="switch"> <input type="checkbox"  onclick="myFunction()"  checked>
					<span class="slider round" ></span>
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

						<li class="active"><a href="search.jsp"><i
								class="fa fa-user" aria-hidden="true"></i><span
								class="hidden-xs hidden-sm">Assign</span></a></li>
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


			<div class="col-sm-10  display-table-cell v-align" style="overflow-y:scroll;height:600px;" >
				<div class="user-dashboard" style="font-family: 'Manrope', sans-serif;">
					<div>
						<div class="navbar-header"></div>


						<br>


						<div class="container">
							<%@page
								import="Dao.UserDao,Dao.MeetingDao,JavaP.User,JavaP.Meeting,java.util.*"%>
							<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


							<%
								List<User> list = UserDao.getAllRecords();
							request.setAttribute("list", list);
							List<Meeting> list1 = MeetingDao.getAllRecords();
							request.setAttribute("list1", list1);
							%>

							<div class="search hidden-xs hidden-sm">

								<form action="search_notes.jsp" method="post">
									<input type="text" placeholder="Search" name="search-name"
										id="search" style="font-weight:bold"><br><br>
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
							<%
								String title = rs.getString("meetingtitle");
							String date = rs.getString("meetingdate");
							%>
							<!-- Form for task1 -->
							<form method="post" action="EmailSend">
								<table class=" table-disp">

									
									<tr>
										<td><textarea rows="1" cols="20" readonly name="meetingtitle"
											class="meetingnote"
											placeholder="" ><%=rs.getString("meetingtitle")%></textarea>
									
										<textarea rows="1" cols="10" readonly name="meetingdate"
											class="meetingnote"
											placeholder=""><%=rs.getString("meetingdate")%></textarea></td>
									</tr>
									<tr>
										<td><h4>Meeting task 1</h4></td>

									</tr>
								
									<tr>
										<td><textarea rows="4" cols="50" readonly
												name="meetingnote1" class="meetingnote"><%=rs.getString("meetingnote1")%></textarea>
										</td>

									</tr>
									<tr>
										<td><select name="toaddress" required="required"
											class="form-control">
												<c:forEach items="${list}" var="u">
													<option>${u.getEmail()}</option>
												</c:forEach>
										</select></td>
										<td class="td-button"><button class="btn btn-primary"
											type="submit" value="Assign">Assign</button></td>
									</tr>

								</table>
							</form>
<br>



							<!-- Form for task2 -->
							<form action="EmailSend2" method="post">
								<table class=" table-disp">

									<tr>
										<td><textarea rows="1" cols="20" readonly name="meetingtitle"
											class="meetingnote"
											placeholder=""><%=rs.getString("meetingtitle")%></textarea>
									
										<textarea rows="1" cols="10" readonly name="meetingdate"
											class="meetingnote"
											placeholder=""><%=rs.getString("meetingdate")%></textarea></td>
									</tr>
									<tr>
										<td><h4>Meeting task 2</h4></td>

									</tr>

									<tr>
										<td><textarea rows="4" cols="50" readonly
												name="meetingnote2" class="meetingnote"><%=rs.getString("meetingnote2")%></textarea></td>

									</tr>
									<tr>
										<td><select name="toaddress" required="required"
											class="form-control">
												<c:forEach items="${list}" var="u">
													<option>${u.getEmail()}</option>
												</c:forEach>
										</select></td>
										<td class="td-button"><button class="btn btn-primary"
											type="submit" value="Assign">Assign</button></td>
									</tr>
								</table>
							</form>
<br>




							<!-- Form for task3 -->
							<form action="EmailSend3" method="post">
								<table class=" table-disp">
									<tr>
										<td><textarea rows="1" cols="20" readonly name="meetingtitle"
											class="meetingnote"
											placeholder=""><%=rs.getString("meetingtitle")%></textarea>
									
										<textarea rows="1" cols="10" readonly name="meetingdate"
											class="meetingnote"
											placeholder=""><%=rs.getString("meetingdate")%></textarea></td>
									</tr>
									<tr>
										<td><h4>Meeting task 3</h4></td>

									</tr>
									<tr>
										<td><textarea rows="4" cols="50" readonly
												name="meetingnote3" class="meetingnote"><%=rs.getString("meetingnote3")%></textarea></td>

									</tr>
									<tr>
										<td><select name="toaddress" required="required"
											class="form-control">
												<c:forEach items="${list}" var="u">
													<option>${u.getEmail()}</option>
												</c:forEach>
										</select></td>
										<td class="td-button"><button class="btn btn-primary"
											type="submit" value="Assign">Assign</button></td>
									</tr>
								</table>
							</form>
						

							<%
								}
							con.close();
							} catch (Exception e) {
							System.out.println(e);
							}
							%>





						


							<br />
						</div>


					</div>
					<br>
				</div>
				
			</div>
			
		</div>
		
	</div>


	<!-- Modal content-->









</body>

</html>