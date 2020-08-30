<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="icon" href="faviicon-01.png">
<title>Insert title here</title>
</head>
<body>
	<table class="table table-hover">
		<tr>
			<td>Date</td>
			<td><input type="email" name="email" placeholder="enter email"
				required="required" class="form-control"></td>
		</tr>

		<tr>
			<td>Participants:</td>
			<td><input type="text" name="subject"
				placeholder="enter subject" class="form-control"></td>
		</tr>

		<tr>
			<td>Action items:</td>
			<td><textarea rows="5" cols="100" name="message"
					placeholder="  enter message" required="required" contenteditable="false"></textarea></td>
		</tr>

		<tr>
			<td><input type="submit" value="send" class="btn btn-primary"></td>
		</tr>

	</table>

</body>
</html>