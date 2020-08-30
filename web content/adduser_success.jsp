<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Registration Successful!</title>
<link rel="icon" href="faviicon-01.png">
</head>
<body onload="showAlert()">
<jsp:include page="registerform.html"></jsp:include>
<script>
function showAlert(){
alert("Registered Successfully.");
}
</script>  

</body>
</html>