<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>博客详情页面</title>

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
    <link rel="stylesheet" href="${request.contextPath}/blog/editormd/css/editormd.css" />
    <link rel="shortcut icon"  type="image/x-icon" />
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
                        <li><a href="<#if user=='null'>/user/login<#else>/user/myself</#if> "><#if user=='null'>登录<#else>个人中心</#if> </a></li>
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


<!-- Page Content -->
<section class="container blog">
    <div class="row " >
        <!-- Blog Column -->
        <div class="col-md-8" id="bloghomes">
            <h1 id="begin" class="page-header sidebar-title">
                ${md.title}
            </h1>
            <div class="panel-body content editormd-preview-theme-dark" id="content" >
                <label>
                    <textarea style="display:none;">${md.body}</textarea>
                </label>
            </div>

        </div>



        <!-- Blog Sidebar Column -->
        <aside class="col-md-4 sidebar-padding">
            <div class="blog-sidebar">
                <div class="input-group searchbar">
                    <span class="input-group-btn">
                        作者:<a href=""></a>
		                        </span>
                </div><!-- /input-group -->
            </div>
            <!-- Blog Categories -->
            <div class="">
                <h4 class="sidebar-title"><i class="fa fa-list-ul"></i> 作者:${author!""}</h4>
                <hr>
                <#if articles??>
                    <div class="blog-sidebar">
                    <h4 class="sidebar-title"><i class="fa fa-align-left"></i> 作者的其他文章</h4>
                    <hr style="margin-bottom: 5px;">
                    <#list articles as article>
                            <div class="media">
                                <a class="pull-left" href="/blog/view?blogId=${article.id}">
                                    <img class="img-responsive media-object" src="${article.icon}" alt="Media Object">
                                </a>
                                <div class="media-body">
                                    <h4 class="media-heading"><a href="/blog/view?blogId=${article.id}">${article.title}</a></h4>
                                </div>
                            </div>
                    </#list>
            </div>
                </#if>
                <#--设置菜单-->

            </div>

        </aside>
        <div class="input-group col-md-8">
            <span class="input-group-addon" id="basic-addon1">评论</span>
            <input type="text" id="commentText"  style="color: black" class="form-control" placeholder="Username" aria-describedby="basic-addon1">
        </div>
        <div class="comments1 col-md-8" id="commentId">
            <div class="well hidden" id="commentReal">
                <h4 >写下留言:</h4>
                <form>
                    <div class="form-group">
                        <textarea id="commentArea" style="color: black" class="form-control" rows="3"></textarea>
                    </div>
                    <button id="submitBtn" type="button" onclick="submitComment('${md.id}','',<#if user!='null'>'${user.name}'<#else >'默认用户'</#if>);" class="btn btn-primary">Submit</button>
                </form>
            </div>
            <hr>


           <#-- <div class="media">
                <a class="pull-left" href="#">
                    <img class="media-object" src="images/avatar1.png" alt="">
                </a>
                <div class="media-body">
                    <div >
                    <h4 class="media-heading ">Author Name
                        <small>August 25, 2014 at 9:30 PM</small><a class="offset1">点此评论</a>
                    </h4>
                    </div>
                    Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin commodo. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis. Fusce condimentum nunc ac nisi vulputate fringilla. Donec lacinia congue felis in faucibus.
                </div>
            </div>
            <div class="media">
                <a class="pull-left" href="#">
                    <img class="media-object" src="images/avatar1.png" alt="">
                </a>
                <div class="media-body">
                    <h4 class="media-heading">Author Name
                        <small>August 25, 2014 at 9:30 PM</small>
                    </h4>
                    Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin commodo. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis. Fusce condimentum nunc ac nisi vulputate fringilla.
                    <div class="media">
                        <a class="pull-left" href="#">
                            <img class="media-object" src="images/avatar1.png" alt="">
                        </a>
                        <div class="media-body">
                            <h4 class="media-heading">Author Name
                                <small>August 25, 2014 at 9:30 PM</small>
                            </h4>
                            Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin commodo. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis. Fusce condimentum nunc ac nisi vulputate fringilla. Donec lacinia congue felis in faucibus.

                        </div>
                    </div>
                </div>
            </div>-->
        </div>
    </div>

</section>


<#--<footer id="footer" style="position: fixed;bottom: 0">
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
</footer>-->

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
<script src="${request.contextPath}/blog/editormd/lib/marked.min.js"></script>
<script src="${request.contextPath}/blog/editormd/lib/prettify.min.js"></script>
<script src="${request.contextPath}/blog/editormd/lib/raphael.min.js"></script>
<script src="${request.contextPath}/blog/editormd/lib/underscore.min.js"></script>
<script src="${request.contextPath}/blog/editormd/lib/sequence-diagram.min.js"></script>
<script src="${request.contextPath}/blog/editormd/lib/flowchart.min.js"></script>
<script src="${request.contextPath}/blog/editormd/editormd.min.js"></script>

<!--Jquery Smooth Scrolling-->
<script>
    //显示评论
   /* function showComment(comment) {
        var commentId = comment.
    }*/
    var parentComments = [];
    var childComment = [];

   function getComment(articleId) {
       $.ajax({
           url:'${request.contextPath}/comment/getComment',
           type:'POST',
           data:{
               'articleId':articleId, //文章id
           },
           success:function(data){
               showComment(data);

           }
       })
   }

   function showComment(data)  {
       $.each(data,function (index,element) {
           if (element.parentComment==='0'){
               parentComments.push(element);
                showParent(element);
           }else {
               childComment.push(element);
           }

       })
       console.log(childComment);
       console.log(parentComments);
        while (childComment.length!=0){
            for(var i = childComment.length-1;i >= 0;i--){
                var element = childComment[i];
                var pid = element.parentComment;
                //console.log(pid);
                var parent = findParent(pid);
                //console.log(parent);
                if (parent==-1){
                }else {
                    console.log("测试");
                    showChild(element,parent);
                    //indexs.push(index);
                    childComment.splice(i,1);
                    parentComments.push(element);
                }
            }
       /*     $.each(childComment,function (index,element) {
                var pid = element.parentComment;
                //console.log(pid);
               var parent = findParent(pid);
                //console.log(parent);
                if (parent==-1){
                }else {
                    console.log("测试");
                    showChild(element,parent);
                    indexs.push(index);
                   // childComment.splice(index,1);
                    parentComments.push(element);
                }
            })
            $.each()*/

        }

   }
   function findParent(pid) {
       var type= -1;
       $.each(parentComments,function (index2,element2) {
           //console.log(element2);
           if (pid===element2.id){// console.log(pid+'----------------'+element2.id);
               type =element2;
           }
       })
        return type;
   }
    //显示父节点评论
   function showParent(data) {

       var userName = data.user.name
       var time = dateFormat(data.createtime);
       var html =[];
       html.push(' <div class="media">' +
           '                <a class="pull-left" href="#">' +
           '                    <img class="media-object" src="images/avatar1.png" alt="">' +
           '                </a>' +
           '                <div id="'+data.id+'" class="media-body parent">' +
           '                    ' +
           '                    <h4 class="media-heading ">' +userName+
           '                        <small>'+time+'</small><a onclick="subOnclick(\''+userName+'\',\''+data.id+'\')" href="javascript:void(0);" class="offset1">点此评论</a>' +
           '                    </h4>' +
           '                    '
                             +data.body+'' +
           '                   <div class="form-group hidden"><input style="color: black"  type="text" class="form-control" placeholder="Username" aria-describedby="basic-addon1">' +
           '                       <button type="button" onclick="subCommit(\''+data.articleId+'\',\''+data.id+'\',\''+userName+'\')" class="btn btn-primary">提交</button></div>'+

           '                   </div>' +
           '            </div>');
       html = html.join('');
       $("#commentId").append(html);
   }
   //显示子节点评论
   function showChild(data,data2) {
       var userName = data.user.name;
       var userName2 =data2.user.name;
       var time = dateFormat(data.createtime);
       var html=[];
       html.push(' <div class="media">' +
           '                <a class="pull-left" href="#">' +
           '                    <img class="media-object" src="images/avatar1.png" alt="">' +
           '                </a>' +
           '                <div id="'+data.id+'" class="media-body">' +
           '                    ' +
           '                    <h4 class="media-heading ">' +userName+'评论->'+userName2+
           '                      评论  <small>'+time+'</small><a onclick="subOnclick(\''+userName+'\',\''+data.id+'\')" href="javascript:void(0);" class="offset1">点此评论</a>' +
           '                    </h4>' +
           '                    '
           +data.body+'' +
           '                   <div class="form-group hidden"><input  style="color: black"  type="text" class="form-control" placeholder="Username" aria-describedby="basic-addon1">' +
           '                       <button type="button" onclick="subCommit(\''+data.articleId+'\',\''+data.id+'\',\''+userName+'\')" class="btn btn-primary">提交</button></div>'+
           '                   </div>' +
           '            </div>')
       html = html.join('');
       var obj = $('#'+data2.id);
       //obj.children('div').addClass('hidden');
       while(!obj.hasClass("parent")){
           obj=obj.parent();
       }
       obj.append(html);
   }
   var testEditor;


    $('#commentText').on("click",function () {
        $(this).parent().addClass("hidden");
        $('#commentReal').removeClass('hidden');
        $('#commentReal').find('h4').text("写下留言:")
    });
    function subOnclick(username,pid) {
       /* $('#commentText').parent().addClass("hidden");
        $('#commentReal').removeClass('hidden').val();
        $('#commentReal').find('h4').text('对'+username+'评论');*/
        //console.log(pid) ;
         var str='#'+pid;
        //console.log($(document.getElementById(str)).children('div').removeClass('hidden'));
        $(str).children('div').removeClass('hidden');

    }
    function subCommit(articleId,pid,userName) {
        //console.log(articleId+pid+userName);
        var str='#'+pid;
        var comment =$(str).find('input').val();
        if (typeof comment == "undefined" || comment == null || comment === ""){
            alert("评论不能为空");
        }else {
            $.ajax({
                url:'${request.contextPath}/comment/save',
                type:'POST',
                data:{
                    'articleId':articleId,
                    'comment':comment,
                    'pid':pid,
                    'user':<#if user!='null'>'${user.id}'<#else >''</#if>
                },
                success:function (data) {
                    console.log(data.commentId);
                    var time = dateFormat(data.time);
                    var html=[];
                    html.push(' <div class="media">' +
                        '                <a class="pull-left" href="#">' +
                        '                    <img class="media-object" src="images/avatar1.png" alt="">' +
                        '                </a>' +
                        '                <div id="'+data.commentId+'" class="media-body">' +
                        '                    ' +
                        '                    <h4 class="media-heading ">您给' +userName+
                        '                      评论  <small>'+time+'</small><a onclick="subOnclick(\''+userName+'\',\''+data.commentId+'\')" href="javascript:void(0);" class="offset1">点此评论</a>' +
                        '                    </h4>' +
                        '                    '
                        +comment+'' +
                        '                   <div class="form-group hidden"><input  style="color: black"  type="text" class="form-control" placeholder="Username" aria-describedby="basic-addon1">' +
                        '                       <button type="button" onclick="subCommit(\''+articleId+'\',\''+data.commentId+'\',\''+userName+'\')" class="btn btn-primary">提交</button></div>'+

                        '                   </div>' +
                        '            </div>')
                    html = html.join('');
                    var obj = $('#'+pid);
                    obj.children('div').addClass('hidden');
                    while(!obj.hasClass("parent")){
                        obj=obj.parent();
                    }
                    obj.append(html);
                    //$('#'+pid).parent('')

                }
            })
        }

    }
    function submitComment(articleId,pid,userName) {
        var comment = $('#commentArea').val();
        if (typeof comment == "undefined" || comment == null || comment === ""){
            alert("评论不能为空");
        }else {
            $.ajax({
                url:'${request.contextPath}/comment/save',
                type:'POST',
                data:{
                    'articleId':articleId, //文章id
                    'comment':comment,//评论内容
                    'pid':pid,
                    'user':<#if user!='null'>'${user.id}'<#else >''</#if>
                },
                success:function(data){
                    //console.log(data);
                    var time = dateFormat(data.time);
                    var html =[];
                    html.push(' <div class="media">' +
                        '                <a class="pull-left" href="#">' +
                        '                    <img class="media-object" src="images/avatar1.png" alt="">' +
                        '                </a>' +
                        '                <div id="'+data.commentId+'" class="media-body parent">' +
                        '                    ' +
                        '                    <h4 class="media-heading ">' +userName+
                        '                        <small>'+time+'</small><a onclick="subOnclick(\''+userName+'\',\''+data.commentId+'\')" href="javascript:void(0);" class="offset1">点此评论</a>' +
                        '                    </h4>' +
                        '                    '
                                            +comment+'' +
                        '                   <div class="form-group hidden"><input  type="text" class="form-control" placeholder="Username" aria-describedby="basic-addon1">' +
                        '                       <button type="button" onclick="subCommit(\''+articleId+'\',\''+data.commentId+'\',\''+userName+'\')" class="btn btn-primary">提交</button></div>'+

                        '                   </div>' +
                        '            </div>');
                    html = html.join('');
                        $("#commentId").append(html);
                    $('#commentText').parent().removeClass("hidden");
                    $('#commentReal').addClass('hidden');
                }
            })
        }

    }
    //$('#submitBtn').on("click",submitComment(commentPid));
    $(function () {
        getComment('${md.id}');
        testEditor = editormd.markdownToHTML(
            "content", {//注意：这里是上面DIV的id
                htmlDecode: "style,script,iframe",
                height  : "100%",
                emoji: true,
                taskList: true,
                tex: true, // 默认不解析
                flowChart: true, // 默认不解析
                sequenceDiagram: true, // 默认不解析
                codeFold: true,
                //editorTheme: "pastel-on-dark",//编辑器的主题颜色
                theme: "gray",//顶部的主题
                previewTheme: "dark"//显示的主题
            });



    });
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
</script>
</body>
</html>