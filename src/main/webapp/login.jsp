<%--
  Created by IntelliJ IDEA.
  User: 裴绍展
  Date: 2018/11/14
  Time: 9:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>登录</title>

    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
    <script src="js/jquery-3.3.1.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <style type="text/css">
        .container{
            width: 100%;
            height: 800px;
        }
        #form1{
            margin: 50px 0 0 0;
        }
        .container{
            background-image: url("images/head3.jpg");
            background-repeat: no-repeat;
            background-size: cover;
        }
    </style>
</head>
<body>


<div class="container">
    <div class="row" style="text-align: center;margin-top: 120px">
        <img src="images/logo.png" height="120px" width="386px" >
    </div>

    <%--<nav class="navbar navbar-inverse " >--%>
        <%--<div class="container-fluid">--%>
            <%--<!-- Brand and toggle get grouped for better mobile display -->--%>
            <%--<div class="navbar-header">--%>
                <%--<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">--%>
                    <%--<span class="sr-only">Toggle navigation</span>--%>
                    <%--<span class="icon-bar"></span>--%>
                    <%--<span class="icon-bar"></span>--%>
                    <%--<span class="icon-bar"></span>--%>
                <%--</button>--%>
                <%--<a class="navbar-brand" href="#"> Trade</a>--%>
            <%--</div>--%>

            <%--<!-- Collect the nav links, forms, and other content for toggling -->--%>
            <%--<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">--%>
                <%--<ul class="nav navbar-nav">--%>
                    <%--<li class="active"><a href="#">首页 <span class="sr-only">(current)</span></a></li>--%>
                    <%--<li><a href="#">最新发布</a></li>--%>
                    <%--<li><a href="#">最近热门</a></li>--%>
                <%--</ul>--%>
                <%--<form class="navbar-form navbar-left">--%>
                    <%--<div class="form-group">--%>
                        <%--<input type="text" class="form-control" placeholder="请输入商品信息">--%>
                    <%--</div>--%>
                    <%--<button type="submit" class="btn btn-default">搜索</button>--%>
                <%--</form>--%>
                <%--<ul class="nav navbar-nav navbar-right">--%>
                    <%--<li><a href="#">商品发布</a></li>--%>
                    <%--<li class="dropdown">--%>
                        <%--<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">个人中心 <span class="caret"></span></a>--%>
                        <%--<ul class="dropdown-menu">--%>
                            <%--<li><a href="#">已发布</a></li>--%>
                            <%--<li><a href="#">新留言</a></li>--%>
                            <%--<li><a href="#">已收藏</a></li>--%>
                        <%--</ul>--%>
                    <%--</li>--%>
                <%--</ul>--%>
            <%--</div><!-- /.navbar-collapse -->--%>
        <%--</div><!-- /.container-fluid -->--%>
    <%--</nav>--%>

    <div class="row" id="form1">
        <form class="col-sm-4 col-sm-offset-4" >
            <div class="form-group ">
                <label for="username">用户名</label>
                <input type="text" class="form-control" id="username" placeholder="请输入手机号">
            </div>
            <div class="form-group">
                <label for="password">密码</label>
                <input type="password" class="form-control" id="password" placeholder="请输入密码">
            </div>
            <div class="row center-block">
                <br />
                <div class="col-sm-3 col-sm-offset-1">
                    <button type="submit" class="btn btn-primary col-sm-11">确定</button>
                </div>
                <div class="col-sm-3">
                    <button type="submit" class="btn btn-success col-sm-11">注册</button>
                </div>
                <div class="col-sm-3">
                    <button type="submit" class="btn btn-danger col-sm-11">忘记密码</button>
                </div>
            </div>
        </form>
    </div>
</div>

<div class="jumbotron" style="background-color: #222222;height: 300px;margin-bottom:0">
    <div class="row" style="color: white;">
        <div class="col-sm-1"></div>
        <div class="col-sm-3">
            <h3>关于我们</h3>
        </div>
        <div class="col-sm-3">
            <h3>联系我们</h3>
        </div>
        <div class="col-sm-3">
            <h3>服务条款</h3>
        </div>
        <div class="col-sm-2">
            <h3>友情链接</h3>
            <button type="button" class="btn btn-link" style="color: darkgray">闲鱼</button><br />
            <button type="button" class="btn btn-link" style="color: darkgray">京东</button><br />
            <button type="button" class="btn btn-link" style="color: darkgray">淘宝</button><br />
            <button type="button" class="btn btn-link" style="color: darkgray">转转</button><br />
        </div>
    </div>
</div>
<div class="jumbotron text-center" style="background-color: #0f0f0f;margin-bottom:0">
    <font color="#696969"> Copyright © 卖在校园</font>
</div>


</body>
</html>
