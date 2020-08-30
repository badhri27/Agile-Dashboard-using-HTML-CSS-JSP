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
    <%@page import="Dao.UserDao"%>  
    <jsp:useBean id="u" class="JavaP.User"></jsp:useBean>  
    <jsp:setProperty property="*" name="u"/>  
      
    <%  
    int i=UserDao.save(u);  
    if(i>0){  
    response.sendRedirect("adduser_success.jsp");  
    }else{  
    response.sendRedirect("adduser_error.jsp");  
    }  
    %>  
</body>
</html>