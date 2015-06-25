<%@ taglib uri="urn:mace:shibboleth:2.0:idp:ui" prefix="idpui" %>
<html>
  <head>
    <title>GENI Project Office Identity Provider - Login Page</title>
    <link rel="stylesheet" type="text/css" href="<%= request.getContextPath()%>/login.css"/>
  </head>

  <body id="homepage">
    <img src="<%= request.getContextPath()%>/images/geni.png" alt="GENI Logo"/>
    <h1>GENI Project Office Login</h1>
    <div class="loginbox">
       <div class="leftpane">
         <div class="content">
           <p>The web site described to the right has asked you to log in and you have chosen the GENI Project Office as your home institution.</p>
           <% if ("true".equals(request.getAttribute("loginFailed"))) { %>
              <p><font color="red"> Credentials not recognized. </font> </p>
           <% } %>
           <% if(request.getAttribute("actionUrl") != null){ %>
             <form action="<%=request.getAttribute("actionUrl")%>" method="post">
           <% }else{ %>
             <form action="j_security_check" method="post">
           <% } %>
           <table>
             <tr><td width="40%"><label for="username">Username:</label></td><td><input name="j_username" type="text" id="username" autocapitalize="off" /></td></tr>
             <tr><td><label for="password">Password:</label></td><td><input name="j_password" type="password" id="password" /></td></tr>
             <tr><td></td><td><button type="submit" value="Login" >Continue</button></td></tr>
	     <tr><td><a href="https://shib-idp.geni.net/geni/reset.html">Reset password</a></td><td></td></tr>
	     <tr><td><a href="https://shib-idp.geni.net/geni/request.html">Request account</a></td><td></td></tr>
	     <tr><td><a href="mailto:help@geni.net">Need help?</a></td><td></td></tr>
           </table></form>
         </div>
       </div>
       <div class="rightpane">
         <div class="content">
           <div id="spName"><idpui:serviceName/></div>
           <!-- pick the logo.  If its between 64 & max width/height display it
                If its too high but OK wide clip by height
                If its too wide clip by width.
                We should not clip by height and width since that skews the image.  Too high an image will just show the top.
            -->
           <idpui:serviceLogo  minWidth="64" minHeight="64" maxWidth="350" maxHeight="147" cssId="splogo">
              <idpui:serviceLogo  minWidth="64" minHeight="64" maxWidth="350" cssId="clippedsplogoY">
                  <idpui:serviceLogo  minWidth="64" minHeight="64" cssId="clippedsplogoX"/>
              </idpui:serviceLogo>
           </idpui:serviceLogo>
           <div id="spDescription">
             <idpui:serviceDescription>You have asked to login to <idpui:serviceName/></idpui:serviceDescription>
           </div>
         </div>
      </div>
    </div>
<div id="footer">
<div id="footer-right">
  Copyright &copy; 2014 Raytheon BBN Technologies<br>
  All Rights Reserved - NSF Award CNS-0714770<br>
  <a href="http://www.geni.net/">GENI</a> is sponsored by the <a href="http://www.nsf.gov/">National Science Foundation</a>
</div>
</div>
  </body>
</html>
