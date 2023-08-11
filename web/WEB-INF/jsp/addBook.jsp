<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>添加书籍</title>

    <%--bookstrap美化页面--%>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css">

    <style>
        #sbm{
            width: 100px;
            height: 50px;
            margin: 10px auto;
            text-align: center;
            line-height: 38px;
            background: #94bcde;
            border-radius: 5px;
        }
    </style>
</head>
<body>
<br>
<div class="container">
    <div class="row clearfix">
        <div class="col-md-12 column">
            <div class="page-header">
                <h1>
                    <small>添加书籍</small>
                </h1>
            </div>
        </div>
    </div>

    <br>

    <form action="${pageContext.request.contextPath}/book/addBook" method="post">
        <div class="form-group">
            <label for="bkname">书籍名称:</label>
            <input type="text" name="bookName" class="form-control" id="bkname" required>
        </div>
        <div class="form-group">
            <label for="bkcount">书籍数量:</label>
            <input type="text" name="bookCounts" class="form-control" id="bkcount" required>
        </div>
        <div class="form-group">
            <label for="bkdetail">书籍描述:</label>
            <input type="text" name="detail" class="form-control" id="bkdetail" required>
        </div>

        <div class="form-group">
            <input type="submit" class="form-control" id="sbm" value="添加">
        </div>
    </form>



</div>


</body>
</html>
