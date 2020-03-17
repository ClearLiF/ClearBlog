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
		<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
		<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
		<!--[if lt IE 9]>
			<script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
			<script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
			<![endif]-->
	</head>
	<body data-spy="scroll">
		<!-- Navigation -->
		<nav class="navbar navbar-inverse navbar-fixed-top">
			<div class="container">
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
						<li class="active"><a href="#home">主页</a></li>
						<li><a href="#about">关于</a></li>
						<li><a href="#servi">服务</a></li>
				<#--		<li><a href="#meet-team">Team</a></li>-->
						<li><a href="#portfolio1">作品</a><li>
						<li><a href="/user/register">注册</a></li>
						<li><a href="/blog/toBlogHome">博客</a></li>
						<li class="dropdown">
							<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">联系站长 <span class="caret"></span></a>
							<ul class="dropdown-menu">
								<li><a href="/user/login">登录</a></li>
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

		<!-- Header Carousel -->
		<header id="home" class="carousel slide">
			/<ul class="cb-slideshow">
				<li><span>image1</span>
					<div class="container">
						<div class="row">
							<div class="col-lg-12">
								<div class="text-center"><h3>欢迎来到Clear博客系统</h3></div>
							</div>
						</div>
						<h4>Clear – 个人博客系统.</h4>
					</div>
				</li>
				<li><span>image2</span>
					<div class="container">
						<div class="row">
							<div class="col-lg-12">
								<div class="text-center"><h3>欢迎来到Clear博客系统</h3></div>
							</div>
						</div>
						<h4>Lorem Ipsum is simply dummy text of typesetting industry.</h4>
					</div>
				</li>
				<li><span>image3</span>
					<div class="container">
						<div class="row">
							<div class="col-lg-12">
								<div class="text-center"><h3>欢迎来到Clear博客系统</h3></div>
							</div>
						</div>
						<h4>Lorem Ipsum is simply dummy text of typesetting industry.</h4>
					</div>
				</li>
				<li><span>Image 04</span>
					<div class="container">
						<div class="row">
							<div class="col-lg-12">
								<div class="text-center"><h3>欢迎来到Clear博客系统</h3></div>
							</div>
						</div>
						<h4>Lorem Ipsum is simply dummy text of typesetting industry.</h4>
					</div>
				</li>
				<li><span>Image 05</span>
					<div class="container">
						<div class="row">
							<div class="col-lg-12">
								<div class="text-center"><h3>感谢使用</h3></div>
							</div>
						</div>
						<h4>Lorem Ipsum is simply dummy text of typesetting industry.</h4>
					</div>
				</li>
				<li><span>Image 06</span>
					<div class="container">
						<div class="row">
							<div class="col-lg-12">
								<div class="text-center"><h3>再一次感谢</h3></div>
							</div>
						</div>
						<h4>Lorem Ipsum is simply dummy text of typesetting industry.</h4>
					</div>
				</li>
			</ul>
			<div class="intro-scroller">
				<a class="inner-link" href="#about">
					<div class="mouse-icon" style="opacity: 1;">
						<div class="wheel"></div>
					</div>
				</a> 
			</div>          
		</header>
			
		<!-- Page Content -->
		<section id="about">
			<div class="container">
				<div class="row">
					<div class="col-md-offset-1 col-md-10">
						<div class="text-center">
							<h2>关于本站</h2>
							<img class="img-responsive displayed" src="${request.contextPath}/blog/images/short.png" alt="Company about"/>
							<div class="row">
								<div class="col-md-12">
									<p>
									最后再写吧<span class="color-elements">ClearLiF</span>
									</p>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>

		<section id="services">
			<div class="orangeback">
				<div class="container">
					<div class="text-center homeport2"><h2>说明</h2></div>
					<div class="row">
						<div class="col-md-12 homeservices1">
							<div class="col-md-3 portfolio-item">
								<div class="text-center">
									<a href="javascript:void(0);">
									<span class="fa-stack fa-lg">
									  <i class="fa fa-circle fa-stack-2x"></i>
									  <i class="fa fa-line-chart fa-stack-1x"></i>
									</span>
									</a>
									<h3><a href="#">发展</a></h3>
									<p>永久免费使用博客系统</p>
								</div>
							</div>
							<div class="col-md-3 portfolio-item">
								<div class="text-center">
									<a href="javascript:void(0);">
									<span class="fa-stack fa-lg">
									  <i class="fa fa-circle fa-stack-2x"></i>
									  <i class="fa fa-users fa-stack-1x"></i>
									</span>
									</a>
									<h3><a href="#contact">合作</a></h3>
									<p>点击联系站长</p>
								</div>
							</div>
							<div class="col-md-3 portfolio-item">
								<div class="text-center">
									<a href="javascript:void(0);">
									<span class="fa-stack fa-lg">
									  <i class="fa fa-circle fa-stack-2x"></i>
									  <i class="fa fa-code fa-stack-1x"></i>
									</span>
									</a>
									<h3><a href="#">代码</a></h3>
									<p>致力于编程交流，以及生活交流</p>
								</div>
							</div>
							<div class="col-md-3 portfolio-item">
								<div class="text-center">
									<a href="javascript:void(0);">
									<span class="fa-stack fa-lg">
									  <i class="fa fa-circle fa-stack-2x"></i>
									  <i class="fa fa-cogs fa-stack-1x"></i>
									</span>
									</a>
									<h3><a href="#">源码获取</a></h3>
									<p> 本站已上传到Github，点此获取</p>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>

		<section id="bloghome">
			<div class="container">
				<div class="text-center"><h2>Latest Blog Posts</h2>
					<img class="img-responsive displayed" src="${request.contextPath}/blog/images/short.png" alt="about">
				</div>
				<div class="row">
					<div class="col-md-12 homeport1">
						<div class="col-md-4 col-sm-12 col-xs-12 portfolio-item">
							<figure class="effect-oscar">
								<img src="images/blog1.jpg" alt="img09" class="img-responsive" />
								<figcaption>
									<h2>Blog Post Long Title</h2>
									<a href="#">View more</a>
								</figcaption>           
							</figure>
							<p class="text-center">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam viverra euismod odio, gravida pellentesque urna varius vitae. Lorem ipsum dolor sit amet.</p>
							<div class="text-center"><a class="btn btn-primary btn-noborder-radius hvr-bounce-to-bottom">Read More</a></div>
						</div>
						<div class="col-md-4 col-sm-12 col-xs-12 portfolio-item">
							<figure class="effect-oscar">
								<img src="${request.contextPath}/blog/images/blog2.jpg" alt="img09" class="img-responsive"/>
								<figcaption>
									<h2>Blog Post Long Title</h2>
									<a href="#">View more</a>
								</figcaption>           
							</figure>
							<p class="text-center">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam viverra euismod odio, gravida pellentesque urna varius vitae. Lorem ipsum dolor sit amet.</p>
							<div class="text-center"><a class="btn btn-primary btn-noborder-radius hvr-bounce-to-bottom">Read More</a></div>
						</div>
						<div class="col-md-4 col-sm-12 col-xs-12 portfolio-item">
							<figure class="effect-oscar">
								<img src="${request.contextPath}/blog/images/blog3.jpg" alt="img09" class="img-responsive"/>
								<figcaption>
									<h2>Blog Post Long Title</h2>
									<a href="#">View more</a>
								</figcaption>           
							</figure>
							<p class="text-center">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam viverra euismod odio, gravida pellentesque urna varius vitae. Lorem ipsum dolor sit amet.</p>
							<div class="text-center"><a class="btn btn-primary btn-noborder-radius hvr-bounce-to-bottom">Read More</a></div>
						</div>
					</div>
				</div>
			</div>
		</section>

		<#--<section id="meet-team">
			<div class="container">
				<div class="text-center">
				<h2>Team Members</h2>
				<img class="img-responsive displayed" src="${request.contextPath}/blog/images/short.png" alt="about">
				</div>
				<div class="row teamspace">
					<div class="col-xs-12 col-sm-6 col-md-3">
						<div class="team-member">
							<div class="team-img">
								<img class="img-responsive" src="${request.contextPath}/blog/images/person1.jpg" alt="">
							</div>
							<div class="team-info">
								<h3>Christian Peri</h3>
								<span>Co-Founder</span>
							</div>
							<p>Backed by some of the biggest names in the industry, Firefox OS is an open platform that fosters greater</p>
							<ul class="social-icons">
								<li><a href="#"><i class="fa fa-facebook"></i></a></li>
								<li><a href="#"><i class="fa fa-twitter"></i></a></li>
								<li><a href="#"><i class="fa fa-google-plus"></i></a></li>
								<li><a href="#"><i class="fa fa-linkedin"></i></a></li>
							</ul>
						</div>
					</div>
					<div class="col-xs-12 col-sm-6 col-md-3">
						<div class="team-member">
							<div class="team-img">
								<img class="img-responsive" src="${request.contextPath}/blog/images/person1.jpg" alt="">
							</div>
							<div class="team-info">
								<h3>Jane Manz</h3>
								<span>Project Manager</span>
							</div>
							<p>Backed by some of the biggest names in the industry, Firefox OS is an open platform that fosters greater</p>
							<ul class="social-icons">
								<li><a href="#"><i class="fa fa-facebook"></i></a></li>
								<li><a href="#"><i class="fa fa-twitter"></i></a></li>
								<li><a href="#"><i class="fa fa-google-plus"></i></a></li>
								<li><a href="#"><i class="fa fa-linkedin"></i></a></li>
							</ul>
						</div>
					</div>
					<div class="col-xs-12 col-sm-6 col-md-3">
						<div class="team-member">
							<div class="team-img">
								<img class="img-responsive" src="${request.contextPath}/blog/images/person1.jpg" alt="">
							</div>
							<div class="team-info">
								<h3>Paulinho Rubos</h3>
								<span>Designer</span>
							</div>
							<p>Backed by some of the biggest names in the industry, Firefox OS is an open platform that fosters greater</p>
							<ul class="social-icons">
								<li><a href="#"><i class="fa fa-facebook"></i></a></li>
								<li><a href="#"><i class="fa fa-twitter"></i></a></li>
								<li><a href="#"><i class="fa fa-google-plus"></i></a></li>
								<li><a href="#"><i class="fa fa-linkedin"></i></a></li>
							</ul>
						</div>
					</div>
					<div class="col-xs-12 col-sm-6 col-md-3">
						<div class="team-member">
							<div class="team-img">
								<img class="img-responsive" src="${request.contextPath}/blog/images/person1.jpg" alt="">
							</div>
							<div class="team-info">
								<h3>Loreto Andas</h3>
								<span>Developer</span>
							</div>
							<p>Backed by some of the biggest names in the industry, Firefox OS is an open platform that fosters greater</p>
							<ul class="social-icons">
								<li><a href="#"><i class="fa fa-facebook"></i></a></li>
								<li><a href="#"><i class="fa fa-twitter"></i></a></li>
								<li><a href="#"><i class="fa fa-google-plus"></i></a></li>
								<li><a href="#"><i class="fa fa-linkedin"></i></a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</section>-->


		<section id="portfolio1">
		<div class="container">
		<div class="row">
			<div class="text-center">
			<h2>博客导航</h2>
			<img class="img-responsive displayed" src="${request.contextPath}/blog/images/short.png" alt="about">
			</div>

			<ul class="filter nav nav-pills">
			  <li data-value="all" ><a class="active" href="#">所有</a></li>
			  <li data-value="development"><a href="#">技术文档</a></li>
			  <li data-value="webdesign"><a href="#">生活</a></li>
			  <li data-value="mobileapps"><a href="#">Mobile Apps</a></li>
			</ul>
 
			<ul class="port2">
			  <li data-type="development" data-id="id-1" class="port3">
				<a href="#" id="development1"><img src="${request.contextPath}/blog/images/port1.jpg" alt=""></a></li>
			  <li data-type="webdesign" data-id="id-2" class="port3">
				<a href="#" id="webdesign1"><img src="${request.contextPath}/blog/images/port2.jpg" alt=""></a>
			  </li>
			  <li data-type="mobileapps" data-id="id-3" class="port3">
				<a href="#" id="mobileapps1"><img src="${request.contextPath}/blog/images/port3.jpg" alt=""></a>
			  </li>
				<li data-type="development" data-id="id-4" class="port3">
				<a href="#" id="development2"><img src="${request.contextPath}/blog/images/port4.jpg" alt=""></a>
			  </li>
			  <li data-type="webdesign" data-id="id-5" class="port3">
				<a href="#" id="webdesign2"><img src="${request.contextPath}/blog/images/port5.jpg" alt=""></a>
			  </li>
			  <li data-type="mobileapps" data-id="id-6" class="port3">
				<a href="#" id="mobileapps2"><img src="${request.contextPath}/blog/images/port6.jpg" alt=""></a>
			  </li>
			</ul>
		  </div> 
		</div>
		</section>

		

		<section id="contact">
			<div class="container"> 
				<div class="row">

				</div>
			</div>
		</section>

		<section id="follow-us">
			<div class="container"> 
				<div class="text-center height-contact-element">
					<h2>联系我们</h2>
				</div>
				<img class="img-responsive displayed" src="images/short.png" alt="short" />
				<div class="text-center height-contact-element">
					<ul class="list-unstyled list-inline list-social-icons">
						<li class="active"><a href="#"><i class="fa fa-facebook social-icons"></i></a></li>
						<li><a href="#"><i class="fa fa-twitter social-icons"></i></a></li>
						<li><a href="#"><i class="fa fa-google-plus social-icons"></i></a></li>
						<li><a href="#"><i class="fa fa-linkedin social-icons"></i></a></li>
					</ul>
				</div>
			</div>
		</section>


		<div class="modal fade " id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
						<h4 class="modal-title" id="myModalLabel">提示</h4>
					</div>
					<div class="modal-body">
						<div style="width: 300px;height: 20em">已经滑到最底  是否注册一个用户或登录</div></div>
					<div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
						<a href="/user/register" class="btn btn-primary">注册</a>
						<a href="" class="btn btn-primary">登录</a>
					</div>
				</div>
			</div>
		</div>
		<footer id="footer">
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

		
		<!-- Portfolio -->
		<script src="${request.contextPath}/blog/js/jquery.quicksand.js"></script>
	

		<!--Jquery Smooth Scrolling-->
		<script>
			$(document).ready(function(){
				$('.custom-menu a[href^="#"], .intro-scroller .inner-link').on('click',function (e) {
					e.preventDefault();

					var target = this.hash;
					var $target = $(target);

					$('html, body').stop().animate({
						'scrollTop': $target.offset().top
					}, 900, 'swing', function () {
						window.location.hash = target;
					});
				});

				$('a.page-scroll').bind('click', function(event) {
					var $anchor = $(this);
					$('html, body').stop().animate({
						scrollTop: $($anchor.attr('href')).offset().top
					}, 1500, 'easeInOutExpo');
					event.preventDefault();
				});

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

		<script>
		function gallery(){};

		var $itemsHolder = $('ul.port2');
		var $itemsClone = $itemsHolder.clone(); 
		var $filterClass = "";
		$('ul.filter li').click(function(e) {
		e.preventDefault();
		$filterClass = $(this).attr('data-value');
			if($filterClass == 'all'){ var $filters = $itemsClone.find('li'); }
			else { var $filters = $itemsClone.find('li[data-type='+ $filterClass +']'); }
			$itemsHolder.quicksand(
			  $filters,
			  { duration: 1000 },
			  gallery
			  );
		});

		$(document).ready(gallery);
		</script>


		<script type="text/javascript">
	$(document).ready(function(){

		//判定是否滑到了页面最下方
		$(window).scroll(function(){
			var scrollTop = $(this).scrollTop();

			var scrollHeight = $(document).height();
			var windowHeight = $(this).height();
			//console.log(scrollHeight+" "+windowHeight+" "+scrollTop);
			if(scrollTop + windowHeight+20>= scrollHeight){
				$('#myModal').modal('show');
				setTimeout("$('#myModal').modal('hide')",6000);
				//setTimeout("this",5000);

			}
		});


		$('#contactForm').on('submit', function(e){
			e.preventDefault();
			e.stopPropagation();

			// get values from FORM
			var name = $("#name").val();
			var email = $("#email").val();
			var message = $("#message").val();
			var goodToGo = false;
			var messgaeError = '请求无效';
			var pattern = new RegExp(/^(('[\w-\s]+')|([\w-]+(?:\.[\w-]+)*)|('[\w-\s]+')([\w-]+(?:\.[\w-]+)*))(@((?:[\w-]+\.)*\w[\w-]{0,66})\.([a-z]{2,6}(?:\.[a-z]{2})?)$)|(@\[?((25[0-5]\.|2[0-4][0-9]\.|1[0-9]{2}\.|[0-9]{1,2}\.))((25[0-5]|2[0-4][0-9]|1[0-9]{2}|[0-9]{1,2})\.){2}(25[0-5]|2[0-4][0-9]|1[0-9]{2}|[0-9]{1,2})\]?$)/i);


			 if (name && name.length > 0 && $.trim(name) !='' && message && message.length > 0 && $.trim(message) !='' && email && email.length > 0 && $.trim(email) !='') {
				  if (pattern.test(email)) {
					 goodToGo = true;
				  } else {
					 messgaeError = '请检查你的电子邮箱';
					 goodToGo = false; 
				  }
			 } else {
			   messgaeError = '您必须填满所有字段';
			   goodToGo = false;
			 }

			 
			if (goodToGo) {
			   $.ajax({
				 data: $('#contactForm').serialize(),
				 beforeSend: function() {
				   $('#success').html('<div class="col-md-12 text-center"><img src="${request.contextPath}/blog/images/spinner1.gif" alt="spinner" /></div>');
				 },
				 success:function(response){
				   if (response==1) {
					 $('#success').html('<div class="col-md-12 text-center">Your email was sent successfully</div>');
					 window.location.reload();
				   } else {
					 $('#success').html('<div class="col-md-12 text-center">E-mail was not sent. Please try again!</div>');
				   }
				 },
				 error:function(e){
				   $('#success').html('<div class="col-md-12 text-center">We could not fetch the data from the server. Please try again!</div>');
				 },
				 complete: function(done){
				   console.log('Finished');
				 },
				 type: 'POST',
				 url: 'js/send_email.php', 
			   });
			   return true;
			} else {
			   $('#success').html('<div class="col-md-12 text-center">'+messgaeError+'</div>');
			   return false;
			}
			return false;
		});
	});

</script>


</body>
</html>




