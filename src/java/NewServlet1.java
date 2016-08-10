// a pure processing servlet to authenticate the user
import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.sql.*;

public class NewServlet1 extends HttpServlet
{
   /// private static final String url = "jdbc:mysql://localhost/vusers";
 
	//    private static final String user = "root";
 
	  //  private static final String pw = "mysql";
            
	public void doPost(HttpServletRequest req,HttpServletResponse res) throws IOException, ServletException
	{
		try
		{
			Class.forName("org.apache.derby.jdbc.ClientDriver");
			Connection conn = DriverManager.getConnection("jdbc:derby://localhost:1527/users","hall","bed");
			PreparedStatement ps = conn.prepareStatement("INSERT INTO USERNAME VALUES (?,?,?)");
			// get data of form
                        String email=req.getParameter("email");
			String username = req.getParameter("username");
			String password = req.getParameter("password");
			// set the values for parameters
			ps.setString(1,username);
			ps.setString(2,password);
                        ps.setString(3, email);
			ps.executeUpdate();//database is updated
				//HttpSession session = req.getSession(true);
                                //session.setAttribute("Welcome",username);
				res.sendRedirect("login1.jsp");  // Wel is 
				
		
                
		}
		catch (Exception e)
		{
                    res.sendRedirect("NoLogin.jsp");
			System.out.println(e.getMessage());
		}
	}
}
		


		