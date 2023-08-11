<%--
  Created by IntelliJ IDEA.
  User: Assahh
  Date: 2023/7/13
  Time: 15:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>书籍管理系统</title>

    <style>
      a{
        text-decoration: none;
        color: black;
        font-size: 18px;
      }
      h2{
        width: 360px;
        height: 38px;
        margin: 100px auto;
        text-align: center;
        line-height: 38px;
        background: #36a884;
        border-radius: 5px;
      }
      h3{
        width: 180px;
        height: 38px;
        margin: 50px auto;
        text-align: center;
        line-height: 38px;
        background: antiquewhite;
        border-radius: 5px;
      }


    </style>


  </head>
  <body>

  <h2>欢迎进入书籍管理系统</h2>

  <h3>
    <a href="${pageContext.request.contextPath}/book/allBook">进入书籍展示页面</a>
  </h3>

  <h3>
    <a href="${pageContext.request.contextPath}/book/toAddBook">添加书籍</a>
  </h3>


  </body>
</html>
