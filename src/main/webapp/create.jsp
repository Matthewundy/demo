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
                                
                            <div class="row">
                                <label>Login:</label>
                                <input id="login" name="login" type="text" value="" />
                            </div>
                            <div class="row">
                                <label>Email Address:</label>
                                <input id="email" name="email" type="text" value="" />
                            </div>
                            <div class="row">
                                <label>First Name:</label>
                                <input id="firstName" name="firstName" type="text" value="" />
                            </div>
                            <div class="row">
                                <label>Last Name:</label>
                                <input id="lastName" name="lastName" type="text" value="" />
                            </div>
                            <div class="row">
                                <label>Password:</label>
                                <input id="password" name="password" type="password" />
                            </div>

				<input type="submit" value="Submit" />

                            </div>
                            


</form>

</div>
</body>
</html>

