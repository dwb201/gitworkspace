<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
	<link rel="favicon" href="assets/images/favicon.png">
	
	<link rel="stylesheet" href="assets/css/bootstrap.min.css">
	<link rel="stylesheet" href="assets/css/font-awesome.min.css"> 
	<link rel="stylesheet" href="assets/css/bootstrap-theme.css" media="screen"> 
	<link rel="stylesheet" href="assets/css/style.css">
    <link rel='stylesheet' id='camera-css'  href='assets/css/camera.css' type='text/css' media='all'> 
    <link rel="stylesheet" href="css/jquery-ui.theme.min.css" type="text/css" />
    <link rel="stylesheet" href="css/jquery-ui.min.css" type="text/css" />
    <link rel="stylesheet" href="css/jquery-ui.structure.min.css" type="text/css" />
    <link rel="stylesheet" href="css/style.css" type="text/css" />
	<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
	<!--[if lt IE 9]>
	<script src="assets/js/html5shiv.js"></script>
	<script src="assets/js/respond.min.js"></script>
	<![endif]-->
</head>
<body>
<%
        HttpSession s = request.getSession();   
        boolean loginFlag = false;        
        if (null != s){
        	loginFlag = true;
        }
  %>
<div class="header_member">
 <c:choose>
  <c:when  test="${loginFlag}">
  <a href="javascript:void(0)" id="member">用户</a>
  |
  <a href="javascript:void(0)" id="logout">退出</a>
  </c:when>
  <c:otherwise>
  <a href="javascript:void(0)" id="reg_a">注册</a>
  |
  <a href="javascript:void(0)" id="login_a">登录</a>
  </c:otherwise>
 </c:choose>
<div id="test">
fasdfasd
</div>
  <form id="reg" action="123.html" title="会员注册" style="display:none">
	<ol class="reg_error"></ol>
	<p>
		<label for="user">帐号：</label>
		<input type="text" name="user" class="text" id="user" />
		<span class="star">*</span>
	</p>
	<p>
		<label for="pass">密码：</label>
		<input type="password" name="pass" class="text" id="pass" />
		<span class="star">*</span>
	</p>
	<p>
		<label for="email">邮箱：</label>
		<input type="text" name="email" class="text" id="email" />
		<span class="star">*</span>
	</p>
	<p>
		<label>性别：</label>
		<input type="radio" name="sex" value="male" id="male" checked="checked"><label for="male">男</label></input><input type="radio" name="sex" value="female" id="female"><label for="female">女</label></input>
	</p>
	<p>
		<label for="date">生日：</label>
		<input type="text" name="birthday" readonly="readonly" class="text" id="date" />
	</p>
</form>
<form id="login" title="会员登录" style="display:none">
	<ol class="login_error"></ol>
	<p>
		<label for="user">帐号：</label>
		<input type="text" name="login_user" class="text" id="login_user" />
		<span class="star">*</span>
	</p>
	<p>
		<label for="pass">密码：</label>
		<input type="password" name="login_pass" class="text" id="login_pass" />
		<span class="star">*</span>
	</p>
	<p>
		<input type="checkbox" name="expires" id="expires" checked="checked" /><label for="expires">登录后有效期一周</label>
	</p>
</form>
 
		</div>
	<!-- Fixed navbar -->
	<div class="navbar navbar-inverse">
		<div class="container">
			<div class="navbar-header">
				<!-- Button for smallest screens -->
				<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse"><span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span></button>
				<a class="navbar-brand" href="index.html">
					<img src="assets/images/logo.png" alt="Techro HTML5 template"></a>
			</div>
			<div class="navbar-collapse collapse">
				<ul class="nav navbar-nav pull-right mainNav">
					<li class="c1 active"><a href="index.html">Home</a></li>
					<li class="c2"><a href="about.html">About</a></li>
					<li class="c3"><a href="courses.html">Courses</a></li>
					<li class="c4"><a href="price.html">Price</a></li>
					<li class="c5"><a href="videos.html">Videos</a></li>
					<li class="c6 dropdown">
						<a href="#" class="dropdown-toggle" data-toggle="dropdown">Pages <b class="caret"></b></a>
						<ul class="dropdown-menu">
							<li><a href="sidebar-right.html">Right Sidebar</a></li>
							<li><a href="#">Dummy Link1</a></li>
							<li><a href="#">Dummy Link2</a></li>
							<li><a href="#">Dummy Link3</a></li>
						</ul>
					</li>
					<li class="c7"><a href="contact.html">Contact</a></li>

				</ul>
			</div>
			<!--/.nav-collapse -->
		</div>
	</div>
	<!-- /.navbar -->

	<!-- Header -->
	<header id="head">
		<div class="container">
             <div class="heading-text">							
							<h1 class="animated flipInY delay1">Start Online Education</h1> <br/>
							<p>Free Online education template for elearning and online education institute.</p>
						</div>
            
					<div class="fluid_container">                       
                    <div class="camera_wrap camera_emboss pattern_1" id="camera_wrap_4">
                        <div data-thumb="assets/images/slides/thumbs/img1.jpg" data-src="assets/images/slides/img1.jpg">
                            <h2>We develop.</h2>
                        </div> 
                        <div data-thumb="assets/images/slides/thumbs/img2.jpg" data-src="assets/images/slides/img2.jpg">
                        </div>
                        <div data-thumb="assets/images/slides/thumbs/img3.jpg" data-src="assets/images/slides/img3.jpg">
                        </div> 
                    </div><!-- #camera_wrap_3 -->
                </div><!-- .fluid_container -->
		</div>
	</header>
	<!-- /Header -->

  <div class="container">
    <div class="row">
					<div class="col-md-3">
						<div class="grey-box-icon b1"> 
							<h4>Online Courses</h4>
							<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent tempus eleifend risus ut congue
							eset nec lacus elit dor broma.</p>
     						<p><a href="#"><em>Read More</em></a></p>
						</div><!--grey box -->
					</div><!--/span3-->
					<div class="col-md-3">
						<div class="grey-box-icon b2"> 
							<h4>Meet our Staff</h4>
							<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent tempus eleifend risus ut congue
							eset nec lacus elit dor broma.</p>
     						<p><a href="#"><em>Read More</em></a></p>
						</div><!--grey box -->
					</div><!--/span3-->
					<div class="col-md-3">
						<div class="grey-box-icon b3"> 
							<h4>Latest Updates</h4>
							<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent tempus eleifend risus ut congue
							eset nec lacus elit dor broma.</p>
     						<p><a href="#"><em>Read More</em></a></p>
						</div><!--grey box -->
					</div><!--/span3-->
					<div class="col-md-3">
						<div class="grey-box-icon b4">  
							<h4>Placements</h4>
							<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent tempus eleifend risus ut congue
							eset nec lacus elit dor broma.</p>
     						<p><a href="#"><em>Read More →</em></a></p>
						</div><!--grey box -->
					</div><!--/span3-->
				</div>
    </div>
      <section class="news-box top-margin">
        <div class="container">
            <h2><span>New Courses</span></h2>
            <div class="row">
       
                <div class="col-lg-4 col-md-4 col-sm-12">
                    <div class="newsBox">
                        <div class="thumbnail">
                            <figure><img src="assets/images/news2.jpg" alt=""></figure>
                            <div class="caption maxheight2">
                            <div class="box_inner">
                                        <div class="box">
                                            <p class="title"><h5>Developer</h5></p>
                                            <p>Lorem ipsum dolor sit amet, conc tetu er adipi scing. Praesent ves tibuum molestie lacuiirhs. Aenean.</p>
                                        </div> 
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-4 col-sm-12">
                    <div class="newsBox">
                        <div class="thumbnail">
                            <figure><img src="assets/images/news3.jpg" alt=""></figure>
                            <div class="caption maxheight2">
                            <div class="box_inner">
                                        <div class="box">
                                            <p class="title"><h5>Photography   </h5></p>
                                            <p>Lorem ipsum dolor sit amet, conc tetu er adipi scing. Praesent ves tibuum molestie lacuiirhs. Aenean.</p>
                                        </div> 
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-4 col-sm-12">
                    <div class="newsBox">
                        <div class="thumbnail">
                            <figure><img src="assets/images/news4.jpg" alt=""></figure>
                            <div class="caption maxheight2">
                           <div class="box_inner">
                                        <div class="box">
                                            <p class="title"><h5>Audio Editing</h5></p>
                                            <p>Lorem ipsum dolor sit amet, conc tetu er adipi scing. Praesent ves tibuum molestie lacuiirhs. Aenean.</p>
                                        </div> 
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
   
  
	
      <section class="container">
      <div class="row">
      	<div class="col-md-8"><div class="title-box clearfix "><h2 class="title-box_primary">About Us</h2></div> 
        <p><span>Perspiciatis unde omnis iste natus error sit voluptatem. Cum sociis natoque penatibus et magnis dis parturient montes ascetur ridiculus musull dui.</span></p>
        <p>Lorem ipsumulum aenean noummy endrerit mauris. Cum sociis natoque penatibus et magnis dis parturient montes ascetur ridiculus mus. Null dui. Fusce feugiat malesuada odio.</p><p>Lorem ipsumulum aenean noummy endrerit mauris. Cum sociis natoque penatibus et magnis dis parturient montes ascetur ridiculus mus. Null dui. Fusce feugiat malesuada odio.</p>
        <a href="#" title="read more" class="btn-inline " target="_self">read more</a> </div>
              
          
          <div class="col-md-4"><div class="title-box clearfix "><h2 class="title-box_primary">Up Coming Courses</h2></div> 
            <div class="list styled custom-list">
            <ul>
            <li><a title="Snatoque penatibus et magnis dis partu rient montes ascetur ridiculus mus." href="#">Mathematics and Computer Science</a></li>
            <li><a title="Fusce feugiat malesuada odio. Morbi nunc odio gravida at cursus nec luctus." href="#">Mathematics and Philosophy</a></li>
            <li><a title="Penatibus et magnis dis parturient montes ascetur ridiculus mus." href="#">Philosophy and Modern Languages</a></li>
            <li><a title="Morbi nunc odio gravida at cursus nec luctus a lorem. Maecenas tristique orci." href="#">History (Ancient and Modern)</a></li>
            <li><a title="Snatoque penatibus et magnis dis partu rient montes ascetur ridiculus mus." href="#">Classical Archaeology and Ancient History</a></li>
            <li><a title="Fusce feugiat malesuada odio. Morbi nunc odio gravida at cursus nec luctus." href="#">Physics and Philosophy</a></li>
            </ul>
            </div>
         </div>
      </div>
      </section>
      
    	 
    <footer id="footer">
 
		<div class="container">
   <div class="row">
  <div class="footerbottom">
    <div class="col-md-3 col-sm-6">
      <div class="footerwidget">
        <h4>
          Course Categories
        </h4>
        <div class="menu-course">
          <ul class="menu">
            <li><a href="#">
                List of Technology 
              </a>
            </li>
            <li><a href="#">
                List of Business
              </a>
            </li>
            <li><a href="#">
                List of Photography
              </a>
            </li>
            <li><a href="#">
               List of Language
              </a>
            </li>
          </ul>
        </div>
      </div>
    </div>
    <div class="col-md-3 col-sm-6">
      <div class="footerwidget">
        <h4>
          Products Categories
        </h4>
        <div class="menu-course">
          <ul class="menu">
            <li> <a href="#">
                Individual Plans  </a>
            </li>
            <li><a href="#">
                Business Plans
              </a>
            </li>
            <li><a href="#">
                Free Trial
              </a>
            </li>
            <li><a href="#">
                Academic
              </a>
            </li>
          </ul>
        </div>
      </div>
    </div>
    <div class="col-md-3 col-sm-6">
      <div class="footerwidget">
        <h4>
          Browse by Categories
        </h4>
        <div class="menu-course">
          <ul class="menu">
            <li><a href="#">
                All Courses
              </a>
            </li>
            <li> <a href="#">
                All Instructors
              </a>
            </li>
            <li><a href="#">
                All Members
              </a>
            </li>
            <li>
              <a href="#">
                All Groups
              </a>
            </li>
          </ul>
        </div>
      </div>
    </div>
    <div class="col-md-3 col-sm-6"> 
            	<div class="footerwidget"> 
                         <h4>Contact</h4> 
                        <p>Lorem reksi this dummy text unde omnis iste natus error sit volupum</p>
            <div class="contact-info"> 
            <i class="fa fa-map-marker"></i> Kerniles 416  - United Kingdom<br>
            <i class="fa fa-phone"></i>+00 123 156 711 <br>
             <i class="fa fa-envelope-o"></i> youremail@email.com
              </div> 
                </div><!-- end widget --> 
    </div>
  </div>
</div>
			<div class="social text-center">
				<a href="#"><i class="fa fa-twitter"></i></a>
				<a href="#"><i class="fa fa-facebook"></i></a>
				<a href="#"><i class="fa fa-dribbble"></i></a>
				<a href="#"><i class="fa fa-flickr"></i></a>
				<a href="#"><i class="fa fa-github"></i></a>
			</div>

			<div class="clear"></div>
			<!--CLEAR FLOATS-->
		</div>
		<div class="footer2">
			<div class="container">
				<div class="row">

					<div class="col-md-6 panel">
						<div class="panel-body">
							<p class="simplenav">
								<a href="index.html">Home</a> | 
								<a href="about.html">About</a> |
								<a href="courses.html">Courses</a> |
								<a href="price.html">Price</a> |
								<a href="videos.html">Videos</a> |
								<a href="contact.html">Contact</a>
							</p>
						</div>
					</div>

					<div class="col-md-6 panel">
						<div class="panel-body">
							<p class="text-right">
								Copyright &copy; 2016.Company name All rights reserved.
							</p>
						</div>
					</div>

				</div>
				<!-- /row of panels -->
			</div>
		</div>
	</footer>

	<!-- JavaScript libs are placed at the end of the document so the pages load faster -->
	
	<script src="assets/js/modernizr-latest.js"></script> 
	<script type='text/javascript' src='assets/js/$.min.js'></script>
    <script type='text/javascript' src='assets/js/fancybox/$.fancybox.pack.js'></script>
    
    <script type='text/javascript' src='assets/js/$.mobile.customized.min.js'></script>
    <script type='text/javascript' src='assets/js/$.easing.1.3.js'></script> 
    <script type='text/javascript' src='assets/js/camera.min.js'></script> 
    <script src="assets/js/bootstrap.min.js"></script> 
	<script src="assets/js/custom.js"></script>
	
    <script>
		$(function(){
			
			$('#camera_wrap_4').camera({
                transPeriod: 500,
                time: 3000,
				height: '600',
				loader: 'false',
				pagination: true,
				thumbnails: false,
				hover: false,
                playPause: false,
                navigation: false,
				opacityOnGrid: false,
				imagePath: 'assets/images/'
			});
			
			$('#login_a').click(function () {
				
				$('#login').css('display','block');
				$('#login').dialog('open');
				$('#test').dialog('open');
			});
			$('#test').dialog({
				autoOpen: false,
			      show: {
			        effect: "blind",
			        duration: 1000
			      },
			      hide: {
			        effect: "explode",
			        duration: 1000
			      },
			      modal: true,
				});
			$('#login').dialog({
				resizable: false,

			     height:140,

			     modal: true
				});
			
			});
      
	</script>
    
</body>


</html>