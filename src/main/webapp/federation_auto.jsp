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
<div class="site-wrapper">
<div id="header">
<div class="logo"><img src="http://www.portal.euromonitor.com/AthensGateway/Images/logo.png" /></div>
<div class="page-heading">Login</div>
</div>
<div id="main">
<h1 class="main-heading">Federated Customer Log In</h1>
<div class="error-messages"></div>
<p>Which organisation would you like to log in with?</p>
<form action="federation_proc.jsp" method="post"> <div class="form-row">
<label>Organisation</label>
<div class="form-input">
<select id="IdentityProvider" name="IdentityProvider"><option value="">Select...</option>
<option value="Euromonitor-Customer-A">Euromonitor Customer A</option>
<option value="Euromonitor-Customer-B">Euromonitor Customer B</option>
</select>
</div>
<input type="submit" value="Log In" />
</div>
</form>
<div class="row altLogin">
                                <a href="login.jsp">Username / Password Log In</a>
                            </div>
</div>
<div class="footer-push"></div>
</div>
<div id="footer">
<div class="footer-logo"><a href="http://www.euromonitor.com" target="_blank"><img src="http://www.portal.euromonitor.com/AthensGateway/Images/emi-logo.png" /></a></div>
<ul class="footer-links">
<li><a GAAction="Privacy" GACategory="Policy" GALabel="Privacy Policy" href="/AthensGateway/Policy/Privacy" target="_blank">Privacy Policy</a> | </li>
<li><a GAAction="Cookie" GACategory="Policy" GALabel="Cookie Policy" href="/AthensGateway/Policy/Cookie" target="_blank">Cookie Policy</a> | </li>
<li class="printCopyright"> &copy; Euromonitor International 2016 </li>
</ul>
</div>
</body>
</html>