<%@page import="java.util.Base64"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD XHTML 1.1//EN" "http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd">
<html>
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <meta http-equiv="Expires" content="0" />
    <meta http-equiv="Pragma" content="no-cache" />
    <meta http-equiv="Cache-Control" content="no-cache" />
    <title>Engie - Log in</title>
    <link href="style/engie.css" rel="stylesheet"/>
</head>
<body>
  <img alt="engie" title="engie" src="images/engie-logo.png" style="width:200px;height:70px" />
  <form action="/login" method="post">
<input type="hidden" name="fromURI" value="<%= request.getParameter("fromURI") %>" />
    <p><label>Email Address</label></p>
    <p><input id="UserName" name="UserName" type="text" value="" /></p>
    <p><label>Password:</label></p>
    <p><input id="Password" name="Password" type="password" /></p>
    <p><input type="submit" value="submit" /></p>
  </form>
</body>
</html>

