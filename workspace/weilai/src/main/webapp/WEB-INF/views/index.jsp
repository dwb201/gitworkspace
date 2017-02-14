<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">

    <link rel="stylesheet" href="css/jquery-ui.min.css" type="text/css" />
 <link rel="stylesheet" href="assets/css/style.css" type="text/css" />
 <link rel="stylesheet" href="assets/css/bootstrap.min.css">
	<link rel="stylesheet" href="assets/css/font-awesome.min.css"> 
	<link rel="stylesheet" href="assets/css/bootstrap-theme.css" media="screen"> 
 <link rel='stylesheet' id='camera-css'  href='assets/css/camera.css' type='text/css' media='all'>
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
  	<div class="navbar navbar-inverse">
		<div class="container">
			<div class="navbar-header">
				<!-- Button for smallest screens -->
				<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse"><span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span></button>
				<a class="navbar-brand" href="index.jsp">
					<img src="assets/images/logo.png" alt="Techro HTML5 template"></a>
			</div>
			<div class="navbar-collapse collapse">
				<ul class="nav navbar-nav pull-right mainNav">
					<li class="c1 active"><a href="index.html">ホーム</a></li>
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
					
					<c:choose>
  <c:when  test="${loginFlag}">
  <li class="c8">
  <a href="javascript:void(0)" id="member">用户</a></li>
  |
 <li class="c8"> <a href="javascript:void(0)" id="logout">ログアウト</a></li>
  </c:when>
  <c:otherwise>
  <li class="c8">
 <a href="javascript:void(0)" id="reg_a" >登録</a></li>
  |
 <li class="c8"> <a href="javascript:void(0)" id="login_a">ログイン</a></li>
  </c:otherwise>
 </c:choose>
 
					</ul>
					</div>
					</div>
</div>				
			
			<!--/.nav-collapse -->
		
	
	
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
<div class="header_member">


  <form id="reg"  title="会員登録" >
	<ol class="reg_error"></ol>
	<p>
		<label for="userName">ネーム：</label>
		<input type="text" name="userName" class="text" id="userName" />
		<span class="star">*</span>
	</p>
	<p>
		<label for="pass">パスワード：</label>
		<input type="password" name="pass" class="text" id="pass" />
		<span class="star">*</span>
	</p>
	<p>
		<label for="email">メール：</label>
		<input type="text" name="email" class="text" id="email" />
		<span class="star">*</span>
	</p>
	<p>
		<label>性別：</label>
		<input type="radio" name="sex" value="male" id="male" checked="checked"><label for="male">男</label></input>
		<input type="radio" name="sex" value="female" id="female"><label for="female">女</label></input>
	</p>
	<p>
		<label for="date">QQ：</label>
		<input type="text" name="qqid"  class="text" id="qqId" />
	</p>
	<p>
		<label for="date">WeChat：</label>
		<input type="text" name="weChatId"  class="text" id="WeChatId" />
	</p>
	<p>
		<label for="date">携帯：</label>
		<input type="text" name="phoneNumber"  class="text" id="phoneNumber" />
	</p>
	
</form>
<form id="login" title="会员登录" >
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

	<!-- JavaScript libs are placed at the end of the document so the pages load faster -->
	<script type='text/javascript' src='js/jquery-3.1.1.min.js'></script>
    <script type='text/javascript' src='js/jquery-ui.min.js'></script>
    <script type='text/javascript' src='js/jquery.form.js'></script>
    <script type='text/javascript' src='js/jquery.validate.js'></script>
    
    
    <script src="assets/js/modernizr-latest.js"></script> 
	<script type='text/javascript' src='assets/js/jquery.min.js'></script>
    <script type='text/javascript' src='assets/js/fancybox/jquery.fancybox.pack.js'></script>
    
    <script type='text/javascript' src='assets/js/jquery.easing.1.3.js'></script> 
    <script type='text/javascript' src='assets/js/camera.min.js'></script> 
    <script src="assets/js/bootstrap.min.js"></script> 
	<script src="assets/js/custom.js"></script>
    <script>
    $(function(){	
			$('#login_a').click(function () {			
				
				$('#login').dialog('open');
	
			});
			
			$('#login').dialog({
				autoOpen : false,
				modal : true,
				resizable : false,
				width : 400,
				height : 260,
				buttons : {
					'登录' : function () {
						$(this).submit();
					}
				}
				}).validate({
					submitHandler : function (form) {
						
						$(form).ajaxSubmit({
							url : 'loginUser',
							type : 'POST',
								beforeSubmit : function (formData, jqForm, options) {
									//$('#reg').find('button').button('disable');
									//$('#reg').close();
								},
								success : function (responseText, statusText) {
									if (responseText) {
										//$('#reg').dialog('widget').find('button').eq(1).button('enable');
										//$('#loading').css('background', 'url(img/success.gif) no-repeat 20px center').html('数据新增成功...');
										//$.cookie('user', $('#user').val());
										setTimeout(function () {
											//$('#loading').dialog('close');
											$('#reg').dialog('close');
											$('#reg').resetForm();
											//$('#reg span.star').html('*').removeClass('succ');
											//$('#loading').css('background', 'url(img/loading.gif) no-repeat 20px center').html('数据交互中...');
											//$('#member, #logout').show();
											$('#reg_a, #login_a').hide();
											//$('#member').html($.cookie('user'));
										}, 1000);
									}
								},
						});
					},
					showErrors : function (errorMap, errorList) {
						var errors = this.numberOfInvalids();
						
						if (errors > 0) {
							$('#login').dialog('option', 'height', errors * 20 + 540);
						} else {
							$('#login').dialog('option', 'height', 260);
						}
						
						this.defaultShowErrors();
					},
					
					highlight : function (element, errorClass) {
						$(element).css('border', '1px solid #630');
						$(element).parent().find('span').html('*').removeClass('succ');
					},
					
					unhighlight : function (element, errorClass) {
						$(element).css('border', '1px solid #ccc');
						$(element).parent().find('span').html('&nbsp;').addClass('succ');
					},
				
					errorLabelContainer : 'ol.reg_error',
					wrapper : 'li',
				
					rules : {
						login_user : {
							required : true,
							minlength : 2
						},
						login_pass : {
							required : true,
							minlength : 6
						},
					},
					messages : {
						login_user : {
							required : '帐号不得为空！',
							minlength : $.validator.format('帐号不得小于{0}位！')
						},
						login_pass : {
							required : '密码不得为空！',
							minlength : $.validator.format('密码不得小于{0}位！')
						}
					}
				});
			
		
    $('#reg_a').click(function () {
		$('#reg').dialog('open');
	});

	$('#reg').dialog({
		autoOpen : false,
		modal : true,
		resizable : false,
		width : 320,
		height : 540,
		buttons : {
			'提交' : function () {
				$(this).submit();
			}
		}
	}).validate({
		submitHandler : function (form) {
			
			$(form).ajaxSubmit({
				url : 'registUser',
				type : 'POST',
					beforeSubmit : function (formData, jqForm, options) {
						//$('#reg').find('button').button('disable');
						//$('#reg').close();
					},
					success : function (responseText, statusText) {
						if (responseText) {
							//$('#reg').dialog('widget').find('button').eq(1).button('enable');
							//$('#loading').css('background', 'url(img/success.gif) no-repeat 20px center').html('数据新增成功...');
							//$.cookie('user', $('#user').val());
							setTimeout(function () {
								//$('#loading').dialog('close');
								$('#reg').dialog('close');
								$('#reg').resetForm();
								//$('#reg span.star').html('*').removeClass('succ');
								//$('#loading').css('background', 'url(img/loading.gif) no-repeat 20px center').html('数据交互中...');
								//$('#member, #logout').show();
								$('#reg_a, #login_a').hide();
								//$('#member').html($.cookie('user'));
							}, 1000);
						}
					},
			});
		},
	
		showErrors : function (errorMap, errorList) {
			var errors = this.numberOfInvalids();
			
			if (errors > 0) {
				$('#reg').dialog('option', 'height', errors * 20 + 540);
			} else {
				$('#reg').dialog('option', 'height', 540);
			}
			
			this.defaultShowErrors();
		},
		
		highlight : function (element, errorClass) {
			$(element).css('border', '1px solid #630');
			$(element).parent().find('span').html('*').removeClass('succ');
		},
		
		unhighlight : function (element, errorClass) {
			$(element).css('border', '1px solid #ccc');
			$(element).parent().find('span').html('&nbsp;').addClass('succ');
		},
	
		errorLabelContainer : 'ol.reg_error',
		wrapper : 'li',
	
		rules : {
			email : {
				required : true,
				minlength : 2,
				remote : {
					    type: "post",
	                    url: "checkUser",
	                    data: {
	                    	email: function() {
	                            return $("#email").val();
	                        }
	                    },
	                    dataType: "json", 
					dataFilter: function(data, type) {
						var parsedJson = $.parseJSON(data); 
						 if (parsedJson.result == "1") {
	                         console.log(data.result);//<span style="color: #FF0000;">没在控制台上显示</span>
	                         return false;   
	                     }
	                     else if(parsedJson.result == "0"){
	                        
	                         return true;
	                     }
                    }
	                    
				},
			},
			pass : {
				required : true,
				minlength : 6
			},
			userName : {	
				required : true,
				//userName : true
			},
			date : {
				date : true,
			},
		},
		messages : {
			userName : {
				required : '帐号不得为空！',
				minlength : $.validator.format('帐号不得小于{0}位！'),
			},
			pass : {
				required : '密码不得为空！',
				minlength : $.validator.format('密码不得小于{0}位！'),
			},
			email : {
				required : '邮箱不得为空！',
				minlength : '请输入正确的邮箱地址！',
				remote:"此手机已经注册过，请换用其它号码。"
			},	
		}
	});

	
    });
	jQuery(function(){
		
		jQuery('#camera_wrap_4').camera({
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

	});		
	</script>
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
	</footer>
    
</body>


</html>