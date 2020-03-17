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
		<!-- Custom Fonts -->
		<link href="${request.contextPath}/blog/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
		<!-- Custom CSS -->
		<link rel="stylesheet" href="${request.contextPath}/blog/css/patros.css" >

		<link rel="stylesheet" href="${request.contextPath}/blog/css/bootstrap-datetimepicker.min.css">
		<link rel="stylesheet" href="${request.contextPath}/blog/css/bootstrapValidator.css"/>
		<link rel="stylesheet" href="${request.contextPath}/blog/css/bootstrap-select.min.css">
		<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->

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
						<li ><a href="/blog/home">主页</a></li>
						<li><a href="/user/register">注册</a></li>
						<li class="active"><a href="/blog/toBlogHome">博客</a></li>
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
		<#--提示信息-->
		<div class="modal fade" tabindex="-1" role="dialog" id="myModal2">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
						<h4 class="modal-title">Modal title</h4>
					</div>
					<div class="modal-body">
						<p>One fine body&hellip;</p>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
						<button type="button" class="btn btn-primary">Save changes</button>
					</div>
				</div><!-- /.modal-content -->
			</div><!-- /.modal-dialog -->
		</div><!-- /.modal -->

		<!-- Page Content -->
		<section class="container blog">
			<div class="row">
		        <!-- Blog Column -->
		        <div class="col-md-8">
		            <h1 class="page-header sidebar-title">
		                Company Blog
		            </h1>
		            <!-- First Blog Post -->
		            <div class="row blogu">
		                <div class="col-sm-4 col-md-4 ">
		                    <div class="blog-thumb">
		                        <a href="#">
		                            <img class="img-responsive" src="images/blog-photo1.jpg" alt="photo">
		                        </a>
		                    </div>
		                </div>
		                <div class="col-sm-8 col-md-8">
		                    <h2 class="blog-title">
		                        <a href="#">Post title 1</a>
		                    </h2>
		                    <p><i class="fa fa-calendar-o"></i>  August 28, 2013 
		                        <span class="comments-padding"></span>
		                        <i class="fa fa-comment"></i> 0 comments
		                    </p>
		                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolore, veritatis, tempora, necessitatibus inventore nisi quam quia repellat ut tempore laborum possimus eum dicta id animi corrupti debitis ipsum officiis rerum.</p>
		                </div>
		            </div>
		            <hr>
		            <!-- Second Blog Post -->
		            <div class="row">
		                <div class="col-sm-4 col-md-4">
		                    <div class="blog-thumb">
		                        <a href="#">
		                            <img class="img-responsive" src="images/blog-photo2.jpg" alt="photo">
		                        </a>
		                    </div>
		                </div>
		                <div class="col-sm-8 col-md-8">
		                    <h2 class="blog-title">
		                        <a href="#">Post title 2</a>
		                    </h2>
		                    <p><i class="fa fa-calendar-o"></i> August 28, 2013 
		                       <span class="comments-padding"></span>
		                       <i class="fa fa-comment"></i> 3 comments
		                    </p>
		                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolore, veritatis, tempora, necessitatibus inventore nisi quam quia repellat ut tempore laborum possimus eum dicta id animi corrupti debitis ipsum officiis rerum.</p>
		                </div>
		            </div>
		            <hr>
		            <!-- Third Blog Post -->
		            <div class="row">
		                <div class="col-sm-4 col-md-4">
		                    <div class="blog-thumb">
		                        <a href="#">
		                        <img class="img-responsive" src="images/blog-photo3.jpg" alt="photo">
		                        </a>
		                    </div>
		                </div>
		                <div class="col-sm-8 col-md-8">
		                    <h2 class="blog-title">
		                        <a href="#">Post title 3</a>
		                    </h2>
		                    <p><i class="fa fa-calendar-o"></i>  August 28, 2013 
		                        <span class="comments-padding"></span>
		                        <i class="fa fa-comment"></i> 1 comment
		                    </p>
		                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolore, veritatis, tempora, necessitatibus inventore nisi quam quia repellat ut tempore laborum possimus eum dicta id animi corrupti debitis ipsum officiis rerum.</p>
		                </div>
		            </div>
		            <hr>
		            <!-- Fourth Blog Post -->
		            <div class="row">
		                <div class="col-sm-4 col-md-4">
		                    <div class="blog-thumb">
		                        <a href="#">
		                            <img class="img-responsive" src="images/blog-photo1.jpg" alt="photo">
		                        </a>
		                    </div>
		                </div>
		                <div class="col-sm-8 col-md-8">
		                    <h2 class="blog-title">
		                        <a href="#">Post title 4</a>
		                    </h2>
		                    <p><i class="fa fa-calendar-o"></i> August 28, 2013 
		                       <span class="comments-padding"></span>
		                       <i class="fa fa-comment"></i> 3 comments
		                    </p>
		                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolore, veritatis, tempora, necessitatibus inventore nisi quam quia repellat ut tempore laborum possimus eum dicta id animi corrupti debitis ipsum officiis rerum.</p>
		                </div>
		            </div>

		             <hr>
		            <!-- Fifth Blog Post -->
		            <div class="row">
		                <div class="col-sm-4 col-md-4">
		                    <div class="blog-thumb">
		                        <a href="#">
		                            <img class="img-responsive" src="images/blog-photo2.jpg" alt="photo">
		                        </a>
		                    </div>
		                </div>
		                <div class="col-sm-8 col-md-8">
		                    <h2 class="blog-title">
		                        <a href="#">Post title 5</a>
		                    </h2>
		                    <p><i class="fa fa-calendar-o"></i> August 28, 2013 
		                       <span class="comments-padding"></span>
		                       <i class="fa fa-comment"></i> 3 comments
		                    </p>
		                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolore, veritatis, tempora, necessitatibus inventore nisi quam quia repellat ut tempore laborum possimus eum dicta id animi corrupti debitis ipsum officiis rerum.</p>
		                </div>
		            </div>

		             <hr>
		            <!-- Six Blog Post -->
		            <div class="row">
		                <div class="col-sm-4 col-md-4">
		                    <div class="blog-thumb">
		                        <a href="#">
		                            <img class="img-responsive" src="images/blog-photo3.jpg" alt="photo">
		                        </a>
		                    </div>
		                </div>
		                <div class="col-sm-8 col-md-8">
		                    <h2 class="blog-title">
		                        <a href="#">Post title 6</a>
		                    </h2>
		                    <p><i class="fa fa-calendar-o"></i> August 28, 2013 
		                       <span class="comments-padding"></span>
		                       <i class="fa fa-comment"></i> 3 comments
		                    </p>
		                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolore, veritatis, tempora, necessitatibus inventore nisi quam quia repellat ut tempore laborum possimus eum dicta id animi corrupti debitis ipsum officiis rerum.</p>
		                </div>
		            </div>
		            


		            <hr>
		            <div class="text-center"> 
		                <ul class="pagination"> 
		                    <li class="active"> <a href="#">1</a> </li> 
		                    <li> <a href="#">2</a> </li> 
		                    <li> <a href="#">3</a> </li> 
		                    <li> <a href="#">4</a> </li> 
		                    <li> <a href="#">5</a> </li> 
		                    <li> <a href="#">Next</a> </li> 
		                </ul> 
		            </div>
		        </div>
		            <!-- Blog Sidebar Column -->
		            <aside class="col-md-4 sidebar-padding">
		                <div class="blog-sidebar">
		                    <div class="input-group searchbar">
		                        <input type="text" class="form-control searchbar" placeholder="Search for...">
		                        <span class="input-group-btn">
		                        <button class="btn btn-default" type="button">Search</button>
		                        </span>
		                    </div><!-- /input-group -->
		                </div>
		                <!-- Blog Categories -->
		                <div class="blog-sidebar">
		                    <h4 class="sidebar-title"><i class="fa fa-list-ul"></i> Categories</h4>
		                    <hr>
		                    <ul class="sidebar-list">
		                        <li><a href="#">Applications</a></li>
		                        <li><a href="#">Photography</a></li>
		                        <li><a href="#">Art Design</a></li>
		                        <li><a href="#">Graphic Design</a></li>
		                        <li><a href="#">Category Name</a></li>
		                    </ul>
		                </div>
		                <!-- Recent Posts -->
		                <div class="blog-sidebar">
		                    <h4 class="sidebar-title"><i class="fa fa-align-left"></i> Recent Posts</h4>
		                    <hr style="margin-bottom: 5px;">

		                    <div class="media">
		                        <a class="pull-left" href="#">
		                            <img class="img-responsive media-object" src="images/blog1.jpg" alt="Media Object">
		                        </a>
		                        <div class="media-body">
		                            <h4 class="media-heading"><a href="#">Post title 1</a></h4>
		                            This is some sample text. This is some sample text. This is some sample text.
		                        </div>
		                    </div>

		                    <div class="media">
		                        <a class="pull-left" href="#">
		                            <img class="img-responsive media-object" src="images/blog2.jpg" alt="Media Object">
		                        </a>
		                        <div class="media-body">
		                            <h4 class="media-heading"><a href="#">Post title 2</a></h4>
		                            This is some sample text. This is some sample text. This is some sample text.
		                        </div>
		                    </div>

		                    <div class="media">
		                        <a class="pull-left" href="#">
		                            <img class="img-responsive media-object" src="images/blog3.jpg" alt="Media Object">
		                        </a>
		                        <div class="media-body">
		                            <h4 class="media-heading"><a href="#">Post title 3</a></h4>
		                            This is some sample text. This is some sample text. This is some sample text.
		                        </div>
		                    </div>
		                    <div class="media">
		                        <a class="pull-left" href="#">
		                            <img class="img-responsive media-object" src="images/blog1.jpg" alt="Media Object">
		                        </a>
		                        <div class="media-body">
		                            <h4 class="media-heading"><a href="#">Post title 4</a></h4>
		                            This is some sample text. This is some sample text. This is some sample text.
		                        </div>
		                    </div>
		                </div>

		                <div class="blog-sidebar">
		                    <h4 class="sidebar-title"><i class="fa fa-comments"></i> Recent Comments</h4>
		                    <hr style="margin-bottom: 5px;">
		                     <ul class="sidebar-list">
		                        <li><h5 class="blog-title">Author Name</h5><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore</p>
		                        </li>
		                        <li><h5 class="blog-title">Author Name</h5><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore</p>
		                        </li>
		                        <li><h5 class="blog-title">Author Name</h5><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore</p>
		                        </li>
							</ul>
						</div>

					</aside>
				</div>
		    </section>

	
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


		<!--Jquery Smooth Scrolling-->
        <script>
            $(document).ready(function(){

				$('#myModal2').modal('show');
               

               $(".nav a").on("click", function(){
                     $(".nav").find(".active").removeClass("active");
                    $(this).parent().addClass("active");
            	});

                $('body').append('<div id="toTop" class="btn btn-primary color1"><span class="glyphicon glyphicon-chevron-up"></span></div>');
                    $(window).scroll(function () {
                        if ($(this).scrollTop() != 0) {
                            $('#toTop').fadeIn();
                        } else {
                            $('#toTop').fadeOut();
                        }
                    }); 
                $('#toTop').click(function(){
                    $("html, body").animate({ scrollTop: 0 }, 700);
                    return false;
                });

            });
        </script>

    </body>
</html>