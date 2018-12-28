<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/12/26 0026
  Time: 下午 8:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>发布商品</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
    <script src="js/jquery-3.3.1.min.js"></script>
    <script src="js/bootstrap.min.js"></script>

</head>
<body>
<nav class="navbar navbar-inverse navbar-fixed-top">
    <div class="container-fluid">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                <span class="sr-only"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="#">卖在校园</a>
        </div>

        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav">
                <li class="active"><a href="#">首页 <span class="sr-only">(current)</span></a></li>
                <form class="navbar-form navbar-left">
                    <div class="form-group">
                        <input type="text" size="50" class="form-control" placeholder="请输入商品信息">
                    </div>
                    <button type="submit" class="btn btn-default">搜索</button>
                </form>
            </ul>
            <ul class="nav navbar-nav navbar-right">
                <li><a href="#">商品发布</a></li>
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">个人中心 <span class="caret"></span></a>
                    <ul class="dropdown-menu">
                        <li><a href="#">已发布</a></li>
                        <li><a href="#">新留言</a></li>
                        <li><a href="#">已收藏</a></li>
                        <li><a href="#">我的足迹</a></li>
                        <li><a href="userInformation.jsp">个人信息</a></li>
                    </ul>
                </li>
            </ul>
        </div><!-- /.navbar-collapse -->
    </div><!-- /.container-fluid -->
</nav>
<img src="images/logo.png" height="110px" width="355px" style=" margin-top:100px;margin-bottom:50px;margin-left: 100px">
</body>
</html>
