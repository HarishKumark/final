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
  <link rel="stylesheet" href="css/style.css" type="text/css" media="all" />
  <link rel="stylesheet" href="http://www.w3schools.com/lib/w3.css">
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
	<!--my profile-->
	<a href="#"><div class="profile-box"></div></a>
	<a href="#"><img src="images/pic2.jpg" class=" img-circle" width="100px" height="100px" style="margin-top: -63px; margin-left: 66px;"/></a><br><br>
	<div class="container">
		<div class="row">
			<div class="col-md-4 col-sm-4">
				<div class="panel panel-default profile-aboutme-clr">
					<div class="panel-body">
						<h3>About Me</h3>
						<p>I am a very simple card. I am good at containing small bits of information. I am convenient because I require little markup to use effectively.</p>
					</div>
				</div>
				<ul class="list-group">
					<li class="list-group-item"><i class="fa fa-briefcase profile-icon-clr" aria-hidden="true"></i>&nbsp;Project<span class="pull-right">ABC Name</span></li>
					<li class="list-group-item"><i class="fa fa-bar-chart profile-icon-clr" aria-hidden="true"></i>&nbsp;Skills<span class="pull-right">Web Designer</span></li>
				    <li class="list-group-item"><i class="fa fa-user-secret profile-icon-clr" aria-hidden="true"></i>&nbsp;Born in<span class="pull-right">Hyderbad</span></li>
					<li class="list-group-item"><i class="fa fa-calendar profile-icon-clr" aria-hidden="true"></i>&nbsp;Birth date<span class="pull-right">29 nov 1993</span></li>
				</ul>
				<h4><b style="color:#FF6347;">My Friends</b></h4>
				<!--<table class="w3-table-all">
					<tr>
					  <td class="col-md-3"><a href="#"><img src="images/pic1.jpg" class="img-responsive img-border" /></a>Radha</td>
					  <td class="col-md-3"><a href="#"><img src="images/pic2.jpg" class="img-responsive img-border" /></a>Renu</td>
					  <td class="col-md-3"><a href="#"><img src="images/pic4.jpg" class="img-responsive img-border" /></a>Rani</td>
					</tr>
					<tr>
					  <td class="col-md-3"><a href="#"><img src="images/pic1.jpg" class="img-responsive img-border" /></a>Komali</td>
					  <td class="col-md-3"><a href="#"><img src="images/pic1.jpg" class="img-responsive img-border" /></a>Raghu</td>
					  <td class="col-md-3"><a href="#"><img src="images/pic1.jpg" class="img-responsive img-border" /></a>Rakesha</td>
					</tr>
					<tr>
					  <td class="col-md-3"><a href="#"><img src="images/pic1.jpg" class="img-responsive img-border" /></a>Radha Kirshna</td>
					  <td class="col-md-3"><a href="#"><img src="images/pic1.jpg" class="img-responsive img-border" />Krishna</a></td>
					  <td class="col-md-3"><a href="#"><img src="images/pic1.jpg" class="img-responsive img-border" /></a>Raju</td>
					</tr>
					<tr>
					  <td class="col-md-3"><a href="#"><img src="images/pic1.jpg" class="img-responsive img-border" /></a>Ramya Krishna</td>
					  <td class="col-md-3"><a href="#"><img src="images/pic1.jpg" class="img-responsive img-border" /></a>Rajesha</td>
					  <td class="col-md-3"><a href="#"><img src="images/pic1.jpg" class="img-responsive img-border" /></a>Rahul</td>
					</tr>
				</table>-->
				<table class="w3-table w3-border">
				<tbody>
				  <tr>
					<td class="col-md-4"><a href="#" id="text-remve"><img src="images/contact-pic1.png" class="img-responsive img-border "/><span class="img-hvr">Renu</span></a></td>
					<td class="col-md-4"><a href="#" id="text-remve"><img src="images/contact-pic2.png" class="img-responsive img-border"/><span class="img-hvr">Renu</span></a></td>
					<td class="col-md-4"><a href="#" id="text-remve"><img src="images/pic2.jpg" class="img-responsive img-border"/><span class="img-hvr">Renu</span></a></td>
				  </tr>
				  <tr>
					<td class="col-md-4"><a href="#" id="text-remve"><img src="images/pic3.jpg" class="img-responsive img-border"/><span class="img-hvr">Renu</span></a></td>
					<td class="col-md-4"><a href="#" id="text-remve"><img src="images/pic4.jpg" class="img-responsive img-border"/><span class="img-hvr">Renu</span></a></td>
					<td class="col-md-4"><a href="#" id="text-remve"><img src="images/pic5.jpg" class="img-responsive img-border"/><span class="img-hvr">Renu</span></a></td>
				  </tr>
				  <tr>
					<td class="col-md-4"><a href="#" id="text-remve"><img src="images/pic1.jpg" class="img-responsive img-border"/><span class="img-hvr">Renu</span></a></td>
					<td class="col-md-4"><a href="#" id="text-remve"><img src="images/pic2.jpg" class="img-responsive img-border"/><span class="img-hvr">Renu</span></a></td>
					<td class="col-md-4"><a href="#" id="text-remve"><img src="images/pic4.jpg" class="img-responsive img-border"/><span class="img-hvr">Renu</span></a></td>
				  </tr>
				</tbody>
			</table>
			</div><!--col-4-->
			<div class="col-md-8 col-sm-8">
				<div class="panel panel-default">
					<div class="panel-body">
						<div class="w3-row">
						  <a href="#" onclick="openCity(event, 'Status');">
							<div class="w3-third tablink w3-bottombar w3-hover-light-grey w3-padding "><i class="fa fa-pencil-square-o" aria-hidden="true"></i>&nbsp;Update Status</div>
						  </a>
						  <a href="#" onclick="openCity(event, 'Photos');">
							<div class="w3-third tablink w3-bottombar w3-hover-light-grey w3-padding"><i class="fa fa-picture-o" aria-hidden="true"></i>&nbsp;Add Photos/Videos</div>
						  </a>
						  <a href="#" onclick="openCity(event, 'Album');">
							<div class="w3-third tablink w3-bottombar w3-hover-light-grey w3-padding"><i class="fa fa-film" aria-hidden="true"></i>&nbsp;Create Album</div>
						  </a>
						</div>
							<br>
						<div id="Status" class="w3-container city "><!--Status-->
							<div class="row">
								<div class="col-md-2 col-sm-3"><img src="images/pic2.jpg" class=" img-circle" width="60px" height="60px"  /></div>	
								<div class="col-md-10 col-sm-9">
									<p>What's on your mind?</p>
									<input class="w3-input" type="text"><br>
									<button class="btn btn-danger btn-sm pull-right" style="margin-left:5px">Post</button>
									<div class="btn-group pull-right">
									  <button type="button" class="btn btn-danger btn-sm   dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
										<i class="fa fa-users" aria-hidden="true"></i>&nbsp;Public <span class="caret"></span>
									  </button>
									  <ul class="dropdown-menu">
										<li><a href="#"><i class="fa fa-users" aria-hidden="true"></i>&nbsp;Public</a></li>
										<li><a href="#"><i class="fa fa-female" aria-hidden="true"></i>&nbsp;My Friends</a></li>
										<li><a href="#"><i class="fa fa-lock" aria-hidden="true"></i>&nbsp;Only Me</a></li>
									  </ul>
									</div>
									
								</div>
							</div>
						</div><!--Status end-->

						<div id="Photos" class="w3-container city"><!--Photos-->
							<div class="row">
								<div class="col-md-2 col-sm-3"><img src="images/pic2.jpg" class=" img-circle" width="60px" height="60px"  /></div>	
								<div class="col-md-10 col-sm-9">
									<input type="file">
									<button class="btn btn-danger btn-sm pull-right" style="margin-left:5px">Post</button>
									<div class="btn-group pull-right">
									  <button type="button" class="btn btn-danger btn-sm   dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
										<i class="fa fa-users" aria-hidden="true"></i>&nbsp;Public <span class="caret"></span>
									  </button>
									  <ul class="dropdown-menu">
										<li><a href="#"><i class="fa fa-users" aria-hidden="true"></i>&nbsp;Public</a></li>
										<li><a href="#"><i class="fa fa-female" aria-hidden="true"></i>&nbsp;My Friends</a></li>
										<li><a href="#"><i class="fa fa-lock" aria-hidden="true"></i>&nbsp;Only Me</a></li>
									  </ul>
									</div>
									
								</div>
							</div>
						</div><!--Photos end-->
						<div id="Album" class="w3-container city"><!-- Album-->
						  <div class="row">
								<div class="col-md-2 col-sm-3"><img src="images/pic2.jpg" class=" img-circle" width="60px" height="60px"  /></div>	
								<div class="col-md-10 col-sm-9">
									<input type="file">
									<button class="btn btn-danger btn-sm pull-right" style="margin-left:5px">Post</button>
									<div class="btn-group pull-right">
									  <button type="button" class="btn btn-danger btn-sm   dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
										<i class="fa fa-users" aria-hidden="true"></i>&nbsp;Public <span class="caret"></span>
									  </button>
									  <ul class="dropdown-menu">
										<li><a href="#"><i class="fa fa-users" aria-hidden="true"></i>&nbsp;Public</a></li>
										<li><a href="#"><i class="fa fa-female" aria-hidden="true"></i>&nbsp;My Friends</a></li>
										<li><a href="#"><i class="fa fa-lock" aria-hidden="true"></i>&nbsp;Only Me</a></li>
									  </ul>
									</div>
									
								</div>
						</div>
						</div><!-- Album-->
						<script>
							function openCity(evt, cityName) {
							  var i, x, tablinks;
							  x = document.getElementsByClassName("city");
							  for (i = 0; i < x.length; i++) {
								 x[i].style.display = "none";
							  }
							  tablinks = document.getElementsByClassName("tablink");
							  for (i = 0; i < x.length; i++) {
								 tablinks[i].className = tablinks[i].className.replace(" w3-border-red", "");
							  }
							  document.getElementById(cityName).style.display = "block";
							  evt.currentTarget.firstElementChild.className += " w3-border-red";
							}
						</script>
					</div>
				</div>
				<div class="row"><!--sub row-->
					<div class="col-md-6 col-sm-6">
						<div class="panel panel-default">
							<div class="panel-heading">
								<div class="row">
									<div class="col-md-2 col-sm-3 col-xs-4"><img src="images/pic2.jpg" class=" img-circle" width="60px" height="60px"  /></div>
									<div class="col-md-10 col-sm-9 col-xs-8"><b>Renu</b><br><small style="color:gray;">Shared publicly - 26 Jun 2015</small></div>
								</div>
							</div>
							<div class="panel-body">
								<div class="embed-responsive embed-responsive-16by9 ">
									<video class="video" controls="controls"  >
									  <source src="video/change-life.mp4" type="video/mp4">
									  <source src="video/change-life .mp4" type="video/ogg">
									  Your browser does not support HTML5 video.
									</video>
								</div>
							</div>
							<div class="panel-footer">
								<a href="#" class="pull-right" style="margin-top: -10px;"><i class="fa fa-share-alt" aria-hidden="true"></i></a>
								<a href="#" class="pull-right" style="margin-top: -10px;margin-right:11px"><i class="fa fa-thumbs-o-up" aria-hidden="true"></i></a>
							</div>
						</div>
						
					</div>
					<div class="col-md-6 col-sm-6">
						<div class="panel panel-default">
							<div class="panel-heading">
								<div class="row">
									<div class="col-md-2 col-sm-3 col-xs-4"><img src="images/pic2.jpg" class=" img-circle" width="60px" height="60px"  /></div>
									<div class="col-md-10 col-sm-9 col-xs-8"><b>Renu</b><br><small style="color:gray;">Shared publicly - 26 Jun 2015</small></div>
								</div>
							</div>
							<div class="panel-body">
								<div class="embed-responsive embed-responsive-16by9 ">
									<video class="video" controls="controls"  >
									  <source src="video/change-life.mp4" type="video/mp4">
									  <source src="video/change-life .mp4" type="video/ogg">
									  Your browser does not support HTML5 video.
									</video>
								</div>
							</div>
							<div class="panel-footer">
								<a href="#" class="pull-right" style="margin-top: -10px;"><i class="fa fa-share-alt" aria-hidden="true"></i></a>
								<a href="#" class="pull-right" style="margin-top: -10px;margin-right:11px"><i class="fa fa-thumbs-o-up" aria-hidden="true"></i></a>
							</div>
						</div>
					</div>
				</div><!--sub row end-->
				<div class="panel panel-default">
					<div class="panel-heading">
						<div class="row">
							<div class="col-md-2 col-sm-3 col-xs-4"><img src="images/pic2.jpg" class=" img-circle" width="60px" height="60px"  /></div>
							<div class="col-md-10 col-sm-9 col-xs-8"><b>Renu</b>&nbsp;updated her cover photo<br><small style="color:gray;">Shared publicly - 26 Jun 2015</small></div>
						</div>
					</div>
					<div class="panel-body"><img src="images/profile-pic1.jpg" class="img-responsive"/></div>
					<div class="panel-footer">
						<a href="#"><i class="fa fa-share-alt" aria-hidden="true"></i>&nbsp;Share</a>&nbsp;&nbsp;
						<a href="#" ><i class="fa fa-thumbs-o-up" aria-hidden="true"></i>&nbsp;Like</a>
						<div class="row">
							<div class="col-md-2 col-sm-3 col-xs-4"><img src="images/pic2.jpg" class=" img-circle" width="40px" height="40px"  /></div>
							<div class="col-md-10 col-sm-9 col-xs-8"><input type="text" class="form-control" placeholder="Comments"/></div>
						</div>
						
					</div>
				</div>
				<div class="panel panel-default">
					<div class="panel-heading">
						<div class="row">
							<div class="col-md-2 col-sm-3 col-xs-4"><img src="images/pic2.jpg" class=" img-circle" width="60px" height="60px"  /></div>
							<div class="col-md-10 col-sm-9 col-xs-8"><b>Renu</b>&nbsp;updated her cover photo<br><small style="color:gray;">Shared publicly - 26 Jun 2015</small></div>
						</div>
					</div>
					<div class="panel-body"><img src="images/pic2.jpg" class="img-responsive"/></div>
					<div class="panel-footer">
						<a href="#"><i class="fa fa-share-alt" aria-hidden="true"></i>&nbsp;Share</a>&nbsp;&nbsp;
						<a href="#" ><i class="fa fa-thumbs-o-up" aria-hidden="true"></i>&nbsp;Like</a>
						<div class="row">
							<div class="col-md-2 col-sm-3 col-xs-4"><img src="images/pic2.jpg" class=" img-circle" width="40px" height="40px"  /></div>
							<div class="col-md-10 col-sm-9 col-xs-8"><input type="text" class="form-control" placeholder="Comments"/></div>
						</div>
						
					</div>
				</div>
			</div><!--col-8-->
		</div><!--row-->
	</div><!--container end-->
	<!--my profile end-->
	<br>
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
jQuery(document).ready(function($) {
  
    // Fixa navbar ao ultrapassa-lo
    var navbar = $('#navbar-main'),
    		distance = navbar.offset().top,
        $window = $(window);

    $window.scroll(function() {
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
<style>
.city {display:none;}
</style>
</body>
</html>