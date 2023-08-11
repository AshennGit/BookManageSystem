<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>修改书籍</title>

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
                    <small>修改书籍</small>
                </h1>
            </div>
        </div>
    </div>

    <br>

    <form action="${pageContext.request.contextPath}/book/updateBook" method="post">

        <%--前端隐藏域 用于向后端传递数据，页面上不会显示--%>
            <input type="hidden" name="bookID" value="${QBook.bookID}">

        <div class="form-group">
            <label for="bkname">书籍名称:</label>
            <input type="text" name="bookName" class="form-control" value="${QBook.bookName}" id="bkname" required>
        </div>
        <div class="form-group">
            <label for="bkcount">书籍数量:</label>
            <input type="text" name="bookCounts" class="form-control" value="${QBook.bookCounts}" id="bkcount" required>
        </div>
        <div class="form-group">
            <label for="bkdetail">书籍描述:</label>
            <input type="text" name="detail" class="form-control" value="${QBook.detail}" id="bkdetail" required>
        </div>

        <div class="form-group">
            <input type="submit" class="form-control" id="sbm" value="修改">
        </div>
    </form>



</div>


</body>
</html>
