<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
<title>Edit User</title>
<link rel="stylesheet" type="text/css" href="styles.css">
<link rel="icon" href="faviicon-01.png">
</head>
<body >
	<%@page import="Dao.UserDao,JavaP.User"%>

	<%
		String id = request.getParameter("id");
	User u = UserDao.getRecordById(Integer.parseInt(id));
	%>

	
	<div class=" container-fluid  ">
		
				
					
					<div >
						<form action="edituser.jsp" method="post"
							class="edit-form needs-validation">
							<input type="hidden" name="id" value="<%=u.getId()%>" />


							<fieldset class="form-group">
								<label for="first-name"> Name: </label> <input
									class="first-name form-control" type="text" name="name"
									placeholder="enter the name" value="<%=u.getName()%>" />

							</fieldset>

							<fieldset class="form-group">
								<label for="pass"> Password: </label> <input
									class="pass form-control" type="password" name="password"
									placeholder="enter the password" value="<%=u.getPassword()%>" />

							</fieldset>

							<fieldset class="form-group ">
								<label for="email"> Email: </label> <input
									class="email form-control" type="email" name="email"
									placeholder="enter the email" value="<%=u.getEmail()%>" />

							</fieldset>

							<fieldset class="form-group">
								<label for="Sex"> Sex: </label> <input class="sex " type="radio"
									name="sex" value="male" /> Male <input class="sex "
									type="radio" name="sex" value="female" /> Female

							</fieldset>

							<fieldset class="form-group">
								<label for="country-names"> Country: </label> <select
									class="country-names " name="country" style="width: 155px">

									<option value="">-</option>
									<option>India</option>
									<option>Pakistan</option>
									<option>Afghanistan</option>
									<option>Berma</option>
									<option>Other</option>
								</select>

							</fieldset>

							<fieldset class="form-group">
								<input class="button " type="submit" value="Edit user">
								


							</fieldset>


						</form>

					</div>
				
			</div>
		








</body>
</html>