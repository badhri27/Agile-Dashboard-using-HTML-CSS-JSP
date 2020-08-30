package Dao;

import java.io.IOException;
 
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
 

@WebServlet("/EmailSend3")
public class EmailSend3 extends HttpServlet {
    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String host;
    private String port;
    
    public void init() {
        // reads SMTP server setting from web.xml file
        ServletContext context = getServletContext();
        host = context.getInitParameter("host");
        port = context.getInitParameter("port");
        
        
    }
 
    protected void doPost(HttpServletRequest request,
            HttpServletResponse response) throws ServletException, IOException {
        // reads form fields
        String meetingtitle = request.getParameter("meetingtitle");
        String toaddress = request.getParameter("toaddress");
        String meetingdate = request.getParameter("meetingdate");
        String meetingnote3 = request.getParameter("meetingnote3");
       

        String user="badhri.l.1999@gmail.com";
        String pass="pitbullrapeminem.27.";
        try {
            EmailUtility3.sendEmail(host, port, user, pass, toaddress,meetingtitle, meetingdate,
            		meetingnote3);
            response.sendRedirect("EmailSent.jsp");
        } catch (Exception ex) {
        	response.sendRedirect("EmailError.jsp");
        } 
    }
}