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
<div class="site-wrapper">
<div id="header">
<div class="page-heading">Login</div>
</div>
<div id="main">
<h1 class="main-heading">Federated Customer Log In</h1>
<div class="error-messages"></div>
<p>Enter your username / email address</p>
<form action="/federation" method="post"> <div class="form-row">
<div class="form-input">

<section id="loginForm">


                        <div class="loginFormItems">
                            <div class="validationArea">

                                <span class="field-validation-valid vError" data-valmsg-for="UserName" data-valmsg-replace="true"></span>
                            </div>
                            <div class="row">
                                <label>Email Address:</label>
                                <input data-val="true" data-val-required="The Email field is required." id="UserName" name="UserName" type="text" value="" />
                            </div>






                            <div class="row arrivingFrom">
                            </div>

                        </div>

                    </section>


</div>
<input type="submit" value="Log In" />
</div>
</form>
<div class="row altLogin">
                                <a href="/portal">Username / Password Log In</a>
                            </div>
</div>
<div class="footer-push"></div>
</div>
</body>
</html>
