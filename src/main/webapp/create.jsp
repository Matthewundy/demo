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
                </div>
                <div class="controlElement">
                    <div class="text">
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="colW">


<form action="/create" method="post">            <div class="controlWrap">
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
                                
                            </div>
                            <div class="row">
                                <label>Login:</label>
                                <input data-val="true" data-val-required="The Login field is required." id="login" name="login" type="text" value="" />
                            </div>
                            <div class="row">
                                <label>Email Address:</label>
                                <input data-val="true" data-val-required="The Email field is required." id="email" name="email" type="text" value="" />
                            </div>
                            <div class="row">
                                <label>First Name:</label>
                                <input data-val="true" data-val-required="The First Name field is required." id="firstName" name="firstName" type="text" value="" />
                            </div>
                            <div class="row">
                                <label>Last Name:</label>
                                <input data-val="true" data-val-required="The Last Name field is required." id="lastName" name="lastName" type="text" value="" />
                            </div>
                            <div class="row">
                                <label>Password:</label>
                                <input data-val="true" data-val-required="The Password field is required." id="password" name="password" type="password" />
                            </div>



                                <div class="rememberMe">
                                    <input id="btnLogin" type="submit" class="stdBtn submitBtn loginBtn" value="Register &rsaquo;" gacategory="Log In" gaaction="Submit" galabel="Register" />
                                    </span>
                                    
                                </div>

                            </div>
                            
                            <div class="row altLogin">
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

