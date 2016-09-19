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
<body class="top" id="loginPage">
<img src="images/engie-logo.png" style="width:200px;height:70px" />
<form action="/create" method="post">            
                        <div class="loginFormItems">
                                
                                <p><label>Login:</label></p>
                                <p><input id="login" name="login" type="text" value="" /></p>
                                <p><label>Email Address:</label></p>
                                <p><input id="email" name="email" type="text" value="" /></p>
                                <p><label>First Name:</label></p>
                                <p><input id="firstName" name="firstName" type="text" value="" /></p>
                                <p><label>Last Name:</label></p>
                                <p><input id="lastName" name="lastName" type="text" value="" /></p>
                                <p><label>Password:</label></p>
                                <p><input id="password" name="password" type="password" /></p>
				<p><input type="submit" value="Submit" /></p>

                            </div>
                            


</form>

</div>
</body>
</html>

