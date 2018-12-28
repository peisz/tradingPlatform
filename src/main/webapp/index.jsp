<%@ page contentType="text/html;charset=UTF-8" language="java"  pageEncoding="UTF-8"  %>
<!DOCTYPE html>
<html>
<head>
    <title>首页</title>

    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
    <script src="js/jquery-3.3.1.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/imagesloaded.pkgd.min.js"></script>
    <script src="js/masonry.pkgd.min.js"></script>
    <style type="text/css">
        body{

        }
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
                        <li><a href="userInformation.jsp">个人信息</a></li>
                    </ul>
                </li>
            </ul>
        </div><!-- /.navbar-collapse -->
    </div><!-- /.container-fluid -->
</nav>

<div class="container" style="height: 400px">

        <div class="col-sm-4">
            <ul class="nav nav-pills nav-stacked">
                <li class ="active"><a href="#">数码</a></li>
                <li><a href="#">日用</a></li>
                <li><a href="#">书籍</a></li>
                <li><a href="#">服饰</a></li>
            </ul>
            <br />

            <div class="panel panel-default">
                <div class="panel-heading">
                    <h3 class="panel-title">公告板</h3>
                </div>
                <div class="panel-body">

                </div>
            </div>
        </div>

        <div class="col-sm-8">
            <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
                <!-- Indicators -->
                <ol class="carousel-indicators" >
                    <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
                    <li data-target="#carousel-example-generic" data-slide-to="1"></li>
                    <li data-target="#carousel-example-generic" data-slide-to="2"></li>
                </ol>

                <!-- Wrapper for slides -->
                <div class="carousel-inner" role="listbox">
                    <div class="item active">
                        <img src="images/TestImage2.jpg" alt="First slide">
                        <div class="carousel-caption">
                            ...
                        </div>
                    </div>
                    <div class="item" >
                        <img src="images/TestImage3.jpg" alt="Second slide">
                        <div class="carousel-caption">
                            ...
                        </div>
                    </div>
                    <div class="item">
                        <img src="images/TestImage4.jpg" alt="Third slide">
                        <div class="carousel-caption">
                            ...
                        </div>
                    </div>

                </div>

                <!-- Controls -->
                <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
                    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
                    <span class="sr-only">Previous</span>
                </a>
                <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
                    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
                    <span class="sr-only">Next</span>
                </a>
            </div>
        </div>
</div>
<div class="container" style="height: 600px">
    <ul class="nav nav-tabs">
        <li class="active"><a href="#popular" data-toggle="tab">最近热门</a></li>
        <li><a href="#release" data-toggle="tab">最新发布</a></li>
        <li><a href="#browse" data-toggle="tab">最近浏览</a></li>
    </ul>
    <div id="myTabContent" class="tab-content">
        <div class="tab-pane fade in active" id="popular">
            asssssssss
        </div>
        <div class="tab-pane fade" id="release">
            s
        </div>
        <div class="tab-pane fade" id="browse">
            d
        </div>
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

