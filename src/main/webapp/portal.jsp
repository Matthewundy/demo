<%@page import="java.util.Base64"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD XHTML 1.1//EN" "http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd">
<html>
<head>

    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <meta http-equiv="Expires" content="0" />
    <meta http-equiv="Pragma" content="no-cache" />
    <meta http-equiv="Cache-Control" content="no-cache" />

    <title>PRS</title>

    <link href="style/1.css" rel="stylesheet"/>

    <link href="style/2.css" rel="stylesheet"/>

    <link href="style/3.css" rel="stylesheet"/>

</head>
<body class="top" id="loginPage">

    <div id="siteWrap">
        <div id="mast">
            <a href="#" class="searchblock">
                <img galabel="Home" gacategory="TopBanner" alt="PRS - Home" title="PRS - Home" cssclass="searchblock" id="PassportLogoImage" src="images/prs_logo_red.png" />
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
                             
                             <textarea rows="30" cols="100">
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

</body>
</html>

