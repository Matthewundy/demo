<%@page import="java.util.Base64"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD XHTML 1.1//EN" "http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd">
<html>
<head>

    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <meta http-equiv="Expires" content="0" />
    <meta http-equiv="Pragma" content="no-cache" />
    <meta http-equiv="Cache-Control" content="no-cache" />

    <title>Euromonitor International - Log in</title>

    <link href="style/1.css" rel="stylesheet"/>

    <link href="style/2.css" rel="stylesheet"/>

    <link href="style/3.css" rel="stylesheet"/>

</head>
<body class="top" id="loginPage">

    <div id="siteWrap">
        <div id="mast">
            <a href="#" class="searchblock">
                <img galabel="Home" gacategory="TopBanner" alt="Passport - Home" title="Passport - Home" cssclass="searchblock" id="PassportLogoImage" src="http://www.portal.euromonitor.com/Portal/Content/images/em-passport-logo.png" />
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
        <h1>Welcome to Passport</h1>
    </div>
    <div class="colM">
        <div class="controlWrap">
            <div class="controlText">
                <div class="controlHeadline">
                    <h3>
                        <span>FIND OUT MORE ABOUT PASSPORT</span>
                    </h3>
                </div>
                <div class="controlElement">
                    <div class="text">
                        <p>
                            <img src="http://www.portal.euromonitor.com/Portal/Images/fpo-map-300x55.png">
                        </p>
                        <p>Welcome to Passport, Euromonitor International's gateway to global strategic intelligence. Registering will provide you access to our award winning database and analysis tools to help you.</p>

                        <p>Go to Euromonitor.com to find out how you can register for Passport.</p>
                        <a href="http://www.euromonitor.com/contact-us" title="Visit Euromonitor.com" target="_blank">Visit Euromonitor.com</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="colW">


<form action="/portal/account/login" method="post">            <div class="controlWrap">
                <div class="controlFormBlock welcomeLogin">
                    <div class="controlHeadline">
                        <h3>
                            <span>Welcome <%= request.getAttribute("username") %></span>
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
                             
                             <textarea rows="20" cols="100">
                             	<%= request.getAttribute("saml") %>
                             </textarea>
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
    <div id="footerWrap">
        <div id="footer">
            <div class="emiLogo"><a href="http://www.euromonitor.com" target="_blank"><img src="http://www.portal.euromonitor.com/Portal/Images/logos/EMI-footerlogo.png" width="139" height="20" /></a></div>
            <ul class="footerLinks">
                <li><a GAAction="Privacy" GACategory="Policy" GALabel="Privacy Policy" href="#" target="_blank">Privacy Policy</a> | </li>
                <li><a GAAction="Cookie" GACategory="Policy" GALabel="Cookie Policy" href="#"" target="_blank">Cookie Policy</a> | </li>
                <li> &copy; Euromonitor International 2016 </li>
            </ul>
        </div>
    </div>

</body>
</html>

