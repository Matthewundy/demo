<%@page import="java.util.Base64"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD XHTML 1.1//EN" "http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd">
<html>
<head>

    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <meta http-equiv="Expires" content="0" />
    <meta http-equiv="Pragma" content="no-cache" />
    <meta http-equiv="Cache-Control" content="no-cache" />
    <title>Engie</title>
    <link href="style/engie.css" rel="stylesheet"/>
</head>
<body class="top" id="loginPage">

                <img alt="Engie - Home" title="Engie - Home" src="images/engie-logo.png" style="width:200px;height:70px" />
        <div id="main">
            


<div class="cols1M1W">

    <div id="pageTitle" class="pageHeadline">
        <h3>ID Token</h3>
    </div>
    <div class="colW">


<form action="/portal/account/login" method="post">            <div class="controlWrap">
                <div class="controlFormBlock welcomeLogin">
                    <div class="controlHeadline">
                    </div>
                    <div class="title">
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

