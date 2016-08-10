<%-- 
    Document   : posted
    Created on : 25 Aug, 2015, 11:46:19 PM
    Author     : harsh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
        <h1 style="color:snow">Project posted Successfully!</h1>
    <u><h2><a href="Post.jsp">Post another project</a></h2></u>
    <u><h2><a href="first.jsp">See other Projects</a></h2></u>
    </body>
</html>
