<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
</head>
<body>
主页
${user.email}

</body>
<script>
    var options = {
        currentPage: 3,
        totalPages: 10,
        onPageChanged: function(e,oldPage,newPage){
            options=1;
            $('#alert-content').text("Current page changed, old: "+oldPage+" new: "+newPage);
        }
    }
</script>
</html>