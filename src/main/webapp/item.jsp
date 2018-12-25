<%--
  Created by IntelliJ IDEA.
  User: 裴绍展
  Date: 2018/11/18
  Time: 18:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>商品详情</title>

    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
    <script src="js/jquery-3.3.1.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <style type="text/css">
        .carousel-inner img{
            width: 100%;
        }
    </style>
</head>
<body>

<img src="images/logo.png" height="110px" width="355px" style=" margin-top:100px;margin-bottom:50px;margin-left: 100px">
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
                        <li><a href="#">个人信息</a></li>
                    </ul>
                </li>
            </ul>
        </div><!-- /.navbar-collapse -->
    </div><!-- /.container-fluid -->
</nav>

<div class="container">
    <div class="row">
        <div class="media">
            <div class="col-sm-4">
                <div class="media-left">
                    <img src="images/TestImage1.jpg" class="media-object" style="width:60px">
                </div>
                <div class="media-body">
                    <h4 class="media-heading">卖家卖家</h4>
                    <p>个人简介个人简介个人简介个人简介个人简介个人简介个人简介</p>
                </div>
            </div>
            <div class="col-sm-3" style="text-align: center">
                <h5>被收藏次数</h5>
                <h6>32</h6>
            </div>
            <div class="col-sm-3" style="text-align: center">
                <h5>最后编辑时间</h5>
                <h6>2018-01-01 15:20</h6>
            </div>
            <div class="col-sm-2" style="margin:  0 auto">
                <button type="submit" class="btn btn-danger">举报</button>
            </div>
        </div>
    </div>
    <hr>
    <div class="row">
        <div class="col-sm-7">
            <div id="myCarousel" class="carousel slide">
                <!-- 轮播（Carousel）指标 -->
                <ol class="carousel-indicators">
                    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                    <li data-target="#myCarousel" data-slide-to="1"></li>
                    <li data-target="#myCarousel" data-slide-to="2"></li>
                </ol>
                <!-- 轮播（Carousel）项目 -->
                <div class="carousel-inner">
                    <div class="item active">
                        <img src="images/TestImage4.jpg" alt="First slide">
                        <div class="carousel-caption">图片 1</div>
                    </div>
                    <div class="item">
                        <img src="images/TestImage3.jpg" alt="Second slide">
                        <div class="carousel-caption ">图片 2</div>
                    </div>
                    <div class="item">
                        <img src="images/TestImage2.jpg" alt="Third slide">
                        <div class="carousel-caption">图片 3</div>
                    </div>
                </div>
                <!-- 轮播（Carousel）导航 -->
                <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
                    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
                    <span class="sr-only">Previous</span>
                </a>
                <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
                    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
                    <span class="sr-only">Next</span>
                </a>
            </div>
        </div>

        <div class="col-sm-5">
            <div class="panel panel-default">
                <div class="panel-body">
                    <div class="page-header">
                        <h1>一件衣服<br />
                            <small>价格：￥100<br /><small>原价：￥180</small></small>
                        </h1>
                    </div>
                    <p>
                        <button type="button" class="btn btn-danger btn-lg">立即收藏</button>
                        <button type="button" class="btn btn-primary btn-lg">联系卖家</button>
                        <button type="button" class="btn btn-default">分享</button>
                        <button type="button" class="btn btn-default">点赞</button>
                    </p>
                </div>
            </div>
        </div>
    </div>
    <div class="row" style="margin-top: 100px">
        <ul class="nav nav-tabs col-sm-8">
        <li class="active"><a href="#">商品介绍</a></li>
        <li><a href="#">留言</a></li>
        <li><a href="#">安全保障</a></li>
        </ul>
    </div>
    <div class="row">
        <div class="col-sm-8">
            商品介绍商品介绍商品介绍商品介绍商品介绍商品介绍商品介绍商品介绍商品介绍商品介绍商品介绍商品介绍商品介绍商品介绍商品介绍商品介绍商品介绍商品介绍商品介绍商品介绍商品介绍商品介绍商品介绍商品介绍商品介绍商品介绍商品介绍商品介绍商品介绍商品介绍商品介绍商品介绍商品介绍商品介绍商品介绍商品介绍商品介绍商品介绍商品介绍商品介绍商品介绍商品介绍商品介绍商品介绍商品介绍商品介绍商品介绍商品介绍商品介绍商品介绍商品介绍商品介绍商品介绍商品介绍商品介绍商品介绍商品介绍商品介绍商品介绍商品介绍商品介绍商品介绍商品介绍商品介绍商品介绍商品介绍商品介绍商品介绍商品介绍商品介绍商品介绍商品介绍
        </div>
    </div>
</div>
<br />
<br />
<br />
<br />

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
