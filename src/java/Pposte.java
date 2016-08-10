/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.sql.*;
import org.apache.catalina.tribes.util.Arrays;

/**
 *
 * @author harsh
 */
public class Pposte extends HttpServlet {

    public void doPost (HttpServletRequest req,HttpServletResponse res )throws IOException,ServletException{
        try{
            String ProjectTitle = req.getParameter("pt");
            String fname = req.getParameter("fname");
            String Email = req.getParameter("email");
            String Phone = req.getParameter("phone");
            int phone=Integer.parseInt(Phone);
            String af = req.getParameter("Accf");
            String Pd = req.getParameter("descr");
            String org = req.getParameter("orga");
            //String date= req.getParameter("date");
            String status[] = req.getParameterValues("status");
            String domain[] = req.getParameterValues("domain");
            String domains = Arrays.toString(domain);
            domains = domains.substring(1, domains.length()-1).replaceAll(",", "");
            String stat = Arrays.toString(status);
            stat = stat.substring(1, stat.length()-1).replaceAll(",", "");
            Class.forName("org.apache.derby.jdbc.ClientDriver");
            Connection conn = DriverManager.getConnection("jdbc:derby://localhost:1527/users","hall","bed");
            PreparedStatement ps= conn.prepareStatement("INSERT INTO FACULTYPOST  VALUES (?,?,?,?,?,?,?,?,?)");//(PROJECTTITLE,FULLNAME,EMAIL,ACCFACULTY,PROJECTDESC,ORGSNISER,PHONE,status,domain)
            
            ps.setString(1,ProjectTitle);
            ps.setString(2,fname);
            ps.setString(3, Email);
            ps.setString(4, af);
            ps.setString(5,Pd);
            ps.setString(6, org);
            ps.setInt(7, phone);
            //ps.setString(8,date);
            ps.setString(8, stat);
            ps.setString(9, domains);
            ps.executeUpdate();
            
            res.sendRedirect("posted.jsp");
        
        }
        catch(Exception e){
                //res.sendRedirect("NoLogin.jsp");
                System.out.println(e.getMessage());
        
        }
    
    
    }
    
}
