<%-- 
    Document   : Login
    Created on : Aug 6, 2016, 3:36:48 PM
    Author     : lenovo
--%>

<!DOCTYPE html>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>create world</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <spring:url value="/resources/css/bootstrap-theme.min.css" var="bootstrap_theme_min_css"/>
        <spring:url value="/resources/css/bootstrap.min.css" var="bootstrap_min_css"/>
        <spring:url value="/resources/css/style.css" var="style_css"/>

        <spring:url value="/resources/scripts/jquery-3.1.0.min.js" var="mainJquery_js"/>
        <spring:url value="/resources/scripts/jquery-ui.min.js" var="jqueryUI_js"/>
        <spring:url value="/resources/scripts/bootstrap.min.js" var="bootstrap_js"/>
        <%--<spring:url value="/resources/scripts/registrationValidations.js" var="registrationScript_js"/>--%>
        <spring:url value="/resources/images/" var="images_folder"/>
        <spring:url value="/resources/videos/" var="videos_folder"/>

        <link rel="stylesheet" href="${bootstrap_min_css}">
        <link rel="stylesheet" href="${style_css}" type="text/css" media="all"/>

        <script type="text/javascript" src="${mainJquery_js}"></script>
        <script type="text/javascript" src="${bootstrap_js}"></script>
        <!--<script type="text/javascript" src="${registrationScript_js}"></script>-->

        <!--<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.2/css/font-awesome.min.css">-->





    </head>
    <!--<body style="background-image:url('images/2.jpg')">-->
    <body class="css-img" style="background-image:url('${images_folder}/2.jpg')" class="img-responsive">
                    <!--<img class="css-img" src="${images_folder}/2.jpg" class="img-responsive"/>-->
        <!--<body>-->
        <div class="container log-top">
            <div class="row ">
                <div class="col-md-6 col-sm-6">
                    <div class="col-md-6 col-sm-6">
                        <div class="embed-responsive embed-responsive-16by9 "  >
                            <video class="video" controls="controls"  autoplay="autoplay" >
                                <!--<source src="${videos_folder}/life.mp4" type="video/mp4">-->
                                <source src="${videos_folder}/change-life.mp4" type="video/mp4">
                                <!--<source src="video/life .mp4" type="video/ogg">-->
                                Your browser does not support HTML5 video.
                            </video>
                        </div>
                    </div>
                    <div class="col-md-6 col-sm-6 ">
                        <div class="panel panel-default log">
                            <div class="panel-body">
                                <h3>MEMBER LOGIN</h3>
                                <form:form method="post" action="userLogin" commandName="USER_DETAILS">
                                    <div>${ERROR_MSG}</div>
                                    <div class="input-group">
                                        <span class="input-group-addon" ><i class="fa fa-user login-icon" aria-hidden="true"></i></span>
                                        <!--<input type="text" class="form-control" placeholder="Email ID,Mobile No" >-->
                                        <form:input path="userMailID" id="" class="form-control" placeholder="Email ID"/>
                                    </div><br>
                                    <div class="input-group">
                                        <span class="input-group-addon" ><i class="fa fa-lock login-icon" aria-hidden="true"></i></span>
                                        <!--<input type="text" class="form-control" placeholder="password">-->
                                        <form:password path="password" id="" class="form-control" placeholder="Password"/>
                                    </div><br>
                                    <!--<button class="btn btn-info btn-sm form-control"><h5>Login</h5></button>-->
                                    <input type="submit" id="Login" value="Login*" class="btn btn-info btn-sm form-control"/>
                                    <h4 style="text-align:center"><a href="joinus.jsp">JOIN US</a></h4>
                                    <h4 style="text-align:center"><a href="forgotPassword" id="line-remove">Forgot Password</a></h4>    
                                </form:form>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>