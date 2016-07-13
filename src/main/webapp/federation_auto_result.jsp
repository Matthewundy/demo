<!DOCTYPE html>
<html>
<head>
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
<meta http-equiv="Expires" content="0" />
<meta http-equiv="Pragma" content="no-cache" />
<meta http-equiv="Cache-Control" content="no-cache" />
<title>Passport - Institution Login</title>
<link rel="stylesheet" href="style/4.css" />
<link rel="icon" href="http://www.portal.euromonitor.com/AthensGateway/Images/favicon.png" type="image/x-icon" />
</head>
<body>
<h3>DEBUG: Okta username: <%= request.getAttribute("username") %></h3>
<h3>DEBUG: Okta idp: <%= request.getAttribute("idp") %></h3>
<h3>DEBUG: IDP URL: <%= request.getAttribute("url") %></h3>
<h3>DEBUG: <a href="<%= request.getAttribute("url") %>">Login with Federation</a></h3>
</body>
</html>
