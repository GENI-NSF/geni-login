<%@ taglib uri="urn:mace:shibboleth:2.0:idp:ui" prefix="idpui" %>
<html>
  <head>
    <title>GENI Project Office Login Page</title>
    <meta name="viewport" content="initial-scale=1.0, user-scalable=0, width=device-width, height=device-height"/>
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:400,700" rel="stylesheet" type="text/css">
    <link rel="stylesheet" type="text/css" href="<%= request.getContextPath()%>/login.css"/>
    <link rel="icon" type="image/ico" href="<%= request.getContextPath()%>/images/favicon.ico">
  </head>

  <body>
    <div id="loginArea">
      <img style="height: 100px;" src="<%= request.getContextPath()%>/images/logo.png" alt='Geni logo'/>
      <h3>GENI Project Office Login</h3>
      <% if ("true".equals(request.getAttribute("loginFailed"))) { %>
         <p style="color:red"> Credentials not recognized. </font> </p>
      <% } %>
      <% if(request.getAttribute("actionUrl") != null){ %>
        <form action="<%=request.getAttribute("actionUrl")%>" method="post">
      <% }else{ %>
        <form action="j_security_check" method="post">
      <% } %>
      <div id="userpass">
        <label for="username">Username</label><br>
        <input style="width:100%; border-radius: 3px;" name="j_username" type="text" id="username" autocapitalize="off" /><br>
        <label for="password">Password</label><br>
        <input style="width:100%; border-radius: 3px;" name="j_password" type="password" id="password" /><br>
      </div>  
        <button type="submit" value="Login" >Login</button><br>
      </form>
        <a href="https://shib-idp.geni.net/geni/reset.html">Reset password</a><br>
        <a href="https://shib-idp.geni.net/geni/request.html">Request account</a>
    </div>
    <div id="footer">
    <p style="font-size: .8em;">
    <a href="http://www.geni.net/">GENI</a> is sponsored by the
    <a href="http://www.nsf.gov/"><img src="<%= request.getContextPath()%>/images/nsf1.gif" alt="NSF Logo" height="16" width="16"/> National Science Foundation</a><br>
    NSF Award CNS-0714770</p>
    </div>
  </body>
</html>
