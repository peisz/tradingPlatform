<%--
  Created by IntelliJ IDEA.
  User: 裴绍展
  Date: 2018/11/14
  Time: 9:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html>
<head>
    <base href="<%=basePath%>"/>
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

    <div class="row" id="form1">
        <form class="col-sm-4 col-sm-offset-4" action="Login" method="post">
            <div class="form-group">
                <label for="phone_number">手机号</label>
                <input type="text" class="form-control" id="phone_number"  name="phone_number" placeholder="请输入手机号">
            </div>
            <div class="form-group">
                <label for="password">密码</label>
                <input type="password" name="password" class="form-control" id="password" placeholder="请输入密码">
            </div>
            <div class="row center-block">
                <br />
                <div class="col-sm-3 col-sm-offset-1">
                    <button type="submit" class="btn btn-primary col-sm-11">登陆</button>
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
