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
    <%@page import="Dao.MeetingDao"%>  
    <jsp:useBean id="u" class="JavaP.Meeting"></jsp:useBean>  
    <jsp:setProperty property="*" name="u"/>  
      
    <%  
    int i=MeetingDao.save(u);  
    if(i>0){  
    response.sendRedirect("meeting_success.jsp");  
    }else{  
    response.sendRedirect("meeting.jsp");  
    }  
    %>  
</body>
</html>