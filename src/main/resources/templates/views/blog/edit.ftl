<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <link href="${request.contextPath}/editormd/css/editormd.css" rel="stylesheet" />
    <script src="${request.contextPath}/js/jquery.min.js"></script>
    <script src="${request.contextPath}/editormd/editormd.min.js"></script>
    <script type="text/javascript">
        var testEditor;
        $(function() {
            testEditor = editormd("test-editormd", {
                width   : "90%",
                height  : 640,
                syncScrolling : "single",
                path    : "editormd/lib/",
                theme: "dark",//工具栏主题
                previewTheme: "dark",//预览主题
                editorTheme: "pastel-on-dark",//编辑主题
                imageUpload : true,
                emoji: true,
                codeFold   : true,
                saveHTMLToTextarea : true,
                imageFormats : ["jpg", "jpeg", "gif", "png", "bmp", "webp"],
                imageUploadURL : "/imageUpload"

            });


            /*
            // or
            testEditor = editormd({
                id      : "test-editormd",
                width   : "90%",
                height  : 640,
                path    : "../lib/"
            });
            */
            $('#testUpload').on("click",function () {
                var val1 = $('.editormd-markdown-textarea').val();
                alert('dqw'+val1);
                console.log(testEditor.getMarkdown())
            })
        });
    </script>
   <#-- <script>

        var testEditor;
        testEditor = editormd("test-editormd", {
            placeholder:'本编辑器支持Markdown编辑，左边编写，右边预览',  //默认显示的文字，这里就不解释了
            width: "90%",
            height: 640,
            syncScrolling: "single",
            path: "/editormd/lib/",   //你的path路径（原资源文件中lib包在我们项目中所放的位置）
            theme: "dark",//工具栏主题
            previewTheme: "dark",//预览主题
            editorTheme: "pastel-on-dark",//编辑主题
            saveHTMLToTextarea: true,
            emoji: false,
            taskList: true,
            tocm: true,         // Using [TOCM]
            tex: true,                   // 开启科学公式TeX语言支持，默认关闭
            flowChart: true,             // 开启流程图支持，默认关闭
            sequenceDiagram: true,       // 开启时序/序列图支持，默认关闭,
            toolbarIcons : function() {  //自定义工具栏，后面有详细介绍
                return editormd.toolbarModes['simple']; // full, simple, mini
            },
        });
        //testEditor.getMarkdown();
    </script>-->
</head>




<body>
<button id="testUpload">上传</button>

<div id="layout" class="editor">
        <input type="text" placeholder="请输入标题" id="title" name="title" autocomplete="off">
        <input name="my_submit" id="my_submit" value="提交" type="button">
        <div id="test-editormd">

        <div id="test-editormd">
            <label>
                 <textarea id="editor-md-doc" name="editor-md-doc"  style="display:none;" ></textarea>
                <textarea id="editor-md-html" name="editor-md-html"  style="display:none;"></textarea>
            </label>

        </div>
</div>
</div>
</body>
<script>

    $("#my_submit").click(function () {
        alert("正在提交");
        submit_atricle();
    });

    function submit_atricle() {
        var title = $("#title").val();
        var markdownContent = testEditor.getMarkdown();
        var htmlContent = testEditor.getHTML();
        console.log(htmlContent+markdownContent);
        $.ajax({
            url: "/editorContent",
            data: JSON.stringify({title: title, htmlContent: htmlContent, markdownContent: markdownContent}),
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

</script>
</html>