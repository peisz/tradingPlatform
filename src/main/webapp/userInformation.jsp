<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/12/25 0025
  Time: 下午 3:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>个人信息</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
    <script src="js/jquery-3.3.1.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            $('img').each(function () {
                if ($(this).attr('src') == "") {
                    $(this).attr('src', 'images/photo.jpg');
                }
            });
        });
    </script>
    <script type="text/javascript">
        if (typeof FileReader == 'undefined') {
            document.getElementById("xmTanDiv").InnerHTML = "<h1>当前浏览器不支持FileReader接口</h1>";
            document.getElementById("xdaTanFileImg").setAttribute("disabled", "disabled");
        }
        //选择图片，马上预览
        function xmTanUploadImg(obj) {
            var file = obj.files[0];
            console.log(obj);console.log(file);
            console.log("file.size = " + file.size);
            var reader = new FileReader();
            reader.onloadstart = function (e) {
                console.log("开始读取....");
            }
            reader.onprogress = function (e) {
                console.log("正在读取中....");
            }
            reader.onabort = function (e) {
                console.log("中断读取....");
            }
            reader.onerror = function (e) {
                console.log("读取异常....");
            }
            reader.onload = function (e) {
                console.log("成功读取....");
                var img = document.getElementById("userPhoto");
                img.src = e.target.result;
                //或者 img.src = this.result;  //e.target == this
            }
            reader.readAsDataURL(file)
        }
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
                        <li><a href="#">个人信息</a></li>
                    </ul>
                </li>
            </ul>
        </div><!-- /.navbar-collapse -->
    </div><!-- /.container-fluid -->
</nav>
<div class="container" style="margin-top: 100px">
    <div class="well well-lg col-lg-8 col-sm-offset-2" >

        <img src="" class="img-circle center-block" id="userPhoto" alt="" width="200" height="200">

        <form role="form">

            <div class="form-group">
                <label for="uploadImage"></label>
                <input type="file" class="col-sm-offset-5" name="img" id="uploadImage" value="" onchange="xmTanUploadImg(this)" accept="image/*" />
            </div>

            <div class="form-group">
                <label for="stuID">学号</label>
                <input type="text" class="form-control" id="stuID" value="${user.member_id}"  readonly>
            </div>
            <div class="form-group">
                <label for="stuName">姓名</label>
                <input type="text" class="form-control" id="stuName" value="${user.member_name}" readonly>
            </div>
            <div class="form-group">
                <label for="phoneNumber">手机号</label>
                <input type="text" class="form-control" id="phoneNumber" value="${user.phone_number}" readonly>
            </div>

            <h4><b>必填</b></h4>
            <div class="form-group">
                <label for="stuIdCard">学生证上传</label>
                <input type="file" id="stuIdCard">
            </div>

            <h4><b>选填</b></h4>
            <div class="form-group">
                <label>性别</label>
                <label class="radio-inline">
                    <input type="radio" name="gender" id="male" value="男" checked>男
                </label>
                <label class="radio-inline">
                    <input type="radio" name="gender" id="female"  value="女">女
                </label>
            </div>
            <div class="form-group">
                <label for="email">邮箱</label>
                <input type="email" class="form-control" name="email" id="email" placeholder="请输入邮箱">
            </div>
            <div class="form-group">
                <label for="profile">个人简介</label>
                <textarea class="form-control" id="profile" rows="5"></textarea>
            </div>

            <button type="submit" class="btn btn-primary">提交</button>

        </form>

    </div>
</div>


</body>
</html>
