<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <title>create world</title>
        <meta name="viewport" content="width=device-width, initial-scale=1" charset="utf-8">
        <spring:url value="/resources/css/bootstrap-theme.min.css" var="bootstrap_theme_min_css"/>
        <spring:url value="/resources/css/bootstrap.min.css" var="bootstrap_min_css"/>
        <spring:url value="/resources/css/style.css" var="style_css"/>

        <spring:url value="/resources/scripts/jquery-3.1.0.min.js" var="mainJquery_js"/>
        <spring:url value="/resources/scripts/jquery-ui.min.js" var="jqueryUI_js"/>
        <spring:url value="/resources/scripts/bootstrap.min.js" var="bootstrap_js"/>
        <spring:url value="/resources/scripts/registrationValidations.js" var="registrationScript_js"/>
        <spring:url value="/resources/images/" var="images_folder"/>

        <link rel="stylesheet" href="${bootstrap_min_css}">
        <link rel="stylesheet" href="${style_css}" type="text/css" media="all"/>

        <script type="text/javascript" src="${mainJquery_js}"></script>
        <script type="text/javascript" src="${bootstrap_js}"></script>
        <script type="text/javascript" src="${registrationScript_js}"></script>

        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.2/css/font-awesome.min.css">
        <style>
            .borderClass{
                border:1px solid red;
            }
        </style>
    </head>
    <body >
        <div class="container log-top">
            <div class="row ">
                <div class="col-md-6 col-sm-6" >
                    <div class="css-carousel" >
                        <img class="css-img" src="${images_folder}/t1.jpg" class="img-responsive"/>
                        <img class="css-img" src="${images_folder}/t2.jpg" class="img-responsive"/>
                        <img class="css-img" src="${images_folder}/t3.jpg" class="img-responsive"/>
                        <img class="css-img" src="${images_folder}/t4.jpg" class="img-responsive"/>
                        <img class="css-img" src="${images_folder}/t5.jpg" class="img-responsive"/>
                        <img class="css-img" src="${images_folder}/t.jpg" class="img-responsive"/>
                    </div>
                </div>
                <div class="col-md-6 col-sm-6 ">
                    <div class="panel panel-default log">
                        <div class="panel-body">
                            <h3>JOIN US</h3>
                            <form:form method="post" action="userregistration" commandName="USER_DETAILS">
                                <div>${ERROR_MSG}</div>
                                <div class="input-group">
                                    <span class="input-group-addon" ><i class="fa fa-user login-icon" aria-hidden="true"></i></span>
                                    <!--<input type="text" class="form-control" placeholder="FirstName" >-->
                                    <form:input path="userName" id="userFirstNameID" class="form-control" placeholder="FirstName" maxlength="15"/>
                                </div>
                                <span id="firstNameErrorMsg" style="color: red;padding-left: 320px;"></span>
                                <br>
                                <div class="input-group">
                                    <span class="input-group-addon" ><i class="fa fa-user login-icon" aria-hidden="true"></i></span>
                                    <!--<input type="text" class="form-control" placeholder="LastName" >-->
                                    <form:input path="lastName" id="userLastNameID" class="form-control" placeholder="LastName" maxlength="15"/>
                                </div>
                                 <span id="lastNameErrorMsg" style="color: red;padding-left: 320px;"></span>
                                 <br>
                                <div class="input-group">
                                    <span class="input-group-addon" ><i class="fa fa-phone login-icon" aria-hidden="true"></i></span>
                                    <!--<input type="text" class="form-control" placeholder="Phone Number" >-->
                                    <form:input path="phoneNumber" id="userMbleNumID" class="form-control" placeholder="Phone Number" maxlength="10" onkeypress="return isNumber(event);"/>
                                </div>
                                 <span id="mbleNumErrorMsg" style="color: red;padding-left: 320px;"></span>
                                 <br>
                                <div class="input-group">
                                    <span class="input-group-addon" ><i class="fa fa-envelope login-icon" aria-hidden="true"></i></span>
                                    <!--<input type="text" class="form-control" placeholder="Email ID" >-->
                                    <form:input path="userMailID" id="userEmailID" class="form-control" placeholder="Email ID" maxlength="30"/>
                                </div>
                                <span id="userEmailIDErrorMsg" style="color: red;padding-left: 320px;"></span>
                                <br>
                                <div class="input-group">
                                    <span class="input-group-addon" ><i class="fa fa-lock login-icon" aria-hidden="true"></i></span>
                                        <form:password path="password" id="userPwdID" class="form-control" placeholder="password" maxlength="10"/>
                                </div>
                                <span id="userPwdErrorMsg" style="color: red;padding-left: 320px;"></span>
                                <br>
                                <button class="btn btn-success btn-sm form-control" id="joinBtn">JOIN US</button>
                            </form:form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>