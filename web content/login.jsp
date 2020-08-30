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
<%@ page import ="java.sql.*" %>
<%
    String emailid = request.getParameter("email");    
    String pwd = request.getParameter("pass");
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/test",
            "root", "badhri@123");
    Statement st = con.createStatement();
    ResultSet rs;
    rs = st.executeQuery("select * from register where email='" + emailid + "' and password='" + pwd + "'");
    if (rs.next()) {
        session.setAttribute("emailid", emailid);
        out.println("welcome " + emailid);
        
        response.sendRedirect("home.jsp");
    } else {
       
        response.sendRedirect("index.jsp");
    }
%>
</body>
</html>