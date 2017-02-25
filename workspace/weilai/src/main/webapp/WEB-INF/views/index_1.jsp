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
				</ul>
			</div>
			<!--/.nav-collapse -->
		</div>
	</div>
<div class="header_member">


  <form id="reg" action="123.html" title="会员注册" >
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
					rules : {
						login_user : {
							required : true,
							minlength : 2,
							remote : {
								url : 'welcome',
								type : 'POST',
								data : {function(){return $("#login_user").val();}}
							},
						},
					},
					messages : {
						login_user : {
							required : '帐号不得为空！',
							minlength : $.validator.format('帐号不得小于{0}位！'),
						}
					}
				});
			
			});
    $('#reg_a').click(function () {
		$('#reg').dialog('open');
	});

	$('#reg').dialog({
		autoOpen : false,
		modal : true,
		resizable : false,
		width : 320,
		height : 340,
		buttons : {
			'提交' : function () {
				$(this).submit();
			}
		}
	}).buttonset().validate({
	
		submitHandler : function (form) {
			$(form).ajaxSubmit({
				url : 'add.php',
				type : 'POST',
				beforeSubmit : function (formData, jqForm, options) {
					$('#loading').dialog('open');
					$('#reg').dialog('widget').find('button').eq(1).button('disable');
				},
				success : function (responseText, statusText) {
					if (responseText) {
						$('#reg').dialog('widget').find('button').eq(1).button('enable');
						$('#loading').css('background', 'url(img/success.gif) no-repeat 20px center').html('数据新增成功...');
						$.cookie('user', $('#user').val());
						setTimeout(function () {
							$('#loading').dialog('close');
							$('#reg').dialog('close');
							$('#reg').resetForm();
							$('#reg span.star').html('*').removeClass('succ');
							$('#loading').css('background', 'url(img/loading.gif) no-repeat 20px center').html('数据交互中...');
							$('#member, #logout').show();
							$('#reg_a, #login_a').hide();
							$('#member').html($.cookie('user'));
						}, 1000);
					}
				},
			});
		},
	
		showErrors : function (errorMap, errorList) {
			var errors = this.numberOfInvalids();
			
			if (errors > 0) {
				$('#reg').dialog('option', 'height', errors * 20 + 340);
			} else {
				$('#reg').dialog('option', 'height', 340);
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
			user : {
				required : true,
				minlength : 2,
				remote : {
					url : 'is_user.php',
					type : 'POST',
				},
			},
			pass : {
				required : true,
				minlength : 6,
			},
			email : {	
				required : true,
				email : true
			},
			date : {
				date : true,
			},
		},
		messages : {
			user : {
				required : '帐号不得为空！',
				minlength : $.validator.format('帐号不得小于{0}位！'),
				remote : '帐号被占用！',
			},
			pass : {
				required : '密码不得为空！',
				minlength : $.validator.format('密码不得小于{0}位！'),
			},
			email : {
				required : '邮箱不得为空！',
				minlength : '请输入正确的邮箱地址！',
			},	
		}
	});
			
	</script>
    
</body>


</html>