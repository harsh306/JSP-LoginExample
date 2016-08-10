<%-- 
    Document   : first
    Created on : 21 Aug, 2015, 11:42:48 PM
    Author     : harsh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>ProjectInfo</title>
        <link rel="stylesheet" href="css/style.css">
        <style>
        table, th, td {
            border: 2px solid lawngreen;
        }
        </style>
        <style>
#header {
    background-color:limegreen;
    color:snow;
    text-align:center;
    padding:1px;
}
#nav {
    line-height:30px;
    
    height:max-content;
    width:max-content;
    float:right;
    padding:5px;	      
}
#section {
    width:450px;
    float:left;
    padding:15px;	 	 
}
#footer {
    background-color:lightgrey;
    color:white;
    clear:both;
    text-align:left;
   padding:2px;	 	 
}
</style>
    </head>
    <body>
        <div id="header" style="color:snow">
            <center><h1><a style="color:snow" href="first.jsp">ProjectInfo</a></h1>      </div>
        
        <%
           String user= session.getAttribute("Welcome").toString(); 
        %>      
        <h3 style="color: seashell">Welcome,<%= user%></h3>
        <div id="nav"><u> <a  href="NoLogin.jsp"  style="color:tomato">LOG-OUT</a></u>&nbsp;&nbsp;
        &nbsp;&nbsp;<u> <a  href="Post.jsp"  style="color:lemonchiffon">[POST-A-Project]</a></u>
        &nbsp;&nbsp;<u> <a  href="update.jsp"  style="color:lemonchiffon">Update My Profile</a></u></div>        
        <center>
        <div ><h1 style="color:lime">All up-coming events  are listed below</h1>
            <p style="color:wheat"><i>All projects and seminar details are posted by faculty 
                or by students facilitated by faculties<i></p> 
         </div><br /><br /><br />
        </center>
        <div>
            
                <%  try{
                    
                    Class.forName("org.apache.derby.jdbc.ClientDriver");
			Connection conn = DriverManager.getConnection("jdbc:derby://localhost:1527/users","hall","bed");
                        PreparedStatement ps= conn.prepareStatement("SELECT PROJECTTITLE,DATE FROM FORMTABLE");
                        ResultSet rs = ps.executeQuery();
                        //request.getSession(true);
                       // session.setAttribute("ptl",linke);
                        %>
                         <font style='font-size:250%' style="color:snow" >
             
                         <div align='center'> <table sortable >
                            <col width='400'>
                            <col width='150'>
                                    <tr>
                                         <th  align='center' style="color:darkturquoise" sortable ><i><b>Project Title</b></i></th>
                                        <th align='center' style="color:darkturquoise" sortable><i><b>Date</b></i></th>
                                    </tr>   
                        </table>
                            
                            
                         <table >
                              <col width='400'>
                            <col width='150'>
                         <%       
                        while(rs.next())
                        {
                            %>
                            
                                
                            <tr style="color:aliceblue">
                                
                                <td style="color:aliceblue"><a style="color:wheat" href='pt.jsp?value=<%=rs.getString("PROJECTTITLE")%>' name='<%=rs.getString("PROJECTTITLE")%>'><%=rs.getString("PROJECTTITLE")%></a></td>
                                       <td style="color:aliceblue"><%=rs.getString("DATE")%></td>
                                    </tr>    
                                
                                   
                

                            <%
                            //response.sendRedirect("newhtml.html");
                        }
                        
                }
                catch(Exception e){
                    response.sendRedirect("NoLogin.html");
                }
                %>
                
                
             </table>
                         </div>
         </font>  
        </div>    
        
    
    </body>
</html>
