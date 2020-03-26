<!DOCTYPE html>
<html lang="en">

	<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<meta name="description" content="">
		<meta name="author" content="">

        <title>PATROS - HTML5 FREE TEMPLATE</title>

		<link href="${request.contextPath}/blog/css/bootstrap.min.css" rel="stylesheet">
		<link href="${request.contextPath}/blog/css/mycss.css" rel="stylesheet">
		<!-- Custom Fonts -->
		<link href="${request.contextPath}/blog/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
		<!-- Custom CSS -->
		<link rel="stylesheet" href="${request.contextPath}/blog/css/patros.css" >

		<link rel="stylesheet" href="${request.contextPath}/blog/css/bootstrap-datetimepicker.min.css">
		<link rel="stylesheet" href="${request.contextPath}/blog/css/bootstrapValidator.css"/>
		<link rel="stylesheet" href="${request.contextPath}/blog/css/bootstrap-select.min.css">

		<!--树形结构主要样式-->
		<link rel="stylesheet" type="text/css" href="${request.contextPath}/blog/css/style.css" />
		<#--分页-->
	<#--	<link href="${request.contextPath}/blog/css/bootstrap-combined.min.css" rel="stylesheet">
	-->	<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->

		<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
            <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
            <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
            <![endif]-->

	</head>

	<body data-spy="scroll">
		<!-- Navigation -->
		<!-- Navigation -->
		<nav class="navbar navbar-inverse navbar-fixed-top">
			<div class="container ">
				<div class="navbar-header ">
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
						<li ><a href="/blog/home">主页</a></li>
						<li><a href="/user/register">注册</a></li>
						<li class="active"><a href="/blog/toBlogHome">博客</a></li>
						<li class="dropdown">
							<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">
								<#if user=='null'>登录<#else>个人中心</#if> <span class="caret"></span></a>
							<ul class="dropdown-menu">
								<li><a href="<#if user=='null'>/user/login<#else>/user/myself</#if> "><#if user=='null'>登录<#else>个人中心</#if> </a></li>
								<li role="separator" class="divider"></li>
								<li class="dropdown-header">联系站长</li>
								<li><a href="#">给站长送吃的</a></li>
								<li><a href="#">给站长吐槽</a></li>
							</ul>
						</li>
						<li>
							<#if user!='null'>
								<a class="div1" href="/blog/toBlogEdit"><span  class="glyphicon glyphicon-paperclip"></span>写文章</a>
							</#if>
						</li>
					</ul>
				</div>
			</div>
		</nav>
		<div class="col-lg-10" style="font-size: 100px">当前页面未开发</div>




    </body>
</html>