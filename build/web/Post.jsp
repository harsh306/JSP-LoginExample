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
        
        <div>
            <form action="Pp"  method ="post">
                <div class="container" >
                    <label style="color:antiquewhite">Project Title*</label>
                    <input type="text"  name="pt"  required><br /><br />
                    <b style="color:snow">Please Enter Your Details :--</b>
                    <label style="color:antiquewhite">Full Name *</label>
                
                    <input type="text" name="fname" required><br /><br />
                
                    <label style="color:antiquewhite">Email *</label>
                    <input  type="email" name="email" required><br /><br />
                
                    <label style="color:antiquewhite">Mobile Number *</label>
                    <input type="tel" name="phone" placeholder="10 digit"  required><br /><br />
                
                    
                </div>
               
                <div class="container" >
                     <b style="color:snow">Please Enter Project Details :--</b>
                    <label style="color:antiquewhite">Domain</label>
                    <input type="checkbox" name="domain" value="Android">Android<br />
                    <input type="checkbox" name="domain" value="Internet of Things">Internet of Things<br />
                    <input type="checkbox" name="domain" value="Web Application">Web Application<br />
                    <input type="checkbox" name="domain" value="Data-Mining">Data-Mining<br />
                    <input type="checkbox" name="domain" value="Embedded Systems">Embedded Systems<br />
                    <input type="checkbox" name="domain" value="Network and Security">Network and Security<br />
                    <label style="color:antiquewhite">Status Of Project</label>
                    <input type="radio" name="status" value="UpComing">UpComing &nbsp;&nbsp;&nbsp;
                    <input type="radio" name="status" value="OnGoing">OnGoing &nbsp;&nbsp;&nbsp;
                    <input type="radio" name="status" value="Completed">Completed &nbsp;&nbsp;&nbsp;
                    
                    <label style="color:antiquewhite">Project Description</label><br /><br />
                    <textarea rows="4" cols="63" type="text" name="descr" placeholder="max words 100"></textarea><br />
                    <label style="color:antiquewhite">Accompanied Faculty</label>
                    <input type="text" name="Accf" placeholder="use comma if multiple"><br /><br />
                    
                    <label style="color:antiquewhite">Organized by</label>
                    <input type="text"  name="orga" placeholder="VIIT or other" ><br /><br />
                </div>
                <center><input style="color:darkorchid" type="submit" value="POST-NOW>>" name="submit"></center>
           
            </form>
        </div>

    </body>
</html>