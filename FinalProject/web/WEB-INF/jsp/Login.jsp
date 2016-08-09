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
        <spring:url value="/resources/scripts/jquery-3.1.0.min.js" var="jQueryMinJS" />
        <spring:url value="/resources/css/bootstrap.min.css" var="bootstrapmainCss" />
        <spring:url value="/resources/scripts/jquery-ui.min.css" var="jQueryMinCSS" />
        <spring:url value="/resources/css/style.css" var="style" />
        <spring:url value="/resources/scripts/bootstrap.js" var="mainJs" />
        <spring:url value="/resources/scripts/bootstrap.min.js" var="jqueryJs" />
        <spring:url value="/resources/scripts/validations.js" var="validation" />




        <script src="${jQueryMinJS}"></script>
        <link href="${bootstrapmainCss}" rel="stylesheet" />
        <link href="${jQueryMinCSS}" rel="stylesheet" />
        <link href="${style}" rel="stylesheet" />
        <script src="${mainJs}"></script>
        <script src="${jqueryJs}"></script>
        <script src="${validation}"></script>





    </head>
    <body style="background-image:url('images/2.jpg')">
        <!--<body>-->
        <div class="container log-top">
            <div class="row ">
                <div class="col-md-6 col-sm-6">
                    <div class="col-md-6 col-sm-6">
                        <div class="embed-responsive embed-responsive-16by9 "  >
                            <video class="video" controls="controls"  autoplay="autoplay" >
                                <!--<source src="video/life.mp4" type="video/mp4">-->
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
                                        <form:password path="password" id="" class="form-control" placeholder="password"/>
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
    </body>
</html>