<%-- 
    Document   : Post
    Created on : 22 Aug, 2015, 12:23:08 AM
    Author     : harsh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>ProjectInfo</title>
        <link rel="stylesheet" href="css/style.css">
          <style type="text/css">
    .container {
        width: 500px;
        clear: both;
    }
    .container input {
        width: 100%;
        clear: both;
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
        <div id="nav"><u> <a  href="NoLogin.jsp"  style="color:tomato">LOG-OUT</a></u>&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;<u> <a  href="Post.jsp"  style="color:lemonchiffon">[POST-A-Project]</a></u></div>        
        <%
           String user= session.getAttribute("Welcome").toString(); 
        %>      
        <h3 style="color: seashell">Welcome,<%= user%></h3>
        <div>
            <form action="Profile"  method ="post">
                <div class="container" >
                    <b style="color:snow">Please Enter Your Details :--</b>
                    <label style="color:antiquewhite">Full Name *</label>
                
                    <input type="text" name="fname" required><br /><br />
                
                    <label style="color:antiquewhite">Email *</label>
                    <input  type="email" name="email" required><br /><br />
                
                    <label style="color:antiquewhite">Mobile Number *</label>
                    <input type="tel" name="phone" placeholder="10 digit"  required><br /><br />
                
                    
                </div>
               
                <div class="container">
                     <b style="color:snow">Please Enter your Professional Details :--</b><br/>
                    <label style="color:antiquewhite">Domain</label>
                    </div>
                <center><font style="color:wheat"><div >
                        <table>
                            <col width='200'>
                            <col width='150'>
                            <tr>
                                <th><input  type="checkbox" name="domain" value="Android"> Android</th>
                                <th><input  type="checkbox" name="domain" value="Internet of Things">Internet of Things</th>
                            </tr>
                            <tr>
                                <th><input type="checkbox" name="domain" value="Web Application">Web Application</th>
                                <th><input type="checkbox" name="domain" value="Data-Mining">Data-Mining</th>
                            </tr>
                            <tr>
                                <th><input type="checkbox" name="domain" value="Embedded Systems">Embedded Systems</th>
                                <th><input type="checkbox" name="domain" value="Network and Security">Network and Security</th>
                            </tr>
                        </table>
                    </div></font></center>
                <div class="container" >    
                    <label style="color:antiquewhite">Education Details</label><br /><br />
                    <textarea rows="4" cols="63" type="text" name="edu" placeholder="max words 100"></textarea><br />
                    <label style="color:antiquewhite">Area Of Interest</label>
                    <input type="text" name="Aoi" placeholder="Software Engineering,UML, Software Architecture etc.."><br /><br />
                    
                    <label style="color:antiquewhite">Technical Skills</label>
                    <input type="text"  name="ts" placeholder="Java,C++ etc.." ><br /><br />
                    <label style="color:antiquewhite">Work Experience</label>
                    <input type="text"  name="we" placeholder="1/2/3 etc.." > year/s<br /><br />
                    <label style="color:antiquewhite"> Other</label>
                    <input type="text"  name="proj" placeholder="Java,C++ etc.." ><br /><br />
                </div>  
                <center><input style="color:darkorchid" type="submit" value="Update-Now>>" name="submit"></center>
           
            </form>
        </div>

    </body>
</html>