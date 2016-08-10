<%-- 
    Document   : login
    Created on : Jul 9, 2015, 4:27:24 PM
    Author     : root
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>ProjectInfo</title>
        <link rel="stylesheet" href="css/style.css">
    </head>
   <body>
        <div class="login"><div class="heading">
  <h2>ProjectInfo</h2>
  <form action="log" method="post">

    <div class="input-group input-group-lg">
      <span class="input-group-addon"><i class="fa fa-user"></i></span>
      <input type="text" class="form-control" placeholder="UserName" name="username" required>
    </div>

    <div class="input-group input-group-lg">
      <span class="input-group-addon"><i class="fa fa-lock"></i></span>
      <input type="password" class="form-control" placeholder="Password" name="password" required>
      </div>

      <button type="submit" class="float">Login</button>
    </form>
  </div>
</div>
    </body>
</html>
