<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
</head>
<link rel="stylesheet" href="${request.contextPath}/editormd/css/editormd.css" />
<link rel="shortcut icon"  type="image/x-icon" />
<script src="${request.contextPath}/js/jquery.min.js"></script>
<script src="${request.contextPath}/editormd/lib/marked.min.js"></script>
<script src="${request.contextPath}/editormd/lib/prettify.min.js"></script>
<script src="${request.contextPath}/editormd/lib/raphael.min.js"></script>
<script src="${request.contextPath}/editormd/lib/underscore.min.js"></script>
<script src="${request.contextPath}/editormd/lib/sequence-diagram.min.js"></script>
<script src="${request.contextPath}/editormd/lib/flowchart.min.js"></script>
<script src="${request.contextPath}/editormd/editormd.min.js"></script>
<script>
    var testEditor;
    $(function () {
        testEditor = editormd.markdownToHTML("content", {//注意：这里是上面DIV的id
            htmlDecode: "style,script,iframe",
            emoji: true,
            taskList: true,
            tex: true, // 默认不解析
            flowChart: true, // 默认不解析
            sequenceDiagram: true, // 默认不解析
            codeFold: true,
            //editorTheme: "pastel-on-dark",//编辑器的主题颜色
            theme: "gray",//顶部的主题
            previewTheme: "dark"//显示的主题
        });});

</script>
<body>
<div class="panel-body content editormd-preview-theme-dark" id="content" >
    <label>
        <textarea style="display:none;">${md}</textarea>
    </label>
</div>


</body>
</html>