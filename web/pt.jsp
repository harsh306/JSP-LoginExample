<%-- 
    Document   : pt
    Created on : 29 Aug, 2015, 6:10:26 PM
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
        <div id="nav"><u> <a  href="NoLogin.jsp"  style="color:tomato">LOG-OUT</a></u>&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;<u> <a  href="Post.jsp"  style="color:lemonchiffon">[POST-A-Project]</a></u></div>        
        
  <%      
        try{
                    Class.forName("org.apache.derby.jdbc.ClientDriver");
		    Connection conn = DriverManager.getConnection("jdbc:derby://localhost:1527/users","hall","bed");
                    PreparedStatement ps= conn.prepareStatement("SELECT * FROM FORMTABLE WHERE PROJECTTITLE=?");
                        
                    String str=request.getRequestURL()+"?"+request.getQueryString();
                    String pt = str.substring(str.indexOf('=')+1);
                    ps.setString(1,pt);
                    ResultSet rs = ps.executeQuery();
                    
                    
                         
                    if (rs.next())
                    {
                     %>
                     
                                
                     <center><h2 style="color:lawngreen"><%=rs.getString("PROJECTTITLE")%></h2> 
                                    <font style='font-size:150%' style="color:snow" >
                                    <div id="section">
                                    <p style="color:wheat">
                                        Conducted on <%=rs.getString("DATE")%><br/><br/>
                                        Conducted by <%=rs.getString("FULLNAME")%><br><br/>
                                        Accompanied Faculty is <%=rs.getString("ACCFACULTY")%><br/><br/>
                                        About the project <%=rs.getString("PROJECTDESC")%><br /><br/>
                                        Project Organiser <%=rs.getString("ORGANISER")%><br/><br/><br/>
                                    </p>
                                    </div>
                                    <div id="footer">
                                        <p style="color:limegreen">CONTACT INFO of the co-ordinator<br>
                                            Email  <%=rs.getString("EMAIL")%><br/>
                                            Phone  <%=rs.getString("PHONE")%>
                                        </p>  
                                        </div>
                                        </font>
                                    
                     
                                        

                     <%
                            //response.sendRedirect("newhtml.html");
                      }
                        
                }
                catch(Exception e){
                    response.sendRedirect("NoLogin.html");
                }
                %>
                
                
             
     </body>
</html>