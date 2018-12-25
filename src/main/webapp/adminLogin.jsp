<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/12/12 0012
  Time: 上午 9:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>管理员登陆</title>

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
        <form class="col-sm-4 col-sm-offset-4" >
            <div class="form-group ">
                <label for="username">管理员号</label>
                <input type="text" class="form-control" id="username" placeholder="请输入手机号">
            </div>
            <div class="form-group">
                <label for="password">管理员密码</label>
                <input type="password" class="form-control" id="password" placeholder="请输入密码">
            </div>
            <div class="row center-block">
                <br />
                <div class="col-sm-3 col-sm-offset-2">
                    <button type="submit" class="btn btn-primary col-sm-12">登陆</button>
                </div>
            </div>
        </form>
    </div>
</div>
</body>
</html>
