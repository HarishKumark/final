<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <title>create world</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
        <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.2/css/font-awesome.min.css">
        <link rel="stylesheet" href="../css/style.css" type="text/css" media="all" />
    </head>
    <body >
        ${pageContext.request.contextPath}
        <img src="/WEB-INF/images/t1.jpg"/>
        <div class="container log-top">
            <div class="row ">
                <div class="col-md-6 col-sm-6" >
                    <div class="css-carousel" >
                        <img class="css-img" src="FinalProject/images/t1.jpg" class="img-responsive"/>
                        <!--<img class="css-img" src="/resources/images/t2.jpg" class="img-responsive"/>-->
                        <!--<img class="css-img" src="../images/t3.jpg" class="img-responsive"/>-->
                        <!--<img class="css-img" src="/images/t4.jpg" class="img-responsive"/>-->
                        <!--<img class="css-img" src="../images/t5.jpg" class="img-responsive"/>-->
                        <!--<img class="css-img" src="../images/t.jpg" class="img-responsive"/>-->
                    </div>
                </div>
                <div class="col-md-6 col-sm-6 ">
                    <div class="panel panel-default log">
                        <div class="panel-body">
                            <h3>JOIN US</h3>
                            <form:form method="post" action="userregistration" commandName="USER_DETAILS">
                                <div class="input-group">
                                    <span class="input-group-addon" ><i class="fa fa-user login-icon" aria-hidden="true"></i></span>
                                    <!--<input type="text" class="form-control" placeholder="FirstName" >-->
                                    <form:input path="userName" id="" class="form-control" placeholder="FirstName"/>
                                </div><br>
                                <div class="input-group">
                                    <span class="input-group-addon" ><i class="fa fa-user login-icon" aria-hidden="true"></i></span>
                                    <!--<input type="text" class="form-control" placeholder="LastName" >-->
                                    <form:input path="lastName" id="" class="form-control" placeholder="LastName"/>
                                </div><br>
                                <div class="input-group">
                                    <span class="input-group-addon" ><i class="fa fa-phone login-icon" aria-hidden="true"></i></span>
                                    <!--<input type="text" class="form-control" placeholder="Phone Number" >-->
                                    <form:input path="phoneNumber" id="" class="form-control" placeholder="Phone Number"/>
                                </div><br>
                                <div class="input-group">
                                    <span class="input-group-addon" ><i class="fa fa-envelope login-icon" aria-hidden="true"></i></span>
                                    <!--<input type="text" class="form-control" placeholder="Email ID" >-->
                                     <form:input path="userMailID" id="" class="form-control" placeholder="Email ID"/>
                                </div><br>
                                <div class="input-group">
                                    <span class="input-group-addon" ><i class="fa fa-lock login-icon" aria-hidden="true"></i></span>
                                    <form:password path="password" id="" class="form-control" placeholder="password"/>
                                </div><br>
                                <button class="btn btn-success btn-sm form-control">JOIN US</button>
                            </form:form>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>