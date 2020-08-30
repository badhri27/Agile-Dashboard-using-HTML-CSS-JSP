package Dao;

import java.sql.*; 
public class LoginDao {
	public static Connection getConnection(){  
	    Connection con=null;  
	    try{  
	    	String url="jdbc:mysql://localhost:3306/test";
		    String uname="root";
		    String pass="badhri@123";
	        Class.forName("com.mysql.jdbc.Driver");  
	        con=DriverManager.getConnection(url,uname,pass);  
	    }catch(Exception e){System.out.println(e);}  
	    return con;  
	}  
}
