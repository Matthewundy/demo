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
  <img alt="engie" title="engie" src="images/engie-logo.png" />
  <form action="/login" method="post">
    <label>Email Address:</label>
    <input id="UserName" name="UserName" type="text" value="" />
    <label>Password:</label>
    <input id="Password" name="Password" type="password" />
    <input type="submit" value="submit" />
  </form>
</body>
</html>

