<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>ProjectInfo</title>
        <link rel="stylesheet" href="css/style.css">
        <SCRIPT type="text/javascript">
    window.history.forward();
    function noBack() { window.history.forward(); }
</SCRIPT>
<script>
    history.forward();
</script>
    </head>
    <body onload="noBack();"
    onpageshow="if (event.persisted) noBack();" onunload="">
        
        <font style="color: antiquewhite">
<h2>Invalid Username / Password / Session</h2>
<% 
    response.setHeader("Cache-Control","no-cache");
  response.setHeader("Cache-Control","no-store");
  response.setHeader("Pragma","no-cache");
  response.setDateHeader ("Expires", 0);
    
    session.setAttribute("Welcome",null);
    session.removeAttribute("Welcome");
    
    session.invalidate();
    request.getSession().invalidate();
    //response.sendRedirect("login1.jsp");
%>
<a href="login1.jsp">Login Again?</a>
</font>
</body>
</html>