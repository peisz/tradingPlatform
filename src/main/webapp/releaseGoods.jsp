<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/12/26 0026
  Time: 下午 8:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>发布商品</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
    <link href="https://cdn.bootcss.com/bootstrap-fileinput/4.3.3/css/fileinput.min.css" rel="stylesheet">
    <script src="js/jquery-3.3.1.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="https://cdn.bootcss.com/bootstrap-fileinput/4.3.3/js/fileinput.min.js"></script>
    <script src="https://cdn.bootcss.com/bootstrap-fileinput/4.3.5/js/locales/zh.min.js "></script>
<%--    <script>
        $('#goodsPicture').fileinput({ //初始化上传文件框
            language: "zh",//配置语言
            showUpload : true, //显示整体上传的按钮
            howRemove : true,//显示整体删除的按钮
            uploadAsync: true,//默认异步上传
            uploadLabel: "上传",//设置整体上传按钮的汉字
            removeLabel: "移除",//设置整体删除按钮的汉字
            uploadClass: "btn btn-primary",//设置上传按钮样式
            showCaption: true,//是否显示标题
            dropZoneEnabled: false,//是否显示拖拽区域
            //uploadUrl: getPath('/gz/tool/toolAction/uploadImgFile'),//这个是配置上传调取的后台地址，本项目是SSM搭建的
            maxFileSize : 9999,//文件大小限制
            maxFileCount: 6,//允许最大上传数，可以多个，
            enctype: 'multipart/form-data',
            allowedFileExtensions : ["jpg", "png"],/*上传文件格式限制*/
            msgFilesTooMany: "选择上传的文件数量({n}) 超过允许的最大数值{m}！",
            showBrowse: true,
            browseOnZoneClick: true,
            slugCallback : function(filename) {
                return filename.replace('(', '_').replace(']', '_');
            }
        });
    </script>--%>
    <style type="text/css">
        body{
            background-color: beige;
        }

    </style>



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
    <div class="well well-sm">
        <form role="form"  action="GoodsInfo.do" method="post">
            <div class="form-group">
                <label for="goodsName">商品名称</label>
                <input type="text" class="form-control" name="goodsName" id="goodsName">
            </div>
            <div class="form-group">
                <label for="price">价格</label>
                <input type="text" class="form-control" name="price" id="price">
            </div>
            <div class="form-group">
                <label for="classification">商品类别</label>
                <select class="form-control" name="classification" id="classification">
                    <option>    </option>
                    <option>书籍</option>
                    <option>服饰</option>
                    <option>数码</option>
                    <option>日用</option>
                    <option>其他</option>
                </select>
            </div>
            <div class="form-group">
                <label for="briefAccount">简介</label>
                <input type="text" class="form-control" name="briefAccount" id="briefAccount">
            </div>
            <div class="form-group">
                <label for="description">详细描述</label>
                <textarea class="form-control" rows="3" name="description" id="description"></textarea>
            </div>
            ${GoodsInfoSucc}
            <button type="submit" class="btn btn-primary">提交</button>
        </form>
    </div>

    <form role="form" action="GoodsPic.do" method="post"  enctype="multipart/form-data">
        <input id="goodsPicture" name="goodsPicture" type="file" class="file" />
    </form>
</div>

</body>
</html>
