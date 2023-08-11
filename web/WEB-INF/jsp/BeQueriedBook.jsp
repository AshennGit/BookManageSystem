<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>书籍展示</title>

    <%--bookstrap美化页面--%>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css">
</head>
<body>
<br>
<%--bootstrap框架--%>
<div class="container">
    <div class="row clearfix">
        <div class="col-md-12 column">
            <div class="page-header">
                <h1>
                    <small>书籍列表 ———— 显示查询书籍</small>
                </h1>
            </div>
        </div>

        <div class="row">
            <div class="col-md-4 column"></div>
            <div class="col-md-4 column"></div>
            <div class="col-md-4 column">
                <%--跳转到查询书籍--%>
                <form action="${pageContext.request.contextPath}/book/queryBook" method="post" style="float:right">
                    <label>
                        <input type="text" name="QBookName" placeholder="请输入查询的书籍名称" required>
                    </label>
                    <input type="submit" value="查询" class="btn btn-primary">
                </form>
            </div>

        </div>
    </div>

    <br>

    <div class="row clearfix">
        <div class="col-md-12 column">
            <table class="table table-hover table-striped">
                <thead>
                <tr>
                    <th>书籍编号</th>
                    <th>书籍名称</th>
                    <th>书籍数量</th>
                    <th>书籍详情</th>
                    <th>操作</th>
                </tr>
                </thead>

                <%--书籍从数据库中查询出来,从后端传给的list中遍历出来--%>
                <tbody>
                <c:forEach var = "book" items="${QBookList}">
                    <tr>
                        <td>${book.bookID}</td>
                        <td>${book.bookName}</td>
                        <td>${book.bookCounts}</td>
                        <td>${book.detail}</td>
                        <td>
                            <a href="${pageContext.request.contextPath}/book/toUpdateBook?id=${book.bookID}">修改</a>
                            &nbsp;|&nbsp;
                            <a href="${pageContext.request.contextPath}/book/deleteBook${book.bookID}">删除</a>
                        </td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>
    </div>

</div>


</body>
</html>
