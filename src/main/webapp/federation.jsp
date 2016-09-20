<!DOCTYPE html>
<html>
<head>
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
<meta http-equiv="Expires" content="0" />
<meta http-equiv="Pragma" content="no-cache" />
<meta http-equiv="Cache-Control" content="no-cache" />
<title>Federated Login</title>
<link rel="stylesheet" href="style/4.css" />
</head>
<body>
<div class="site-wrapper">
<div id="header">
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
<option value="Engie-Customer-A">Engie Customer A</option>
<option value="Engie-Customer-B">Engie Customer B</option>
</select>
</div>
<input type="submit" value="Log In" />
</div>
</form>
<div class="row altLogin">
                                <a href="/portal">Username / Password Log In</a>
                            </div>
</div>
</body>
</html>
