<%--
  Created by IntelliJ IDEA.
  User: 裴绍展
  Date: 2018/11/18
  Time: 17:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>商品列表</title>

    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
    <script src="js/jquery-3.3.1.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/imagesloaded.pkgd.min.js"></script>
    <script src="js/masonry.pkgd.min.js"></script>

    <style type="text/css">
        #masonry{
            padding: 20px;
        }
        .box {
            margin-bottom: 20px;
            float: left;
            width: 220px;
        }
        .box img {
            max-width: 100%
        }
    </style>


    <script>
        $(function() {
            var $container = $('#masonry');
            $container.imagesLoaded(function() {
                $container.masonry({
                    itemSelector: '.box',
                    gutter: 20,
                    isAnimated: true,
                });
            });
        });
    </script>

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

<div class="row col-sm-8 col-sm-offset-2">
    <ul class="breadcrumb">
        <li><a href="#">首页</a></li>
        <li><a href="#">服饰</a></li>
        <li class="active">女性服饰</li>
    </ul>
</div>
<div class="row">
    <div class="well well-lg col-sm-6 col-sm-offset-3 ">
        <div class="row">
            <div class="col-sm-3">连衣裙</div>
            <div class="col-sm-3">毛衣/针织衫</div>
            <div class="col-sm-3">半身裙</div>
            <div class="col-sm-3">T恤</div>
        </div>
        <div class="row">
            <div class="col-sm-3">皮衣</div>
            <div class="col-sm-3">牛仔裤</div>
            <div class="col-sm-3">裤子</div>
            <div class="col-sm-3">衬衫</div>
        </div>
        <div class="row">
            <div class="col-sm-3">羽绒服/棉服</div>
            <div class="col-sm-3">卫衣</div>
        </div>
    </div>
</div>

<div class="row">
    <div class="btn-group col-sm-offset-8">
        <button type="button" class="btn btn-default">销量最高</button>
        <button type="button" class="btn btn-default">最新发布</button>
        <div class="btn-group">
            <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown">
                价格
                <span class="caret"></span>
            </button>
            <ul class="dropdown-menu">
                <li><a href="#">按价格升序</a></li>
                <li><a href="#">按价格降序</a></li>
            </ul>
        </div>
    </div>
</div>

<div class="row">
<div class="col-sm-8 col-sm-offset-2">
    <div id="masonry" class="container-fluid ">
        <div class="box"><img src="images/head2.jpg">123</div>
        <div class="box"><img src="images/head.jpg">34444444444444444444</div>
        <div class="box"><img src="images/TestImage.jpg">42234234</div>
        <div class="box"><img src="images/TestImage3.jpg">234</div>
        <div class="box"><img src="images/TestImage2.jpg">22222222222222</div>
        <div class="box"><img src="images/TestImage1.jpg">2321213</div>
        <div class="box"><img src="images/head.jpg">34444444444444444444</div>
        <div class="box"><img src="images/head2.jpg">123</div>
        <div class="box"><img src="images/head.jpg">34444444444444444444</div>
        <div class="box"><img src="images/TestImage.jpg">42234234</div>
        <div class="box"><img src="images/TestImage3.jpg">234</div>
        <div class="box"><img src="images/TestImage2.jpg">22222222222222</div>
        <div class="box"><img src="images/TestImage1.jpg">2321213</div>
        <div class="box"><img src="images/TestImage.jpg">42234234</div>
        <div class="box"><img src="images/head2.jpg">123</div>
        <div class="box"><img src="images/head.jpg">34444444444444444444</div>
        <div class="box"><img src="images/TestImage.jpg">42234234</div>
        <div class="box"><img src="images/TestImage3.jpg">234</div>
        <div class="box"><img src="images/TestImage2.jpg">22222222222222</div>
        <div class="box"><img src="images/TestImage1.jpg">2321213</div>
        <div class="box"><img src="images/head.jpg">34444444444444444444</div>
        <div class="box"><img src="images/head2.jpg">123</div>
        <div class="box"><img src="images/head.jpg">34444444444444444444</div>
        <div class="box"><img src="images/TestImage.jpg">42234234</div>
        <div class="box"><img src="images/TestImage3.jpg">234</div>
        <div class="box"><img src="images/TestImage2.jpg">22222222222222</div>
        <div class="box"><img src="images/TestImage1.jpg">2321213</div>
        <div class="box"><img src="images/head2.jpg">123</div>
        <div class="box"><img src="images/head.jpg">34444444444444444444</div>
        <div class="box"><img src="images/TestImage.jpg">42234234</div>
        <div class="box"><img src="images/TestImage3.jpg">234</div>
        <div class="box"><img src="images/TestImage2.jpg">22222222222222</div>
        <div class="box"><img src="images/TestImage1.jpg">2321213</div>
        <div class="box"><img src="images/head2.jpg">123</div>
        <div class="box"><img src="images/head.jpg">34444444444444444444</div>
        <div class="box"><img src="images/TestImage.jpg">42234234</div>
        <div class="box"><img src="images/TestImage1.jpg">2321213</div>
        <div class="box"><img src="images/head2.jpg">123</div>
        <div class="box"><img src="images/head.jpg">34444444444444444444</div>
        <div class="box"><img src="images/TestImage1.jpg">2321213</div>
        <div class="box"><img src="images/head2.jpg">123</div>
        <div class="box"><img src="images/head.jpg">34444444444444444444</div>
        <div class="box"><img src="images/TestImage.jpg">42234234</div>
        <div class="box"><img src="images/TestImage3.jpg">234</div>
        <div class="box"><img src="images/TestImage2.jpg">22222222222222</div>
        <div class="box"><img src="images/TestImage1.jpg">2321213</div>
        <div class="box"><img src="images/TestImage.jpg">42234234</div>
        <div class="box"><img src="images/TestImage3.jpg">234</div>
        <div class="box"><img src="images/head.jpg">34444444444444444444</div>
        <div class="box"><img src="images/TestImage.jpg">42234234</div>
        <div class="box"><img src="images/TestImage1.jpg">2321213</div>
        <div class="box"><img src="images/head2.jpg">123</div>
        <div class="box"><img src="images/head.jpg">34444444444444444444</div>
        <div class="box"><img src="images/TestImage.jpg">42234234</div>
        <div class="box"><img src="images/TestImage3.jpg">234</div>
        <div class="box"><img src="images/TestImage2.jpg">22222222222222</div>
        <div class="box"><img src="images/TestImage1.jpg">2321213</div>
        <div class="box"><img src="images/TestImage3.jpg">234</div>
        <div class="box"><img src="images/TestImage2.jpg">22222222222222</div>
        <div class="box"><img src="images/TestImage1.jpg">2321213</div>
        <div class="box"><img src="images/TestImage1.jpg">2321213</div>
        <div class="box"><img src="images/head2.jpg">123</div>
        <div class="box"><img src="images/head.jpg">34444444444444444444</div>
        <div class="box"><img src="images/TestImage.jpg">42234234</div>
        <div class="box"><img src="images/TestImage3.jpg">234</div>
        <div class="box"><img src="images/TestImage2.jpg">22222222222222</div>
        <div class="box"><img src="images/TestImage1.jpg">2321213</div>
    </div>
</div>
</div>

<div class="row">
        <nav aria-label="Page navigation" style="text-align: center">
            <ul class="pagination pagination-lg ">
                <li>
                    <a href="#" aria-label="Previous">
                        <span aria-hidden="true">&laquo;</span>
                    </a>
                </li>
                <li class="active"><a href="#">1</a></li>
                <li><a href="#">2</a></li>
                <li><a href="#">3</a></li>
                <li><a href="#">4</a></li>
                <li><a href="#">5</a></li>
                <li><a href="#">6</a></li>
                <li><a href="#">7</a></li>
                <li><a href="#">8</a></li>
                <li><a href="#">······</a></li>
                <li>
                    <a href="#" aria-label="Next">
                        <span aria-hidden="true">&raquo;</span>
                    </a>
                </li>
            </ul>
        </nav>
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
