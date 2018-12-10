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
        .carousel-inner img{
            width: 100%;
        }
        #window-header{
            background-color: #ffd916;
        }
    </style>
</head>
<body>

<div id="window-header" class="jumbotron" style="height: 220px;margin-bottom: 0px" >
    <img src="images/logo.png" height="90px" width="290px">
</div>

<nav class="navbar navbar-default">
    <div class="container-fluid">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                <span class="sr-only"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="#">Trade</a>
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
                    </ul>
                </li>
            </ul>
        </div><!-- /.navbar-collapse -->
    </div><!-- /.container-fluid -->
</nav>

<div class="container">
    <div class="row">
        <div class="col-sm-4">
            <ul class="nav nav-pills nav-stacked">
                <li class ="active"><a href="#">数码</a></li>
                <li><a href="#">日用</a></li>
                <li><a href="#">书籍</a></li>
                <li><a href="#">服饰</a></li>
            </ul>
            <br />
            <img src="images/TestImage1.jpg" alt="用户头像" class="img-circle center-block" height="100px" width="100px"> <br />
            <div class="row">
                <div class="col-sm-3"></div>
                <div class="col-sm-3">
                    <button type="button" class="btn btn-primary ">登录</button>
                </div>
                <div class="col-sm-3">
                    <button type="button" class="btn btn-primary ">注册</button>
                </div>
            </div>
            <p class="text-center">关于我的介绍..<br />啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊<br />啊啊啊啊啊啊啊啊啊啊<br />啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊<br />啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊 <br />啊啊啊啊啊啊啊啊啊啊啊啊啊啊<br />啊啊啊啊啊啊啊啊啊</p>

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

            <p>11月12日，学生通过手机APP连通点智通-模块化智能插座电源，使电器通电。青海省西宁城市职业技术学院学生经两年研发的点智通-模块化智能插座获实用新型专利。该插板是一种插孔头可拆卸的智能插座，具有即时更换，方便快捷，安全的优点，属于智能插座领域。据青海省科技厅数据显示，截至2018年，该省每万人有效发明专利拥有量为2.12件</p>
            <br>
            <h2>标题</h2>
            <h5>副标题</h5>

            <p>11月12日，学生通过手机APP连通点智通-模块化智能插座电源，使电器通电。青海省西宁城市职业技术学院学生经两年研发的点智通-模块化智能插座获实用新型专利。该插板是一种插孔头可拆卸的智能插座，具有即时更换，方便快捷，安全的优点，属于智能插座领域。据青海省科技厅数据显示，截至2018年，该省每万人有效发明专利拥有量为2.12件11月12日，学生通过手机APP连通点智通-模块化智能插座电源，使电器通电。青海省西宁城市职业技术学院学生经两年研发的点智通-模块化智能插座获实用新型专利。该插板是一种插孔头可拆卸的智能插座，具有即时更换，方便快捷，安全的优点，属于智能插座领域。据青海省科技厅数据显示，截至2018年，该省每万人有效发明专利拥有量为2.12件11月12日，学生通过手机APP连通点智通-模块化智能插座电源，使电器通电。青海省西宁城市职业技术学院学生经两年研发的点智通-模块化智能插座获实用新型专利。该插板是一种插孔头可拆卸的智能插座，具有即时更换，方便快捷，安全的优点，属于智能插座领域。据青海省科技厅数据显示，截至2018年，该省每万人有效发明专利拥有量为2.12件11月12日，学生通过手机APP连通点智通-模块化智能插座电源，使电器通电。青海省西宁城市职业技术学院学生经两年研发的点智通-模块化智能插座获实用新型专利。该插板是一种插孔头可拆卸的智能插座，具有即时更换，方便快捷，安全的优点，属于智能插座领域。据青海省科技厅数据显示，截至2018年，该省每万人有效发明专利拥有量为2.12件11月12日，学生通过手机APP连通点智通-模块化智能插座电源，使电器通电。青海省西宁城市职业技术学院学生经两年研发的点智通-模块化智能插座获实用新型专利。该插板是一种插孔头可拆卸的智能插座，具有即时更换，方便快捷，安全的优点，属于智能插座领域。据青海省科技厅数据显示，截至2018年，该省每万人有效发明专利拥有量为2.12件11月12日，学生通过手机APP连通点智通-模块化智能插座电源，使电器通电。青海省西宁城市职业技术学院学生经两年研发的点智通-模块化智能插座获实用新型专利。该插板是一种插孔头可拆卸的智能插座，具有即时更换，方便快捷，安全的优点，属于智能插座领域。据青海省科技厅数据显示，截至2018年，该省每万人有效发明专利拥有量为2.12件11月12日，学生通过手机APP连通点智通-模块化智能插座电源，使电器通电。青海省西宁城市职业技术学院学生经两年研发的点智通-模块化智能插座获实用新型专利。该插板是一种插孔头可拆卸的智能插座，具有即时更换，方便快捷，安全的优点，属于智能插座领域。据青海省科技厅数据显示，截至2018年，该省每万人有效发明专利拥有量为2.12件</p>
        </div>
    </div>
    <br />
    <div class="row">
        <div class="col-sm-4">
            <div class="panel panel-default">
                <div class="panel-heading">
                    <h3 class="panel-title">公告板</h3>
                </div>
                <div class="panel-body">
                    11月12日，学生通过手机APP连通点智通-模块化智能插座电源，使电器通电。青海省西宁城市职业技术学院学生经两年研发的点智通-模块化智能插座获实用新型专利。该插板是一种插孔头可拆卸的智能插座，具有即时更换，方便快捷，安全的优点，属于智能插座领域。据青海省科技厅数据显示，截至2018年，该省每万人有效发明专利拥有量为2.12件11月12日，学生通过手机APP连通点智通-模块化智能插座电源，使电器通电。
                </div>
            </div>
        </div>
    </div>

    <br />

    <hr class="hidden-sm hidden-md hidden-lg">
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

