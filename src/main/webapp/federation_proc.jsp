<!DOCTYPE html>
<html>
<head>
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
<meta http-equiv="Expires" content="0" />
<meta http-equiv="Pragma" content="no-cache" />
<meta http-equiv="Cache-Control" content="no-cache" />
<title>Passport - Institution Login</title>
<link rel="stylesheet" href="style/4.css" />
</head>
<body>
<%
if(request.getParameter("IdentityProvider").equals("Engie-Customer-A")){
String redirectURL = "https://prs-poc-customer.oktapreview.com/home/bookmark/0oa6wjidi9JJlZYb20h7/1280";
response.sendRedirect(redirectURL);
}

if(request.getParameter("IdentityProvider").equals("Engie-Customer-B")){
String redirectURL = "https://prs-poc-customerb.oktapreview.com/home/bookmark/0oa6wxkuvt5jJfSMG0h7/1280";
response.sendRedirect(redirectURL);
}

%>
</body>
</html>
