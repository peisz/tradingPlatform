<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/12/28 0028
  Time: 下午 7:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>我的发布</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
    <script src="js/jquery-3.3.1.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/imagesloaded.pkgd.min.js"></script>
    <script src="js/masonry.pkgd.min.js"></script>

    <style type="text/css">
        body{
            background-color: beige;
        }
        #masonry{
            padding: 20px;
        }
        .well{
            margin-bottom: 20px;
            float: left;
            width: 22%;
        }
        .well img {
            max-width: 100%
        }
    </style>

    <script>
        $(function() {
            var $container = $('#masonry');
            $container.imagesLoaded(function() {
                $container.masonry({
                    itemSelector: '.well',
                    gutter: 20,
                    isAnimated: true,
                });
            });
        });
    </script>

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
<div class="container">
    <div class="container" id="masonry">
        <c:forEach var="goods" items="${gList}">
                <div class="well">
                    <img src="${goods.getGoodsPicture().get(0).getPicture_url()}" class="img-rounded">
                    <a href="item.jsp">
                        <div class="text-center">${goods.goods_name}</div><br />
                        <div class="col-sm-8">${goods.brief_account}啊啊啊啊啊啊啊啊啊啊啊啊</div>
                        <div class="col-sm-4">${goods.price}元</div>
                    </a>
                </div>
        </c:forEach >


        <c:forEach var="goods" items="${gList}">
            <div class="well">
                <img src="${goods.getGoodsPicture().get(0).getPicture_url()}" class="img-rounded">
                <a href="item.jsp">
                    <div class="text-center">${goods.goods_name}</div><br />
                    <div class="col-sm-8">${goods.brief_account}啊啊啊啊啊啊啊啊啊啊啊啊</div>
                    <div class="col-sm-4">${goods.price}元</div>
                </a>
            </div>
        </c:forEach ><c:forEach var="goods" items="${gList}">
        <div class="well">
            <img src="${goods.getGoodsPicture().get(0).getPicture_url()}" class="img-rounded">
            <a href="item.jsp">
                <div class="text-center">${goods.goods_name}</div><br />
                <div class="col-sm-8">${goods.brief_account}啊啊啊啊啊啊啊啊啊啊啊啊</div>
                <div class="col-sm-4">${goods.price}元</div>
            </a>
        </div>
    </c:forEach ><c:forEach var="goods" items="${gList}">
        <div class="well">
            <img src="${goods.getGoodsPicture().get(0).getPicture_url()}" class="img-rounded">
            <a href="item.jsp">
                <div class="text-center">${goods.goods_name}</div><br />
                <div class="col-sm-8">${goods.brief_account}啊啊啊啊啊啊啊啊啊啊啊啊</div>
                <div class="col-sm-4">${goods.price}元</div>
            </a>
        </div>
    </c:forEach ><c:forEach var="goods" items="${gList}">
        <div class="well">
            <img src="${goods.getGoodsPicture().get(0).getPicture_url()}" class="img-rounded">
            <a href="item.jsp">
                <div class="text-center">${goods.goods_name}</div><br />
                <div class="col-sm-8">${goods.brief_account}啊啊啊啊啊啊啊啊啊啊啊啊</div>
                <div class="col-sm-4">${goods.price}元</div>
            </a>
        </div>
    </c:forEach >

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
</body>
</html>