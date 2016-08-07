<!DOCTYPE html>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<html lang="en">
    <head>
        <title>create world</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!--        <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
                <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
                <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
                <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.2/css/font-awesome.min.css">
                <link rel="stylesheet" href="css/style.css" type="text/css" media="all" />-->


        <spring:url value="/resources/scripts/jquery-3.1.0.min.js" var="jQueryMinJS" />
        <spring:url value="/resources/css/bootstrap.min.css" var="bootstrapmainCss" />
        <spring:url value="/resources/scripts/jquery-ui.min.css" var="jQueryMinCSS" />
        <spring:url value="/resources/css/style.css" var="style" />
        <spring:url value="/resources/scripts/bootstrap.js" var="mainJs" />
        <spring:url value="/resources/scripts/bootstrap.min.js" var="bootstrapMinJs" />
        <spring:url value="/resources/scripts/validations.js" var="validation" />




        <script src="${jQueryMinJS}"></script>
        <link href="${bootstrapmainCss}" rel="stylesheet" />
        <link href="${jQueryMinCSS}" rel="stylesheet" />
        <link href="${style}" rel="stylesheet" />
        <script src="${mainJs}"></script>
        <script src="${bootstrapMinJs}"></script>
        <script src="${validation}"></script>







    </head>
    <body style="background-image:url('images/2.jpg')">
        <div class="container log-top">
            <div class="row ">
                <div class="col-md-6 col-sm-6">
                    <!--<img src="images/t6.jpg" class="img-responsive"/>-->
                </div>
                <form:form method="post" action="forgotPassword" commandName="LOGIN_DETAILS">
                    <div class="col-md-6 col-sm-6 ">
                        <div class="panel panel-default log">
                            <div class="panel-body">
                                <h3>FORGOT PASSWORD</h3>
                                <h4>Forgot your password ? Enter the email address of your account to reset your password,Otherwise you can <a href="./userLogin">try again</a></h4>
                                <div class="input-group">
                                    <span class="input-group-addon" ><i class="fa fa-envelope login-icon" aria-hidden="true"></i></span>
                                    <!--<input type="text" class="form-control" placeholder="Email ID" >-->
                                    <form:input path="userMailID" id="" class="form-control" placeholder="Email ID"/>
                                    <!--<input  type="submit" value="Reset" class="btn btn-success btn-sm form-control"/>-->
                                 </div><br>
                                <button class="btn btn-success btn-sm form-control"><b>Reset</b></button>
                            </div>
                        </div>
                    </div>
                </form:form> 
                <br>
                <br>
                <br>
                <a href="./postaJobSubmission">Post a Job</a>
                
                    <a href="./userLogin">login</a>
                    
                    
                    
                    
            </div>
        </div>
    </body>
</html>