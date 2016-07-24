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
if(request.getParameter("IdentityProvider").equals("PRS-Customer-A")){
String redirectURL = "https://prs-poc-customer.oktapreview.com/home/bookmark/0oa6wjidi9JJlZYb20h7/1280";
response.sendRedirect(redirectURL);
}

if(request.getParameter("IdentityProvider").equals("PRS-Customer-B")){
String redirectURL = "https://fs.demo-iam.com/adfs/ls/IdpInitiatedSignOn.aspx?RelayState=https%3A%2F%2Feuromonitorpoc.oktapreview.com%2Fapp%2Feuromonitorpoc_euromonitorpassport_1%2Fexk6mqdgvsyvhEIE20h7%2Fsso%2Fsaml";
response.sendRedirect(redirectURL);
}

%>
</body>
</html>
