<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/12/12 0012
  Time: 上午 9:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>管理员系统</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
    <script src="js/jquery-3.3.1.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
</head>
<body>
<nav class="navbar navbar-inverse" role="navigation">
    <div class="container-fluid">
        <div class="navbar-header">
            <a class="navbar-brand" href="#">卖在校园</a>
        </div>
        <div>
            <ul class="nav navbar-nav">
                <li class="active"><a href="#">商品信息管理</a></li>
                <li><a href="adminUser.jsp">用户信息管理</a></li>
                <li><a href="adminInform.jsp">公告信息管理</a></li>
            </ul>
        </div>
    </div>
</nav>

<nav class="col-sm-3">
    <ul class="nav nav-pills nav-stacked">
        <li class="active"><a href="#checkGoods" data-toggle="tab">审核商品</a></li>
        <li><a href="#delGoods" data-toggle="tab">删除商品</a></li>
    </ul>
</nav>

<nav class="col-sm-9">
    <div id="myTabContent" class="tab-content">
        <div class="tab-pane fade in active" id="checkGoods">
        ssa
        </div>

        <div class="tab-pane fade" id="delGoods">
            qwe
        </div>
    </div>
</nav>
</body>
</html>
