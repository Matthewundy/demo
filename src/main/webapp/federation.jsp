<!DOCTYPE html>
<html>
<head>
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
<meta http-equiv="Expires" content="0" />
<meta http-equiv="Pragma" content="no-cache" />
<meta http-equiv="Cache-Control" content="no-cache" />
<title>Federated Login</title>
<link rel="stylesheet" href="style/engie.css" />
</head>
<body>
<img src="images/engie-logo.png" title="engie" style="width:200px;height:70px" />
<h3>Federated Sign-In</h3>
<form action="federation_proc.jsp" method="post">
<p><label>Select Organisation</label></p>
<p><select id="IdentityProvider" name="IdentityProvider" style="width:200px">
<option value="">Select...</option>
<option value="Engie-Unit-A">Engie Unit A</option>
<option value="Engie-Unit-B">Engie Unit B</option>
</select></p>
<p><input type="submit" value="Log In" /></p>
</form>
<p><a href="/portal">Username / Password Log In</a></p>
</body>
</html>
