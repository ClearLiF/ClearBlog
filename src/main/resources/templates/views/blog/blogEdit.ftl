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
    <link href="${request.contextPath}/blog/editormd/css/editormd.css" rel="stylesheet"  />
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
<#--<nav class="navbar-fixed-top">
    <div class="container div2  " style="margin-bottom:10px">
        <form class="form-horizontal">
            <div class="form-group">
                <label for="inputEmail3" class="col-sm-2 control-label">Email</label>
                <div class="col-sm-10">
                    <textarea class="form-control" rows="3"></textarea>                </div>
            </div>

        </form>
    </div>
</nav>-->
<nav class="navbar navbar-inverse navbar-fixed-top" style=" position: relative;padding-top: 0px;padding-bottom: 0px;padding-right: 300px">

        <div id="navbar" class="navbar-header">
            <form class="navbar-form navbar-right">
                <div class="input-group" style="width: 50em;">
                    <span class="input-group-addon">标题</span>
                    <input id="title" style="height: 4em;color: black" type="text" value="" class="form-control" aria-label="Amount (to the nearest dollar)">
                    <span class="input-group-addon">必填项</span>
                </div>
                <button type="button" id="my_submit" style="height: 4em"  class="btn btn-success">保存</button>
            </form>
        </div><!--/.navbar-collapse -->
        <#--个人中心-->
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav navbar-right custom-menu">
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">
                        <#if user=='null'>登录<#else><input type="hidden" id="userid" value="${user.id}"><span style="color: black;font-size: 20px">用户名:${user.name}</span></#if> <span class="caret"></span></a>
                    <ul class="dropdown-menu">
                        <li><a href="<#if user=='null'>/user/login<#else>/user/myself</#if> "><#if user=='null'>登录<#else>个人中心</#if> </a></li>
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
<div id="alert1" class="alert alert-danger alert-dismissible hidden" role="alert">
    <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
    <p class="text-center"><strong>警告!</strong>标题不能为空</p>
</div>
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
<#--提交模态框-->
<div class="modal fade" id="submitModel" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel">
    <div class="modal-dialog modal-lg " role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title" id="exampleModalLabel">提交确认</h4>
            </div>
            <div class="modal-body">
                <form>
                    <div class="form-group">
                        <label for="message-text" class="control-label">备注:</label>
                        <textarea class="form-control" id="message-text"></textarea>
                    </div>
                    <div>
                        <select class="selectpicker" data-size="5">
                            <#if sort??>
                                <#list sort as values>
                                            <#list values.sorts as sorts>
                                                <option id="typeOption" data-subtext="${values.name}" value="${sorts.id}">${sorts.name}</option>
                                            </#list>
                                </#list>
                            </#if>
                        </select>
                    </div>
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                <button type="button" id="submitBtn" class="btn btn-primary">提交</button>
            </div>
        </div>
    </div>
</div>

<!-- Page Content -->
        <!-- Blog Column -->


            <div id="layout" class="editor   col-lg-12" style="padding-top: 0px;">
               <#-- <input type="text" placeholder="请输入标题" id="title" name="title" autocomplete="off">
                <input name="my_submit" id="my_submit" value="提交" type="button">
                --><div id="test-editormd" >

                    <div id="test-editormd">
                        <label>
                            <textarea id="editor-md-doc" name="editor-md-doc"  style="display:none;" ></textarea>
                            <textarea id="editor-md-html" name="editor-md-html"  style="display:none;"></textarea>
                        </label>

                    </div>
                </div>
            </div>











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
<script src="${request.contextPath}/blog/editormd/editormd.min.js"></script>

<!--Jquery Smooth Scrolling-->
<script>



    var testEditor;

    $("#my_submit").click(function () {
        //alert("正在提交");
        var $title = $("#title").val();
        if ($title===""){
            $("#alert1").removeClass("hidden")
        }else {
         $('#submitModel').modal('show');
          //  submit_atricle();
        }

    });
    $('#submitBtn').click(function () {
        submit_atricle();
    })

    function submit_atricle() {
        var title = $("#title").val();
        var type = $("#typeOption").val();
        var userid = $("#userid").val();
        var markdownContent = testEditor.getMarkdown();
        var htmlContent = testEditor.getHTML();
        console.log(htmlContent+markdownContent);
        $.ajax({
            url: "/blog/editorContent",
            data: JSON.stringify({userId:userid,title: title,typeId:type, htmlContent: htmlContent, markdownContent: markdownContent}),
            type: "POST",
            contentType: 'application/json',
            success: function () {
                alert("发布成功");
                //open($.html(data));
            },
            error: function () {
                alert("发布失败");
            }
        });

    }
    $(document).ready(function(){
        testEditor = editormd("test-editormd", {
            width   : "100%",
            height  : 700,
           // syncScrolling : "single",
            path    : "editormd/lib/",
           // theme: "dark",//工具栏主题
           // previewTheme: "dark",//预览主题
          // editorTheme: "pastel-on-dark",//编辑主题
            imageUpload : true,
            emoji: true,
            codeFold   : true,

            saveHTMLToTextarea : true,
            imageFormats : ["jpg", "jpeg", "gif", "png", "bmp", "webp"],
            imageUploadURL : "/blog/imageUpload"

        })
        editormd.emoji   = {
            path  : "editormd/plugins/emoji-dialog/emoji/",
            ext   : ".png"
        };

        /*

        $('.modal-body').empty();

        console.log($('.modal-title').innerHTML);*/


        $('#myModal2').modal('show');

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
</script>

</body>
</html>