<%@page import="java.util.Base64"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD XHTML 1.1//EN" "http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd">
<html>
<head>

    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <meta http-equiv="Expires" content="0" />
    <meta http-equiv="Pragma" content="no-cache" />
    <meta http-equiv="Cache-Control" content="no-cache" />

    <title>PRS - Log in</title>

    <link href="style/1.css" rel="stylesheet"/>

    <link href="style/2.css" rel="stylesheet"/>

    <link href="style/3.css" rel="stylesheet"/>

</head>
<body class="top" id="loginPage">
    <div id="siteWrap">
        <div id="mast">
            <a href="#" class="searchblock">
                <img alt="PRS - Home" title="PRS - Home" src="images/prs_logo_red.png" />
            </a>
            <div class="mainNavWrap">
                <ul class="mainNav loginNav">
                    <li class="first"><span>Login</span></li>
                </ul>
            </div>
        </div>
        <div id="main">
            


<!--[if IE 8]>
        <link rel="stylesheet" type="text/css" href="~/Stylesheets/ie8-styles.css" />
    <![endif]-->
<!--[if IE 7]>
    <link rel="stylesheet" type="text/css" href="~/Stylesheets/ie7-styles.css" />
<![endif]-->

<div class="cols1M1W">

    <div id="pageTitle" class="pageHeadline">
        <h1>Welcome to PRS</h1>
    </div>
    <div class="colM">
        <div class="controlWrap">
            <div class="controlText">
                <div class="controlHeadline">
                    <h3>
                    </h3>
                </div>
                <div class="controlElement">
                    <div class="text">
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="colW">


<form action="/login" method="post">            <div class="controlWrap">
                <div class="controlFormBlock welcomeLogin">
                    <div class="controlHeadline">
                        <h3>
                            <span>LOGIN</span>
                        </h3>
                    </div>
                    <div class="title">
                    </div>

                    <div class="validation-summary-errors">
                        <ul>
                            <li></li>
                        </ul>
                    </div>

                    <section id="loginForm">


                        <div class="loginFormItems">
                            <div class="validationArea">
                                
                                <span class="field-validation-valid vError" data-valmsg-for="UserName" data-valmsg-replace="true"></span>
                                <span class="field-validation-valid vError" data-valmsg-for="Password" data-valmsg-replace="true"></span>
                            </div>
                            <div class="row">
                                <label>Email Address:</label>
                                <input data-val="true" data-val-required="The Email field is required." id="UserName" name="UserName" type="text" value="" />
                            </div>
                            <div class="row">
                                <label>Password:</label>
                                <input data-val="true" data-val-required="The Password field is required." id="Password" name="Password" type="password" />
                            </div>

                            <div class="row rememberMeWrap">
                                <a GAAction="ResetPassword" GACategory="Account" GALabel="Forgot Password?" class="forgotPW" href="#">Forgot Password?</a>

                                <div class="rememberMe">
                                    <input id="btnLogin" type="submit" class="stdBtn submitBtn loginBtn" value="Log In &rsaquo;" gacategory="Log In" gaaction="Submit" galabel="Log In" />
                                    <span>
                                        <input data-val="true" data-val-required="The Remember Me field is required." id="RememberMe" name="RememberMe" type="checkbox" value="true" /><input name="RememberMe" type="hidden" value="false" />
                                        <label class="checkbox" for="RememberMe">Remember Me</label>
                                    </span>
                                    
                                </div>

                            </div>
                            
                            <div class="row altLogin">
                                <p><a href="federation.jsp">Federated Customer Log In (Option A)</a>&nbsp&nbsp
                                <a href="/federation">Federated Customer Log In (Option B)</a></p>
                                <p><a href="/create">Register New User</a></p>
                            </div>

                            <div class="row arrivingFrom">
                            </div>

                        </div>

                    </section>

                </div>
            </div>
</form>    </div>

</div>










        </div>
        <div class="push"></div>
    </div>

</body>
</html>

