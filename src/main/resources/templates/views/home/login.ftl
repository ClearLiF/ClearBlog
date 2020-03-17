<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="description" content="">
	<meta name="author" content="">
	<title>Clear - Clear个人博客系统</title>
	<!-- Bootstrap Core CSS -->
	<link href="${request.contextPath}/blog/css/bootstrap.min.css" rel="stylesheet">
	<!-- Custom Fonts -->
	<link href="${request.contextPath}/blog/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
	<!-- Custom CSS -->
	<link rel="stylesheet" href="${request.contextPath}/blog/css/patros.css" >

	<link rel="stylesheet" href="${request.contextPath}/blog/css/bootstrap-datetimepicker.min.css">
	<link rel="stylesheet" href="${request.contextPath}/blog/css/bootstrapValidator.css"/>
	<link rel="stylesheet" href="${request.contextPath}/blog/css/bootstrap-select.min.css">
	<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
	<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
	<!--[if lt IE 9]>
	<script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
	<script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
	<![endif]-->
	<!-- jQuery -->
	<script src="${request.contextPath}/blog/js/jquery.js"></script>
	<!-- Bootstrap Core JavaScript -->
	<script src="${request.contextPath}/blog/js/bootstrap.min.js"></script>
	<script src="${request.contextPath}/blog/js/bootstrap-datetimepicker.min.js"></script>
	<script src="${request.contextPath}/blog/js/bootstrap-datetimepicker.zh-CN.js"></script>
	<script type="text/javascript" src="${request.contextPath}/blog/js/bootstrapValidator.js"></script>
	<script type="text/javascript" src="${request.contextPath}/blog/js/zh_CN.js"></script>
	<!-- Latest compiled and minified JavaScript -->
	<script src="${request.contextPath}/blog/js/bootstrap-select/bootstrap-select.min.js"></script>

	<!-- (Optional) Latest compiled and minified JavaScript translation files -->
	<script src="${request.contextPath}/blog/js/bootstrap-select/defaults-zh_CN.min.js"></script>
	<script src="${request.contextPath}/js/myjs.js"></script>
	<style>
		@media screen and (max-width: 768px) {
			.phone {width: 10%;
			}
		}
	</style>
</head>

<body data-spy="scroll">
<!-- Navigation -->
<nav class="navbar navbar-inverse navbar-fixed-top">
	<div class="container ">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
				<span class="sr-only">Toggle navigation</span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="/blog/home"><img src="${request.contextPath}/blog/images/clear.png" alt="company logo" /></a>
		</div>
		<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
			<ul class="nav navbar-nav navbar-right custom-menu">
				<li ><a href="/blog/home">主页</a></li>
				<li><a href="/user/register">注册</a></li>
				<li><a href="/blog/toBlogHome">博客</a></li>
				<li class="dropdown">
					<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">联系站长 <span class="caret"></span></a>
					<ul class="dropdown-menu">
						<li role="separator" class="divider"></li>
						<li class="dropdown-header">联系站长</li>
						<li><a href="#">给站长送吃的</a></li>
						<li><a href="#">给站长吐槽</a></li>
					</ul>
				</li>

			</ul>
		</div>
	</div>
</nav>


<div class="row" style="padding-top:80px;">
	<div class="container ">
		<form action="/user/loginInto" id="defaultForm" method="post" class="form-horizontal"  role="form">
			<fieldset>
				<legend>登录</legend>
				<div class="form-group">
					<label class="col-lg-3 control-label">用户名</label>
					<div class="col-lg-4">
						<input type="text" class="form-control" style="color: black" name="username" placeholder="username" />
					</div>
				</div>
				<div class="form-group">
					<label class="col-lg-3 control-label" >密码</label>
					<div class="col-lg-5">
						<input type="password" style="color: black" class="form-control" name="password" />
					</div>
				</div>

				<div class="form-group">
					<label class="col-lg-3 control-label">验证码</label>
					<div class="col-lg-5">
						<input type="text" id="validateInput"  name="validateInput"  class="form-control" placeholder="请输入图形验证码" style="color: black" />
						<span><canvas id="canvas" width="120" height="45"></canvas>

				 		<a href="#" id="changeImg">看不清，换一张</a></span><br>
					</div>
					<span id="validateSpan" hidden>验证码错误</span>
				</div>




			</fieldset>
			<div class="form-group">
				<div class="col-lg-9 col-lg-offset-3">
					<button type="submit" id="validateBtn" class="btn btn-primary"  value="Sign up">登录</button>
					<button type="reset" id="resetBtn" class="btn btn-primary"  value="Sign up 2">重填</button>
				</div>
			</div>
		</form>
	</div>
</div>


<#--验证码区域-->

<#--
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
				<h4 class="modal-title" id="exampleModalLabel">请输入验证码</h4>
			</div>
			<div class="modal-body">
				<form id="validateForm" class="form-horizontal">
					<div class="form-group">
						<div class="input-group" id="box2">
							<label class="col-lg-1 control-label">验证码</label>
							<input id="validateInput"  class="form-control" placeholder="请输入图形验证码" style="color: black" />
							<span><canvas id="canvas" width="120" height="45"></canvas>
				 		<a href="#" id="changeImg">看不清，换一张</a></span><br>
							<span id="validateSpan" hidden>验证码错误</span>
						</div>
					</div>
					<div class="form-group">
						<div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
						<button type="submit" id="validate" class="btn btn-primary">确认</button>
					</div>
					</div>
				</form>
			</div>

		</div>
	</div>
</div>
-->
<#--class="navbar-fixed-bottom"-->
<footer id="footer " class="navbar-fixed-bottom">
	<div class="container ">
		<div class="row myfooter ">
			<div class="col-sm-6"><div class="pull-left">
					© Copyright Company 2020 | <a href="#">Clear LIF</a> | <a href="#">Terms of Use</a>
				</div></div>
			<div class="col-sm-6">
				<div class="pull-right">Designed by Clear </div>
			</div>
		</div>
	</div>
</footer>



<script type="text/javascript" src="${request.contextPath}/blog/js/my.js"></script>

<!--Jquery Smooth Scrolling-->
<script>
	$(document).ready(function() {
		drawPic();

		$("#changeImg").on('click',function (e) {
			e.preventDefault();
			drawPic();
		});

	/*	$("#validateInput").on('change',function () {
			console.log('cdwdw');
			$("#validate").attr("disabled", false);
		});*/
		/*$("#validate").on('click',function () {
			$('#validateSpan').hide();
			$('#validateForm').bootstrapValidator('validate');
			var value = $('#validateInput').val().toUpperCase();
			console.log(value+contxts);
			//将用户输入的值转换为大写
			if (value === contxts) {
				$.ajax({
					//几个参数需要注意一下
					type: "POST",//方法类型
					dataType: "json",//预期服务器返回的数据类型
					url: "/user/registerSave" ,//url
					data: $('#defaultForm').serialize()+'&birthday='+$('#birthday').val(),
					success: function (result) {
						console.log(result);//打印服务端返回的数据(调试用)
						if (result.username ==='success') {
							alert("SUCCESS");
							//$('#myModal').modal('hide');

						}
					},
					error : function() {
						//alert("异常！");
					}
				});
			}
			else {
				$('#validateSpan').css({'display': 'block'});
			}

		});*/

		/*$.validator.addMethod("checkCode", function(value, element) { //value是从表单接收来的值
                value = value.toUpperCase();   //将用户输入的值转换为大写
                return this.optional(element) || (value === contxt); //将value与图形上的验证码进行比较
            }, "请正确填写手机号码");*/
		//地址绑定
		//默认绑定省


		// Generate a simple captcha
		$('#defaultForm').bootstrapValidator({
//        live: 'disabled',
			message: '这个值不可用',
			feedbackIcons: {
				valid: 'glyphicon glyphicon-ok',
				invalid: 'glyphicon glyphicon-remove',
				validating: 'glyphicon glyphicon-refresh'
			},
			fields: {
				username: {
					message: '这个用户名不可用',
					validators: {
						notEmpty: {
							message: '用户名不能为空'
						},
						stringLength: {
							min: 6,
							max: 30,
							message: '用户名小于 6 或者 大于30个字符'
						},
						threshold: 6,
					}
				},
				password: {
					validators: {
						notEmpty: {
							message: 'The password is required and cannot be empty'
						},

						stringLength: {
							min: 6,
							max: 30,
							message: '密码不得少于6位'
						},

					}
				},
				validateInput: {
					validators: {
						notEmpty: {
							message: '验证码不能为空'
						},
						stringLength: {
							max: 4,
							message: '最大4个字符'
						},
						callback:{
							message:"验证码错误",
							callback: function (value, validator) {
								value = value.toUpperCase();
								console.log(value+contxts);
								//将用户输入的值转换为大写
								return  value === contxts;
							}
						}


					}
				}
			}
		}).on('success.form.bv', function(e) {
			// Prevent form submission
			e.preventDefault();
			// Get the form instance
			var $form = $(e.target);
			// Get the BootstrapValidator instance
			var bv = $form.data('bootstrapValidator');
			// Use Ajax to submit form data
			$.post($form.attr('action'), $form.serialize(), function(result) {
				if (result.loginStatus ==='success') {
					//alert("SUCCESS");
					console.log("登陆成功");
					window.location.href="/blog/toBlogHome";
					//$('#myModal').modal('hide');
				}else {
					alert("用户名密码错误");
				}
			}, 'json');
		});

		// Validate the form manually
	/*	$('#validateBtn').on('click',function (e) {
			e.preventDefault();
			$('#defaultForm').bootstrapValidator('validate');
			$.ajax({
				//几个参数需要注意一下
				async : false,
				type: "POST",//方法类型
				dataType: "json",//预期服务器返回的数据类型
				url: "/user/" ,//url
				data: $('#defaultForm').serialize(),
				success: function (result) {
					console.log(result);//打印服务端返回的数据(调试用)
					if (result.username ==='success') {
						alert("SUCCESS");
						//$('#myModal').modal('hide');
					}
				},
				error : function() {
					alert("服务器连接异常");
				}
			});
		});*/
		$('#resetBtn').click(function() {
			$('#defaultForm').data('bootstrapValidator').resetForm(true);
		});
	});
</script>
</body>
</html>




