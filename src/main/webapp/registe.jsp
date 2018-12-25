<%--
  Created by IntelliJ IDEA.
  User: 裴绍展
  Date: 2018/11/18
  Time: 20:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>

    <title>注册</title>

    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
    <script src="js/jquery-3.3.1.min.js"></script>
    <script src="js/bootstrap.min.js"></script>

    <style type="text/css">
        .container{
            width: 100%;
            height: 800px;
            background-image: url("images/head3.jpg");
            background-repeat: no-repeat;
            background-size: cover;
        }
    </style>
    <script type="text/javascript">
        function myCheck()
        {
            for(var i=0;i<document.form1.elements.length-1;i++)
            {
                if(document.form1.elements[i].value=="")
                {
                    alert("当前表单不能有空项");
                    document.form1.elements[i].focus();
                    return false;
                }
            }
            return true;

        }
    </script>

</head>
<body>

<div class="container">
    <div class="col-sm-3" style="margin:60px 0 0 60px">
        <img src="images/logo.png" height="110px" width="355px" >
    </div>
    <div class="col-sm-4" style="margin:150px 0 0 50px">
        <form name="form1" role="form" action="Registe" method="post" onSubmit="return myCheck()">
            <div class="form-group">
                <label for="stuID">学号</label>
                <input type="text" class="form-control" id="stuID" name="stuID" placeholder="请输入学号">
            </div>
            <div class="form-group">
                <label for="stuName">姓名</label>
                <input type="text" class="form-control" id="stuName" name="stuName" placeholder="请输入真实姓名">
            </div>
            <div class="form-group">
                <label for="password">密码</label>
                <input type="password" class="form-control" id="password" name="password" placeholder="请输入密码">
            </div>
            <div class="form-group">
                <label for="password2">再次输入密码</label>
                <input type="password" class="form-control" id="password2" name="password2" placeholder="请再次输入密码">
            </div>
            <div class="form-group">
                <label for="phoneNumber">手机号</label>
                <input type="text" class="form-control" id="phoneNumber" name="phoneNumber" placeholder="请输入手机号">
            </div>

            <button type="submit" class="btn btn-primary">立即注册</button>
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
