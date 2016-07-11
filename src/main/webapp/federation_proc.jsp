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
<% if(request.getParameter("IdentityProvider").equals("Euromonitor-Customer-A")){
    String redirectURL = "https://euromonitorpoc-customer.oktapreview.com/app/euromonitorpoccustomer_federationtoeuromonitorokta_1/exk6mpfc66b7p4HCJ0h7/sso/saml?RelayState=https://euromonitorpoc.oktapreview.com/app/euromonitorpoc_euromonitorpassport_1/exk6mqdgvsyvhEIE20h7/sso/saml";
    response.sendRedirect(redirectURL);
}
%>
</body>
</html>
