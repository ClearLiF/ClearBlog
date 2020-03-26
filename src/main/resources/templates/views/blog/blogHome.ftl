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
					<a class="navbar-brand" href="/blog/home"><img src="${request.contextPath}/blog/images/clear.png" alt="company logo" /></a>
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
								<li><a href="<#if user=='null'>/user/login<#else>/user/logOut</#if> "><#if user=='null'>登录<#else>退出登录</#if> </a></li>
								<li role="separator" class="divider"></li>
								<li class="dropdown-header">联系站长</li>
								<li><a href="#">给站长送吃的</a></li>
								<li><a href="#">给站长吐槽</a></li>
							</ul>
						</li>
						<li>
							<#if user!='null'>
								<a href="/blog/toBlogEdit"><span  class="glyphicon glyphicon-paperclip"></span>写文章</a>
							</#if>
						</li>
					</ul>
				</div>
			</div>
		</nav>
		<#--提示信息-->
		<div class="modal fade" tabindex="-1" role="dialog" id="myModal2">
			<div class="modal-dialog modal-lg" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
						<h4 class="modal-title">欢迎</h4>
					</div>
					<div class="modal-body ">
						<p style="color: black"><#if user=='null'>您还没登录，点击右上角登录<#else>欢迎${user.name!"默认"}用户</#if></p>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
						<button type="button" class="btn btn-primary">Save changes</button>
					</div>
				</div><!-- /.modal-content -->
			</div><!-- /.modal-dialog -->
		</div><!-- /.modal -->
		<div id="typeInfo">
			<div id="alert1" class="alert alert-info alert-dismissible" role="alert" style="padding-top: 110px">
				<p id="typep" value="" class="text-center"><strong>当前所在类型</strong></p>
			</div>
		</div>

		<!-- Page Content -->
		<section class="container blog">
			<div class="row ">
		        <!-- Blog Column -->
		        <div class="col-md-8" id="bloghomes">
		            <h1 id="begin" class="page-header sidebar-title">
		                博客主页
		            </h1>

			<#--		<hr>
		            <!-- First Blog Post &ndash;&gt;
		            <div class="row clear">
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
		            <!-- Second Blog Post &ndash;&gt;
		            <div class="row clear">
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
		            </div>-->


		            

					<#--分页位置-->
		            <hr>
					<div id="pageaction" class="pagination" >

		             <ul id="pageaction" class="pagination">
						 <li> <a href="#">Next</a> </li>
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
		                <div class="blog-sidebar"><span id="htmer_time" ></span></div>
						<div class="blog-sidebar">
		                    <div class="input-group searchbar">
		                        <input type="text" class="form-control searchbar" placeholder="Search for...">
		                        <span class="input-group-btn">
		                        <button class="btn btn-default" type="button">查找</button>
		                        </span>
		                    </div><!-- /input-group -->
		                </div>
		                <!-- Blog Categories -->
		                <div class="">
		                    <h4 class="sidebar-title"><i class="fa fa-list-ul"></i> 分类</h4>
		                    <hr>
							<#--设置菜单-->
							<div class="tree well">
								<ul>
									<li>
										<span><i class="icon-folder-open"></i> 点此展开</span> <a href="">展开</a>
										<ul>
								<#if sort??>
									<#list sort as values>
										<li>
											<span><i class="glyphicon glyphicon-plus-sign"></i> ${values.name}</span> <a href=""></a>
											<ul>
												<#list values.sorts as sorts>
													<li>
														<a href="javascript:toPage(1,'${sorts.name}','${sorts.id}');"><span><i class="icon-leaf"></i> ${sorts.name}</span></a>
													</li>
												</#list>
											</ul>
										</li>

									</#list>

								</#if>
										</ul>
									</li>
								</ul>



							</div>

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

		               <#-- <div class="blog-sidebar">
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
						</div>-->

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
		<script src="${request.contextPath}/blog/js/bootstrap-paginator.min.js"></script>

		<!--Jquery Smooth Scrolling-->
        <script>
			var DATA ;
			var pageSizeNum = 7;
			function toPage(num,type,id){
				var typeId='';
				if (typeof type == "undefined" || type == null || type == ""){
					//console.log(type);
					$("#typep").html('当前为主页面');
				}else {
					//console.log(type);
					$("#typep").html('当前为'+type+'类型').val(id);
					//typeId=id;
				}
				typeId =$("#typep").val();
				if (typeof typeId == "undefined" || typeId == null || typeId == ""){
					typeId='undefined';
				}
				//console.log($("#typep").val());
				$.ajax({
					url:'${request.contextPath}/page/'+typeId+'/'+num,
					type:'POST',
					data:{
						'pageNum':num, //第几页
						'typeId':typeId
					},
					success:function(data){
						//console.log(data);
						DATA=data;
						$(".clear").empty();
						$("#myhr").hide();
						//console.log($("#myhr"));;
						$.each(data.rows,function (key,value) {

							addhtml(value);
						});
						initPage();
						//$("#bloghomes").append(data);
					}
				});}
			//查看当前页的分组
			function searchGroup(current,pageSize) {
				//var current = DATA.currentPage;
				//var pageSize = DATA.pageSize;
				return Math.ceil(current/pageSize);

			}
			//总分组
			function allGroup(pageSize) {
				return Math.ceil(pageSize/pageSizeNum);

			}

			function addhtml(value){
				var html = [];
				/*<div class="clear" style="width:1000px;height:1px;border-top:solid rgb(0,0,0) 1px;"></div>*/
				html.push('  <div class="clear"><hr class="clear"></div> <div class="row clear">' +
						'               <div class="col-sm-4 col-md-4 ">' +
						'                   <div class="blog-thumb">' +
						'                       <a href="/blog/view?blogId='+value.id+'">' +
						'                           <img class="img-responsive" src="'+value.icon+'" alt="photo">\n' +
						'                       </a>' +
						'                    </div>' +
						'               </div>' +
						'               <div class="col-sm-8 col-md-8">' +
						'                   <h2 class="blog-title" style="font-size: 20px">' +
						'                        <a href="/blog/view?blogId='+value.id+'">'+value.title+'</a>&nbsp;&nbsp;<span class="glyphicon glyphicon-tags"  aria-hidden="true">'+value.sortArticle.sort.name+'</span>' +
						'                   </h2>\n' +
						'                   <p><i class="fa fa-calendar-o"></i>  '+dateFormat(value.createtime)+' \n' +
						'                       <span class="comments-padding"></span>' +
						'                       <i class="fa fa-comment"></i> 0 comments' +
						'                   </p>' +
						'                    <p>作者:'+value.user.name+'</p>' +
						'               </div>' +
						'            </div>' +
						'           ');
				html = html.join('');
				$("#begin").append(html)
			}
			function dateFormat(longTypeDate){
				var dateTypeDate = "";
				var date = new Date();
				date.setTime(longTypeDate);
				dateTypeDate += date.getFullYear(); //年
				dateTypeDate += "-" + getMonth(date); //月
				dateTypeDate += "-" + getDay(date); //日
				return dateTypeDate;
			}
			function getMonth(date){
				var month = "";
				month = date.getMonth() + 1; //getMonth()得到的月份是0-11
				if(month<10){
					month = "0" + month;
				}
				return month;
			}
			//返回01-30的日期
			function getDay(date){
				var day = "";
				day = date.getDate();
				if(day<10){
					day = "0" + day;
				}
				return day;
			}
			function initPage() {
				$('#pageaction').empty();
				var html = [];
				var nowGroup = searchGroup(DATA.currentPage,pageSizeNum);
				//console.log(nowGroup);
				if (nowGroup-1!==0){
					html.push(' <li> <a href="javascript:pagebar2(0);">前一页</a> </li>\n');
				}
				//123[1组]   456[2组]
				if (nowGroup*pageSizeNum<=DATA.totalPages){
					for (let i = nowGroup*pageSizeNum-pageSizeNum+1; i <=nowGroup*pageSizeNum+1 ; i++) {
						if (i===DATA.currentPage){
							html.push(' <li class="active"> <a href="javascript:toPage('+i+');">'+i+'</a> </li>\n');
						}else {
							html.push(' <li> <a href="javascript:toPage('+i+');">'+i+'</a> </li>\n');
						}
					}
				}else {
					for (let i = nowGroup*pageSizeNum-pageSizeNum+1; i <= DATA.totalPages; i++) {
						if (i===DATA.currentPage){
							html.push(' <li class="active"> <a href="javascript:toPage('+i+');">'+i+'</a> </li>\n');
						}else {
							html.push(' <li> <a href="javascript:toPage('+i+');">'+i+'</a> </li>\n');

						}
					}
				}
				//console.log(nowGroup+'  '+allGroup(DATA.totalPages));
				if (nowGroup+1<=allGroup(DATA.totalPages)){
					html.push(' <li> <a href="javascript:pagebar2(1);">后一页</a> </li>\n');

				}
				//html.push(' <li> <a href="#">Next</a> </li>\n')
				html = html.join('');
				$("#pageaction").append(html);
			}
			function pagebar2(type) {
				$('#pageaction').empty();
				var nowGroup = searchGroup(DATA.currentPage,pageSizeNum);
				//var allGroup =Math.ceil(DATA.totalPages/pageSizeNum);
				if (type===0){
					toPage(DATA.currentPage-pageSizeNum);
				}else {
					toPage(nowGroup*pageSizeNum+1);
				}
			}
			//已过时
			function pagebar(type) {
				var html =[];
				$('#pageaction').empty();

				var nowGroup = searchGroup(DATA.currentPage,pageSizeNum);
				//console.log(nowGroup);
				if (type===0){
					nowGroup=nowGroup-1;
					if (nowGroup-1!==0){
						html.push(' <li> <a href="javascript:pagebar(0);">前一页</a> </li>\n');
					}
					//123[1组]   456[2组]
					if (nowGroup*pageSizeNum<=DATA.totalPages){
						for (let i = nowGroup*pageSizeNum-pageSizeNum+1; i <nowGroup*pageSizeNum+1 ; i++) {
							if (i===DATA.currentPage-pageSizeNum){
								html.push(' <li class="active"> <a href="javascript:toPage('+i+')">'+i+'</a> </li>\n');
								toPage(i);
							}else {
								html.push(' <li> <a href="javascript:toPage('+i+')">'+i+'</a> </li>\n');
							}
						}
					}/*else {
						for (let i = nowGroup*pageSizeNum-pageSizeNum+1; i < DATA.totalPages; i++) {
							if (i===DATA.currentPage){
								html.push(' <li class="active"> <a href="javascript:toPage('+i+')">'+i+'</a> </li>\n');
								toPage(i);
							}else {
								html.push(' <li> <a href="javascript:toPage('+i+')">'+i+'</a> </li>\n');
							}

						}
					}*/
					//if (nowGroup+2!==allGroup(DATA.totalPages)){
					html.push(' <li> <a href="javascript:pagebar(1);">后一页</a> </li>\n');

				}else if(type===1){
					//DATA.currentPage=DATA.currentPage+pageSizeNum;
					/*	if (nowGroup-2!==0){*/

					//nowGroup=nowGroup+1;
					html.push(' <li> <a href="#">前一页</a> </li>\n');

					//123[1组]   456[2组]
					if (nowGroup*pageSizeNum+pageSizeNum<=DATA.totalPages){
						for (let i = nowGroup*pageSizeNum-pageSizeNum+1; i <nowGroup*pageSizeNum+1 ; i++) {
							if (i===DATA.currentPage-pageSizeNum){
								html.push(' <li class="active"> <a href="javascript:toPage('+i+')">'+i+'</a> </li>\n');
								toPage(i);
							}else {
								html.push(' <li> <a href="javascript:toPage('+i+')">'+i+'</a> </li>\n');
							}
						}
					}else {
						for (let i = nowGroup*pageSizeNum-pageSizeNum+1; i < DATA.totalPages; i++) {
							html.push(' <li> <a href="#">'+i+'</a> </li>\n');
						}
					}
					if (nowGroup+2!==allGroup(DATA.totalPages)){
						html.push(' <li> <a href="javascript:pagebar(1);">后一页</a> </li>\n');
					}
				}
				html = html.join('');
				$("#pageaction").append(html);
			}
            $(document).ready(function(){

            	/*

            	$('.modal-body').empty();

				console.log($('.modal-title').innerHTML);*/

				toPage(1);
				$('#myModal2').modal('show');
				//123456下一页


				//跳转第几页

					//改变页码按钮


				function onclickPage(num) {



				}

				$(".nav a").on("click", function(){
                     $(".nav").find(".active").removeClass("active");
                    $(this).parent().addClass("active");
            	});

                $('body').append('<div id="toTop" class="btn btn-primary color1"><span class="glyphicon glyphicon-chevron-up">返回顶部</span></div>');
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

				$('.tree li:has(ul)').addClass('parent_li').find(' > span').attr('title', 'Collapse this branch');
				$('.tree li.parent_li > span').on('click', function (e) {
					var children = $(this).parent('li.parent_li').find(' > ul > li');
					if (children.is(":visible")) {
						children.hide('fast');									//glyphicon glyphicon-plus-sign
						$(this).attr('title', 'Expand this branch').find(' > i').addClass('glyphicon-plus-sign').removeClass('glyphicon-minus-sign');
					} else {
						children.show('fast');
						$(this).attr('title', 'Collapse this branch').find(' > i').addClass('icon-minus-sign').removeClass('icon-plus-sign');
					}
					e.stopPropagation();
				});
            });
			function secondToDate(second) {
				if (!second) {
					return 0;
				}
				var time = new Array(0, 0, 0, 0, 0);
				if (second >= 365 * 24 * 3600) {
					time[0] = parseInt(second / (365 * 24 * 3600));
					second %= 365 * 24 * 3600;
				}
				if (second >= 24 * 3600) {
					time[1] = parseInt(second / (24 * 3600));
					second %= 24 * 3600;
				}
				if (second >= 3600) {
					time[2] = parseInt(second / 3600);
					second %= 3600;
				}
				if (second >= 60) {
					time[3] = parseInt(second / 60);
					second %= 60;
				}
				if (second > 0) {
					time[4] = second;
				}
				return time;
			}
			function setTime() {
				var create_time = Math.round(new Date(Date.UTC(2020, 02, 20, 11, 42, 23)).getTime() / 1000);
				var timestamp = Math.round((new Date().getTime() + 8 * 60 * 60 * 1000) / 1000);
				currentTime = secondToDate((timestamp - create_time));
				currentTimeHtml = 'Clear博客已经运行：' + currentTime[0] + '年 ' + currentTime[1] + '天 '
						+ currentTime[2] + '时 ' + currentTime[3] + '分 ' + currentTime[4]
						+ '秒';
				document.getElementById("htmer_time").innerHTML = currentTimeHtml;
			}    setInterval(setTime, 1000);

        </script>

    </body>
</html>