<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login-Vsoft Technologies</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
<link rel="icon" href="faviicon-01.png">	
</head>
<link rel="stylesheet" type="text/css" href="styles.css">
<body class="body" >

	<div class="container-fluid pad0">
	<div class="col-sm-12 pad0" >
		<div class="right-header-regpage"  style="font-family: 'PT Sans', sans-serif;"><ul>
						<li><a class="nav-link" href="index_home.html">Home</a></li>
						
						<li><a class="nav-link" href="contact.jsp">Contact</a></li>
						<li style="float: right" ><a class="nav-link  " href="index.jsp">Login</a></li>
					</ul></div>
			<div class="row">
				
				<div class="col-sm-12 col-md-6">
				<div class="left-section">
				<div>
				<img class="left-img" alt="leftsection" src="webpage-left-black-01.jpg" align="left" style="width: 100%;max-height: 120%">
				</div>
				</div></div>
				<div class="col-sm-12 col-md-6 rpad0" style="font-family: 'Manrope', sans-serif;">
					<div class="right-section">
						<form class="register-form " method="post" action="login.jsp">

							<fieldset>
								<label> Email * </label> <input class="email" type="text"
									name="email" placeholder="enter the email" value="" />
							</fieldset>

							<fieldset>
								<label> Password * </label> <input class="pass" type="password"
									name="pass" placeholder="enter the password" value="" />
							</fieldset>
							<br>
							<fieldset>
								<button class="button" type="submit">
									<div class="button-label">Login</div>
								</button>
							</fieldset>

							<button class="button" type="submit"
								formaction="registerform.html">
								<div class="button-label">Register</div>
							</button>
						</form>
					</div>
				</div>
			</div>
			</div>
		</div>
	
</body>
</html>
