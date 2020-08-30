<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Error</title>
<link rel="icon" href="faviicon-01.png">
</head>
<body onload="showAlert()">
<jsp:include page="registerform.html"></jsp:include>
<script>
function showAlert(){
alert("Registration Failed");
}
</script>   

</body>
</html>