<!DOCTYPE html>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="en">
    <head>
        <title>create world</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
        <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.2/css/font-awesome.min.css">
        <link rel="stylesheet" href="css/style.css" type="text/css" media="all" />
    </head>
    <body>
        <ul class="nav nav-pills " >
            <a href="login.jsp" ><button class="btn btn-info btn-sm pull-right login-bbbttn"><b>Login</b></button></a>
            <a href="joinus.jsp"><button class="btn btn-success btn-sm pull-right joinus-bbbttn"><b>Join Us</b></button></a>
            <li style="float:right;"><a href="#" ><i class="fa fa-commenting-o post-icon-clr" aria-hidden="true"></i></a></li>
            <li style="float:right;"><a href="#"><i class="fa fa-bell-o post-icon-clr1" aria-hidden="true"></i></a></li>
            <li style="float:right;"><a href="#"><i class="fa fa-play-circle-o post-icon-clr2" aria-hidden="true"></i></a></li>
            <li style="float:right;" class="dropdown">
                <a class="dropdown-toggle" data-toggle="dropdown" href="#" style="margin-right:-7px;"><i class="fa fa-envelope post-icon-clr4" aria-hidden="true" ></i>
                    <span class="caret" style="color:black"></span></a>
                <ul class="dropdown-menu">
                    <li><a href="#">Page 1-1</a></li>
                    <li><a href="#">Page 1-2</a></li>
                    <li><a href="#">Page 1-3</a></li> 
                </ul>
            </li>
            <li class="hidden-xs col-md-offset-9 col-md-3" style="float:right;">
                <div class="input-group" style="margin-top:5px;">
                    <input type="text" class="form-control" placeholder="search" aria-describedby="sizing-addon2">
                    <span class="input-group-addon" id="sizing-addon2">Go</span>
                </div>
            </li>
            <li ><img src="images/logo.png" width="120px" height="70px"/></li>
        </ul>

        <nav id="navbar-main" class="navbar navbar-default" style="background-color:#21ABCD;color:white;">
            <div class="container-fluid">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>                        
                    </button>

                </div>
                <div class="collapse navbar-collapse" id="myNavbar">
                    <ul class="nav navbar-nav ">
                        <li ><a href="index.jsp" id="clr">Home</a></li>
                        <li ><a href="myprofile.jsp" id="clr">Profile</a></li>
                        <li ><a href="myContact.jsp" id="clr">My Contact</a></li>
                        <li ><a href="#" id="clr">Find A job</a></li>
                        <li ><a href="post-a-job.jsp" id="clr">Post a job</a></li>
                        <li ><a href="refer-a-job.jsp" id="clr">Refer a job</a></li>
                        <li ><a href="success-stories.jsp" id="clr">Successful Stories</a></li>
                        <li ><a href="real-life.jsp" id="clr">Real Life Motivational</a></li>
                        <li ><a href="#" id="clr">Link</a></li>
                        <li ><a href="#" id="clr">Projects</a></li>
                        <li ><a href="#" id="clr" >Entertainment</a></li>
                    </ul>
                </div>
            </div>
        </nav>
        <div class="container"><!--container-->
            <div class="panel panel-default">
                <div class="panel-body">
                    <div class="row">
                        <div class="col-md-4 col-sm-6 col-xs-6">
                            <img src="images/logo.png" width="200px" height="150px" class="img-responsive post-image-box"/>
                        </div>
                        <div class="col-md-8 col-sm-6 col-xs-6">
                            <h1 class="hidden-xs"><b>Logo Design</b></h1>
                            <h4 class="visible-xs"><b>Logo Design</b></h4>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-8 col-sm-6">

                    <div class="panel panel-default">
                        <div class="panel-body">
                            <h4><b style="color:#FF6347;">Software Developer</b></p>
                                <h5>Renovate <i class="fa fa-star post-icon-clr3" aria-hidden="true"></i> <i class="fa fa-star post-icon-clr3" aria-hidden="true"></i><i class="fa fa-star post-icon-clr3" aria-hidden="true"></i><i class="fa fa-star" aria-hidden="true"></i><i class="fa fa-star" aria-hidden="true"></i>&nbsp;10,681 reviews - Hitech City,Mandhapur.</h5>
                                <p><b style="color:#7BD7E3;">Responsibilities</b></p>

                                <p class="words-clr-refer-apply">
                                    Design and develop HTML, CSS, Javascript and Ajax enabled web content for mobiles, touchpads and desktops
                                    Analyze and understand the design of existing web pages. Identify and implement changes to those existing web pages based on supplied requirements
                                    Develop client-side code for server interfaces and third-party service
                                    Work closely with web/user-experience designers and implement based on requirements
                                    Take ownership for the work assigned and develop, test, debug, deploy and support.
                                    Qualifications<p><br>

                                <p class="words-clr-refer-apply">BS degree or above in Computer Science, Engineering or related area
                                    Relevant industry experience (8+ years for senior engineer; 1 ? 8 years for others)
                                    A solid foundation in data structures, algorithms, and software design
                                    Expert knowledge of HTML, JSP, CSS, JavaScript, Ajax, JSON etc.
                                    Experience in working with Ember, Handlebars, Bootstrap
                                    Strong knowledge of DOM scripting and event handling using one or more JS frameworks.
                                    Deep experience designing modular, object-oriented JavaScript.
                                    Experience with server-side web frameworks such as JSP or ASP.Net, REST a plus
                                    Knowledge of Unix/Linux.</p><br>
                                <p class="words-clr-refer-apply">Experience with at least one software configuration management tool (Git, SVN, ClearCase, etc.)</p><br>

                                </div>
                                </div><!--5-->
                                </div>
                                <div class="col-md-4 col-sm-6">
                                    <div class="panel panel-default">
                                        <div class="panel-body">
                                            <img src="images/logo.png" class="img-responsive short-img-box" />
                                            <h4 class="txt-line">&nbsp;<a href="#">Renovatebio.com</a></h4>
                                            <span><i class="fa fa-star post-icon-clr3" aria-hidden="true"></i> <i class="fa fa-star post-icon-clr3" aria-hidden="true"></i><i class="fa fa-star post-icon-clr3" aria-hidden="true"></i><i class="fa fa-star" aria-hidden="true"></i><i class="fa fa-star " aria-hidden="true"></i>&nbsp;10,681 reviews - Hitech City,Mandhapur.</span><br>
                                            <p class="words-clr-refer-apply">What makes a great career? If you ask us, we?ll tell you that it?s the experience, the people and the sense of pride that comes from...</p>

                                        </div>
                                    </div>
                                    <h4><b>Post A Job</b></h4>
                                        <form:form method="post" action="postaJobSubmission" commandName="POSTAJOB_DETAILS">
                                    <div class="panel panel-default">
                                            <div class="panel-body">
                                                <form class="form-horizontal" role="form">
                                                    <div class="form-group">
                                                        <label class="control-label col-sm-4" >Name Of The Company:</label>
                                                        <div class="col-sm-8">
                                                            <!--<input type="text" class="form-control" placeholder="Company Name">-->
                                                            <form:input path="companyName" id="" class="form-control" placeholder="Company Name" />
                                                        </div>
                                                    </div>

                                                    <div class="form-group">
                                                        <label class="control-label col-sm-4">Description</label>
                                                        <div class="col-sm-8">
                                                            <form:input path="description" id="" class="form-control" placeholder="Company Name" />
                                                            <!--<textarea class="form-control"></textarea>-->
                                                        </div>
                                                    </div>
                                                </form>
                                                <button class="btn btn-success btn-sm post-bbttn pull-right">Submit</button>
                                                <!--<button class="btn btn-success btn-sm form-control">JOIN US</button>-->
                                            </div>
                                    </div>
                                        </form:form>
                                </div>
                        </div>
                    </div><!--container-->
                    <div class="container-fluid "><!--footer-->
                        <div class="row footer-clr">
                            <div class="col-md-2"></div>
                            <div class="col-md-3 col-sm-4">
                                <h4 style="color:#66CCFF;"><b>Contact Us</b></h4>
                                <h5><i class="fa fa-map-marker " aria-hidden="true"></i>&nbsp;Flat No-302,3rd Floor,Elite Residency</h5>
                                <h5><i class="fa fa-envelope  " aria-hidden="true"></i>&nbsp;admin@renovatebio.com</h5>
                                <h5><i class="fa fa-phone" aria-hidden="true"></i>&nbsp;040-29802955</h5>
                            </div>
                            <div class="col-md-2 col-sm-4">
                                <h4><b style="color:#66CCFF">Company</b></h4>
                                <p><a href="#" id="footer-text">About</a></p>
                                <p><a href="#" id="footer-text">Products</a></p>
                                <p><a href="#" id="footer-text">Blog</a></p>
                                <p><a href="#" id="footer-text">Contact</a></p>

                            </div>
                            <div class="col-md-3 col-sm-4" style="margin-bottom:5px;">
                                <h4 style="color:#66CCFF;"><b>About Us</b></h4>
                                <p>To be a enterprisingly successful company in Biologicals and bio-pharmaceutical chain. To be the best in quality, assistance and trust.</p>
                                <p>We intend to provide our customers with the best possible experience from beginning to end.</p>
                                <span><a href="#" ><i class="fa fa-facebook footer-icon-fb" aria-hidden="true"></i></a></span>
                                <span><a href="#" ><i class="fa fa-twitter footer-icon-twitter" aria-hidden="true"></i></a></span>
                                <span><a href="#" ><i class="fa fa-linkedin footer-icon-linkedin" aria-hidden="true"></i></a></span>
                                <span><a href="#"><i class="fa fa-google-plus footer-icon-google" aria-hidden="true"></i></a></span>
                                <span><a href="#" ><i class="fa fa-instagram footer-icon-instagram" aria-hidden="true"></i></a></span>
                            </div>
                            <div class="col-md-2"></div>
                        </div>

                    </div>
                    <div class="container-fluid" style="background-color:#21ABCD;" >
                        <ul class="nav nav-pills " >
                            <li style="float:right;"><a href="#" >  Terms & Conditions </a></li>
                            <li style="float:right;"><a href="#" > Privacy Policy </a></li>
                            <li style="float:right;"><a href="#" >About Us </a></li>
                            <li style="margin-top: 12px;color:white;"><b>© Copyright 2016 companyname Pvt Ltd</b></li>
                        </ul>

                    </div>
                    <!--footer-->
                    <script>
                        /*! Main */
                        jQuery(document).ready(function ($) {

                            // Fixa navbar ao ultrapassa-lo
                            var navbar = $('#navbar-main'),
                                    distance = navbar.offset().top,
                                    $window = $(window);

                            $window.scroll(function () {
                                if ($window.scrollTop() >= distance) {
                                    navbar.removeClass('navbar-fixed-top').addClass('navbar-fixed-top');
                                    $("body").css("padding-top", "70px");
                                } else {
                                    navbar.removeClass('navbar-fixed-top');
                                    $("body").css("padding-top", "0px");
                                }
                            });
                        });
                    </script>
                    </body>
                    </html>