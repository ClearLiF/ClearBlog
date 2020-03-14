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
			<a class="navbar-brand" href="/home"><img src="${request.contextPath}/blog/images/clear.png" alt="company logo" /></a>
		</div>
		<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
			<ul class="nav navbar-nav navbar-right custom-menu">
				<li ><a href="/home">主页</a></li>
				<li class="active"><a href="#contact">注册</a></li>
				<li><a href="blog.html">博客</a></li>
				<li><a href="single-post.html">Single</a></li>
			</ul>
		</div>
	</div>
</nav>


<div class="row" style="padding-top:80px;">
	<div class="container ">
		<form action="" id="defaultForm" method="post" class="form-horizontal"  role="form">
			<fieldset>
				<legend>注册</legend>

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
					<label class="col-lg-3 control-label" >确认密码</label>
					<div class="col-lg-5">
						<input type="password" style="color: black"  class="form-control" name="confirmPassword" />
					</div>
				</div>


				<div class="form-group">
					<label class="col-lg-3 control-label">电子邮箱</label>
					<div class="col-lg-5">
						<input type="text" style="color: black" class="form-control" name="email" />
					</div>
				</div>


				<#--地区选择标签-->
				<div class="form-group">
					<div class="row">
						<label class="col-lg-1 control-label">省</label>
						<div class="col-lg-3  text-center" >
							<select class="selectpicker form-control" name="Province" id="Province" data-style="btn-primary">
								  <option value="">==请选择===</option>
								</select>
						</div>
						<label class="col-lg-1 control-label">市</label>
						<div class="col-lg-3  text-center" >
							<input type="hidden"  class="form-control" id="roleid2" name="roleid2">
							<select class="selectpicker form-control" name="City" id="City" data-style="btn-info">
								  <option value="">==请选择===</option>
							</select>
						</div>
						<label class="col-lg-1 control-label">县</label>
						<div class="col-lg-3  text-center" >
							<input type="hidden"  class="form-control" id="roleid3" name="roleid3">
							<select class="selectpicker form-control" name="Village" id="Village"  data-style="btn-warning">
								      <option value="">==请选择===</option>
							</select>
						</div>
					</div>
				</div>




			<#--	<div class="form-group">
					                <div class="col-sm-2 text-center">
						                   省
						                </div>
					                <div class="col-sm-2">
						                    <select class="form-control" name="Province" id="Province">
							                        <option>==请选择===</option>
							                    </select>


						                </div>
					                <div class="col-sm-1 text-center">
						                   市
						                </div>
					                <div class="col-sm-2">
						                    <select class="form-control" name="City" id="City">
							                        <option>==请选择===</option>
							                    </select>
						                </div>
					                <div class="col-sm-1 text-center">
						                县/区
						                </div>
					                <div class="col-sm-2">
						                    <select class="form-control" name="Village" id="Village">
							                        <option>==请选择===</option>
							                    </select>
						                </div>
					            </div>-->




				<div class="form-group">
					<label class="col-lg-3 control-label">性别</label>
					<div class="col-lg-5">
						<div class="radio">
							<label>
								<input type="radio" name="gender" value="male" /> 男
							</label>
						</div>
						<div class="radio">
							<label>
								<input type="radio" name="gender" value="female" /> 女
							</label>
						</div>
						<div class="radio">
							<label>
								<input type="radio" name="gender" value="other" /> 其他
							</label>
						</div>
					</div>
				</div>
				<div class="form-group">
					<label for="dtp_input2" class="col-lg-3 control-label">生日</label>
					<div class="input-group date form_date col-lg-5" data-date="" data-date-format="dd MM yyyy" data-link-field="dtp_input2" data-link-format="yyyy-mm-dd">
						<input class="form-control" style="color: black" size="16" type="text" value="" readonly id="birthday">
						<span class="input-group-addon"><span class="glyphicon glyphicon-remove"></span></span>
						<span class="input-group-addon"><span class="glyphicon glyphicon-calendar"></span></span>
					</div>
					<input type="hidden" id="dtp_input2" value="" /><br/>
				</div>
				<div class="form-group">
					<label class="col-lg-3 control-label">编程语言</label>
					<div class="col-lg-5">
						<div class="checkbox">
							<label>
								<input type="checkbox" name="programs[]" value="net" /> .Net
							</label>
						</div>
						<div class="checkbox">
							<label>
								<input type="checkbox" name="programs[]" value="java" /> Java
							</label>
						</div>
						<div class="checkbox">
							<label>
								<input type="checkbox" name="programs[]" value="c" /> C/C++
							</label>
						</div>
						<div class="checkbox">
							<label>
								<input type="checkbox" name="programs[]" value="php" /> PHP
							</label>
						</div>
						<div class="checkbox">
							<label>
								<input type="checkbox" name="programs[]" value="perl" /> Perl
							</label>
						</div>
						<div class="checkbox">
							<label>
								<input type="checkbox" name="programs[]" value="ruby" /> Ruby
							</label>
						</div>
						<div class="checkbox">
							<label>
								<input type="checkbox" name="programs[]" value="python" /> Python
							</label>
						</div>
						<div class="checkbox">
							<label>
								<input type="checkbox" name="programs[]" value="javascript" /> Javascript
							</label>
						</div>
					</div>
				</div>

			</fieldset>

			<div class="form-group">
				<div class="col-lg-9 col-lg-offset-3">
					<button type="submit" id="validateBtn" class="btn btn-primary" name="signup" value="Sign up">注册</button>
					<button type="submit" id="resetBtn" class="btn btn-primary" name="signup2" value="Sign up 2">重填</button>
				</div>
			</div>
		</form>
	</div>
</div>

<#--class="navbar-fixed-bottom"-->
<footer id="footer" >
	<div class="container">
		<div class="row myfooter">
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
		//地址绑定
		//默认绑定省
		ProviceBind();
		//绑定事件
		$("#Province").change( function () {
			console.log('dwqdq');
			CityBind();
			//使用refresh方法更新UI以匹配新状态。
			$('#City').selectpicker('refresh')
			//render方法强制重新渲染引导程序 - 选择ui。
			.selectpicker('render');
			//使用refresh方法更新UI以匹配新状态。
			$('#Village').selectpicker('refresh')
			//render方法强制重新渲染引导程序 - 选择ui。
			.selectpicker('render');
		});

		$("#City").change(function () {
			$('#defaultForm').bootstrapValidator('validate');
			VillageBind();
			//使用refresh方法更新UI以匹配新状态。
			$('#Village').selectpicker('refresh')
			//render方法强制重新渲染引导程序 - 选择ui。
			.selectpicker('render');
		});


		// Generate a simple captcha

		$('#birthday').datetimepicker({
			bootcssVer:3,
			language:  'zh-CN',
			weekStart: 1,
			todayBtn:  1,
			//minView: "month",
			autoclose: 1,
			todayHighlight: 1,
			startView: 2,
			minView: 2,
			forceParse: 0
		}).on('changeDate', function () {
			$('#defaultForm')
					.data('bootstrapValidator')
					.updateStatus('birthday', 'NOT_VALIDATED', null)
					.validateField('birthday');
		});

		// 2# 时间控件输入框添加绑定事件
		$(document).on('changeDate', '#birthday', function () {
			$('#defaultForm')
					.data('bootstrapValidator')
					.updateStatus('birthday', 'NOT_VALIDATED', null)
					.validateField('birthday');
		});

		$('#defaultForm').bootstrapValidator({
//        live: 'disabled',
			message: '这个值不可用',
			excluded : [':disabled'],
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
							message: 'The username is required and cannot be empty'
						},
						stringLength: {
							min: 6,
							max: 30,
							message: '用户名小于 6 或者 大于30个字符'
						},
						/*remote: {
							type: 'POST',
							url: 'remote.php',
							message: 'The username is not available'
						},*/
						different: {
							field: 'password,confirmPassword',
							message: '用户名不能和密码一样'
						}
					}
				},
				email: {
					validators: {
						notEmpty: {
							message: '邮箱不能为空'
						},
						emailAddress: {
							message: '邮箱格式不正确'
						}

					}
				},
				password: {
					validators: {
						notEmpty: {
							message: 'The password is required and cannot be empty'
						},
						identical: {
							field: 'confirmPassword',
							message: '密码和确认密码不相同'
						},
						different: {
							field: 'username',
							message: '用户名不能和密码一样'
						}
					}
				},
				confirmPassword: {
					validators: {
						notEmpty: {
							message: '确认密码不能为空'
						},
						identical: {
							field: 'password',
							message: '密码和确认密码不一致'
						},
						different: {
							field: 'username',
							message: '密码不能和用户名一样'
						}
					}
				},


				gender: {
					validators: {
						notEmpty: {
							message: '性别没有选择'
						}
					}
				},
				City:{
					validators:{
						notEmpty: {
							message: '请选择所在市'
						},callback: {
							message: '请选择所在市',
							callback: function (value, validator) {

								return value !== -1;
							}

						}}
						},
				Village:{
					validators:{
						notEmpty: {
							message: '请选择所在区/县'
						},callback: {
							message: '请选择所在区/县',
							callback: function (value, validator) {

								return value !== -1;
							}

						}}
				},
				Province:{
					validators:{
						notEmpty: {
							message: '请选择所在省'
						},callback: {
							message: '请选择所在省',
							callback: function (value, validator) {

								return value !== -1;
							}

						}}
				},
				birthday: {
					trigger: 'changeDate',
					validators: {
						notEmpty: {
							message: '生日不能为空'
						},callback: {
						message: '生日不能为空',
						callback: function (value, validator) {

							return value !== "";
						}

					}

					}
				},
				'programs[]': {
					validators: {
						choice: {
							min: 1,

							message: '至少选择一个你擅长或感兴趣的语言'
						}
					}
				},

			}
		});

		// Validate the form manually
		$('#validateBtn').click(function() {
			$('#defaultForm').bootstrapValidator('validate');
		});

		$('#resetBtn').click(function() {
			$('#defaultForm').data('bootstrapValidator').resetForm(true);
		});
	});

	function Bind(str) {
		alert($("#Province").html());
		$("#Province").val(str);


	}
	function ProviceBind() {
		//清空下拉数据
		$("#Province").html("");




		var str = "<option style='color:red;' value=''>==请选择===</option>";
		$.ajax({
			type: "POST",
			url: "/getAddress",
			data: { "parentiD": "", "MyColums": "Province" },
			dataType: "JSON",
			async: false,
			success: function (data) {
				//从服务器获取数据进行绑定
				$.each(data, function (i, item) {
					str += "<option style='color: black' value=" + item.id + ">" + item.mytexts + "</option>";
				});
				//将数据添加到省份这个下拉框里面
				$("#Province").append(str);
			},
			error: function () { alert("Error"); }
		});




	}
	function CityBind() {

		var provice = $("#Province").find("option:selected").val();
		//判断省份这个下拉框选中的值是否为空
		if (provice === "") {
			return;
		}
		$("#City").html("");
		var str = "<option style='color: red' value=''>==请选择===</option>";


		$.ajax({
			type: "POST",
			url: "/getAddress",
			data: { "parentiD": provice, "MyColums": "City" },
			dataType: "JSON",
			async: false,
			success: function (data) {
				//从服务器获取数据进行绑定
				$.each(data, function (i, item) {
					str += "<option style='color: black' value=" + item.id + ">" + item.mytexts + "</option>";
				});
				//将数据添加到省份这个下拉框里面
				$("#City").append(str);
			},
			error: function () { alert("Error"); }
		});


	}
	function VillageBind() {

		var provice = $("#City").find("option:selected").val();
		//判断市这个下拉框选中的值是否为空
		if (provice === "") {
			return;
		}
		$("#Village").html("");
		var str = "<option style='color: red' value=''>==请选择===</option>";
		//将市的ID拿到数据库进行查询，查询出他的下级进行绑定
		$.ajax({
			type: "POST",
			url: "/getAddress",
			data: { "parentiD": provice, "MyColums": "Village" },
			dataType: "JSON",
			async: false,
			success: function (data) {
				//从服务器获取数据进行绑定
				$.each(data, function (i, item) {
					str += "<option style='color: black' value=" + item.id + ">" + item.mytexts + "</option>";
				});
				//将数据添加到省份这个下拉框里面
				$("#Village").append(str);
			},
			error: function () { alert("Error"); }
		});
	}

</script>


</body>
</html>



