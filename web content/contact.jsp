<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<link rel="icon" href="faviicon-01.png">
<link rel="stylesheet" href="style3.css">

<title>Contact</title>
<style>
body {font-family: Arial, Helvetica, sans-serif;}
* {box-sizing: border-box;}

input[type=text], textarea {
  width: 100%;
  padding: 12px;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
  margin-top: 6px;
  margin-bottom: 16px;
  resize: none;
}

input[type=submit] {
  background-color: #19191a;
  color: white;
  padding: 12px 20px;
  border: none;
  border-radius: 4px;
  cursor: pointer;
  margin-left:500px;
}

input[type=submit]:hover {
  background-color: #323233;
}
label{
font-family:'Manrope', sans-serif;
}

.container {
  border-radius: 5px;
  margin-top:50px;
  background-color: #ebe6e6;
  padding: 20px;
}
</style>
<link
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.3/css/font-awesome.min.css"
	rel="stylesheet"
	>
</head>
<body style="background: url(JMjEgV.jpg) no-repeat;">
<div class="navbar-header">
							<br>
							
							<h2 style="text-align:center;font-weight:bold;color:white;font-family:'Manrope',sans-serif;">Contact</h2>

						</div>
	

	<div class="container">
  <form action="index.jsp">
    <a class="fa fa-phone" style="padding-right:8px;font-size:20px;color:black;"></a><label for="phone" style="font-weight:bold">Phone Number</label>
    <input readonly type="text" id="fname" name="firstname" placeholder="1800-272-3552">

    <a class="fa fa-envelope" style="padding-right:8px;font-size:20px;color:black;"></a><label for="email"style="font-weight:bold">Email</label>
    <input readonly type="text" id="lname" name="lastname" placeholder="vsofttech@gmail.com">

  

    <a class="fa fa-commenting" style="padding-right:8px;font-size:20px;color:black;"></a><label for="subject"style="font-weight:bold">Feedback</label>
    <textarea id="subject" name="subject" placeholder="Write something.." style="height:200px"></textarea>

    <input type="submit" value="Submit" onclick="myFunc()">
  </form>
  <script>
  function myFunc(){
	  alert("Thank You!");
	  
  }
  </script>
</div>
</body>
</html>