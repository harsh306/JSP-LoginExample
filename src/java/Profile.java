/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.sql.*;
import java.util.Arrays;

/**
 *
 * @author harsh
 */
public class Profile extends HttpServlet {

    public void doPost (HttpServletRequest req,HttpServletResponse res )throws IOException,ServletException{
        try{
            //String ProjectTitle = req.getParameter("uname");
            HttpSession session = req.getSession(false);
            String user= session.getAttribute("Welcome").toString();
            String fname = req.getParameter("fname");
            String Email = req.getParameter("email");
            String Phone = req.getParameter("phone");
            int phone=Integer.parseInt(Phone);
            String edu = req.getParameter("edu");
            String aoi = req.getParameter("Aoi");
            String ts = req.getParameter("ts");
            //String date= req.getParameter("date");
            //String status[] = req.getParameterValues("status");
            String domain[] = req.getParameterValues("domain");
            String domains= Arrays.toString(domain);
            domains=domains.substring(1,domains.length()-1).replaceAll(",","");
            String we = req.getParameter("we");
            int worke= Integer.parseInt(we);
            String proj = req.getParameter("proj");
            Class.forName("org.apache.derby.jdbc.ClientDriver");
            Connection conn = DriverManager.getConnection("jdbc:derby://localhost:1527/users","hall","bed");
            PreparedStatement ps= conn.prepareStatement("INSERT INTO FACULTYINFO  VALUES (?,?,?,?,?,?,?,?,?,?) ");//(PROJECTTITLE,FULLNAME,EMAIL,ACCFACULTY,PROJECTDESC,ORGSNISER,PHONE,status,domain)
            
            ps.setString(1,user);
            //ps.setString(11,user);
            ps.setString(2,fname);
            ps.setString(3, Email);
            ps.setInt(4, phone);
            ps.setString(5,domains);
            ps.setString(6, edu);
            ps.setString(7, aoi);
            ps.setString(8, ts);
            ps.setString(9, proj);
            ps.setInt(10, worke);
            ps.executeUpdate();
            
            res.sendRedirect("posted.jsp");
        
        }
        catch(Exception e){
                //res.sendRedirect("NoLogin.jsp");
                System.out.println(e.getMessage());
        
        }
    
    
    }
    
}
