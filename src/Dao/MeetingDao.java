package Dao;


import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import JavaP.Meeting;



public class MeetingDao {
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
	public static int save(Meeting u){  
	    int status=0;  
	    try{  
	        Connection con=getConnection();  
	        PreparedStatement ps=con.prepareStatement(  
	"insert into meeting(meetingid,meetingtitle,meetingdate,meetingnote1,meetingnote2,meetingnote3) values(?,?,?,?,?,?)");  
	        ps.setInt(1,u.getMeetingid());  
	        ps.setString(2,u.getMeetingtitle());  
	        ps.setString(3,u.getMeetingdate());  
	        ps.setString(4,u.getMeetingnote1());
	        ps.setString(5,u.getMeetingnote2());   
	        ps.setString(6,u.getMeetingnote3());   
	        status=ps.executeUpdate();  
	    }catch(Exception e){System.out.println(e);}  
	    return status;  
	}
	
	public static int update(Meeting u){  
	    int status=0;  
	    try{  
	        Connection con=getConnection();  
	        PreparedStatement ps=con.prepareStatement(  
	"update meeting set meetingid=?,meetingtitle=?,meetingdate=?,meetingnote1=?,meetingnote2=?,meetingnote3=? where meetingid=?");  
	        ps.setInt(1,u.getMeetingid());  
	        ps.setString(2,u.getMeetingtitle());  
	        ps.setString(3,u.getMeetingdate());  
	        ps.setString(4,u.getMeetingnote1());
	        ps.setString(5,u.getMeetingnote2());   
	        ps.setString(6,u.getMeetingnote3()); 
	          
	        status=ps.executeUpdate();  
	    }catch(Exception e){System.out.println(e);}  
	    return status;  
	}  
	
	public static List<Meeting> getAllRecords(){  
	    List<Meeting> list=new ArrayList<Meeting>();  
	      
	    try{  
	        Connection con=getConnection();  
	        PreparedStatement ps=con.prepareStatement("select * from meeting");  
	        ResultSet rs=ps.executeQuery();  
	        while(rs.next()){  
	            Meeting u=new Meeting();  
	            u.setMeetingid(rs.getInt("meetingid"));  
	            u.setMeetingtitle(rs.getString("meetingtitle"));  
	            u.setMeetingdate(rs.getString("meetingdate"));  
	            u.setMeetingnote1(rs.getString("meetingnote1"));  
	            u.setMeetingnote2(rs.getString("meetingnote2"));  
	            u.setMeetingnote3(rs.getString("meetingnote3"));  
	            list.add(u);  
	        }  
	    }catch(Exception e){System.out.println(e);}  
	    return list;  
	}  
	public static Meeting getRecordById(int meetingid){  
	    Meeting u=null;  
	    try{  
	        Connection con=getConnection();  
	        PreparedStatement ps=con.prepareStatement("select * from meeting where meetingid=?");  
	        ps.setInt(1,meetingid);  
	        ResultSet rs=ps.executeQuery();  
	        while(rs.next()){  
	            u=new Meeting();  
	            u.setMeetingid(rs.getInt("meetingid"));  
	            u.setMeetingtitle(rs.getString("meetingtitle"));  
	            u.setMeetingdate(rs.getString("meetingdate"));  
	            u.setMeetingnote1(rs.getString("meetingnote1"));  
	            u.setMeetingnote2(rs.getString("meetingnote2"));  
	            u.setMeetingnote3(rs.getString("meetingnote3")); 
	            
	        }  
	    }catch(Exception e){System.out.println(e);}  
	    return u;  
	}  
}
