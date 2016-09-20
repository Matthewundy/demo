<!DOCTYPE html>
<html>
<head>
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
<meta http-equiv="Expires" content="0" />
<meta http-equiv="Pragma" content="no-cache" />
<meta http-equiv="Cache-Control" content="no-cache" />
<title>Engie Login</title>
<link rel="stylesheet" href="style/4.css" />
</head>
<body>
<img src="images/engie-logo.png" title="engie" style="width:200px;height:70px" />
<h3>Federated Sign In</h3>
<p>Enter your username / email address</p>
<form action="/federation" method="post"> 

 <p><label>Email Address:</label></p>
 <p><input data-val="true" data-val-required="The Email field is required." id="UserName" name="UserName" type="text" value="" /></p>
 <p><input type="submit" value="Log In" /></p>
</form>
</body>
</html>
