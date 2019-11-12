<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="QJ.JDGL.YS.WebApp.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title></title>
    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <link href="css/matrix-media.css" rel="stylesheet" />
    <link href="css/matrix-style.css" rel="stylesheet" />
    <link href="css/bootstrap-responsive.min.css" rel="stylesheet" />
    <link href="font-awesome/css/font-awesome.css" rel="stylesheet" />
    <style type="text/css">
        .all{
            background-color:white;
            margin-bottom: -25px;
            padding: 50px 60px 15px 105px;
        }
        .center {
            width: 1285px;
        }

        .left_img {
            width: 1000px;
            float: left;
            padding-top: 11px;
            padding-right:10px;
        }

        .right_top {
            border: 1px solid #DCEBFF;
            margin-top: 10px;
            padding: 10px 20px 0;
            background-color: #f7faff;
            width: 220px;
            height: 255px;
            float: left;
        }

        .small {
            width: 163px;
            height: 80px;
        }

        .right_size {
            margin-right: 10px;
            font-size: 22px;
            color: #2676e3;
            font-weight: bold;
        }

        .bottom {
            width: 1265px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div id="header">
                <h1><a href="dashboard.html">MatAdmin</a></h1>
            </div>
            <div id="user-nav" class="navbar navbar-inverse">
                <ul class="nav">
                    <li class="dropdown" id="profile-messages"><a title="" href="#" data-toggle="dropdown" data-target="#profile-messages" class="dropdown-toggle"><i class="icon icon-user"></i>
                        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label><b class="caret"></b></a>
                        <ul class="dropdown-menu">
                            <li><a href="#"><i class="icon-user"></i>我的资料</a></li>
                            <li class="divider"></li>
                            <li><a href="#"><i class="icon-check"></i>我的任务</a></li>
                            <li class="divider"></li>
                            <li><a href="login.aspx"><i class="icon-key"></i>退出</a></li>
                        </ul>
                    </li>
                    <li class="dropdown" id="menu-messages"><a href="#" data-toggle="dropdown" data-target="#menu-messages" class="dropdown-toggle"><i class="icon icon-envelope"></i><span class="text">消息</span> <span class="label label-important">5</span> <b class="caret"></b></a>
                        <ul class="dropdown-menu">
                            <li><a class="sAdd" title="" href="#"><i class="icon-plus"></i>新消息</a></li>
                            <li class="divider"></li>
                            <li><a class="sInbox" title="" href="#"><i class="icon-envelope"></i>收件箱</a></li>
                            <li class="divider"></li>
                            <li><a class="sOutbox" title="" href="#"><i class="icon-arrow-up"></i>发件箱</a></li>
                            <li class="divider"></li>
                            <li><a class="sTrash" title="" href="#"><i class="icon-trash"></i>发送</a></li>
                        </ul>
                    </li>
                    <li class=""><a title="" href="#"><i class="icon icon-cog"></i><span class="text">设置</span></a></li>
                    <li class=""><a title="" href="login.aspx"><i class="icon icon-share-alt"></i><span class="text">退出</span></a></li>
                </ul>
            </div>
            <div id="search">
                <input type="text" placeholder="请输入搜索内容..." />
                <button type="submit" class="tip-bottom" title="Search"><i class="icon-search icon-white"></i></button>
            </div>
            <div id="sidebar">
                <a href="#" class="visible-phone"><i class="icon icon-list"></i>Forms</a>
                <ul>
                    <li class="submenu active"><a href="#"><i class="icon icon-signal"></i><span>房间信息</span></a>
                        <ul>
                            <li><a href="#">标准间</a></li>
                            <li><a href="#">双人间</a></li>
                            <li><a href="#">豪华套房</a></li>
                        </ul>
                    </li>
                    <li class="submenu"><a href="#"><i class="icon icon-inbox"></i><span>住房服务</span></a>
                        <ul>
                            <li><a href="#">未住宿房间信息</a></li>
                            <li><a href="#">已住宿房间信息</a></li>
                        </ul>
                    </li>
                    <li><a href="#"><i class="icon icon-th"></i><span>物品报修</span></a></li>
                    <li><a href="tousu.aspx"><i class="icon icon-fullscreen"></i><span>投诉中心</span></a></li>
                    <li><a href="#"><i class="icon icon-th-list"></i><span>结账信息</span></a></li>
                    <li><a href="#"><i class="icon icon-tint"></i><span>员工管理</span></a></li>
                    <li><a href="#"><i class="icon icon-pencil"></i><span>账单信息</span></a></li>
                </ul>
            </div>
            <div id="content">
                <div id="content-header">
                    <div id="breadcrumb">
                        <a href="index.html" title="Go to Home" class="tip-bottom">
                            <i class="icon-home"></i>房间信息</a>
                    </div>
                    <div class="all">
                        <div class="center">
                            <span style="font-size: 26px;"><b>七瑾国际酒店</b></span>
                            <span style="margin-left: 10px; color: #999; font-size: 18px;">Qijin International Hotel</span><br />
                            <span style="margin-top: 14px;">地理位置：航海东路与经开第二十二大街交叉口路北</span>
                            <div class="left_img">
                                <div>
                                    <img class="big" src="img/jpg/首图1.jpg" style="height: 400px; width: 996px;" />
                                </div>
                                <div>
                                    <img class="small" src="img/jpg/首图1.jpg" />
                                    <img class="small" src="img/jpg/首图2.jpg" />
                                    <img class="small" src="img/jpg/首图3.jpg" />
                                    <img class="small" src="img/jpg/首图4.jpg" />
                                    <img class="small" src="img/jpg/首图5.jpg" />
                                    <img class="small" src="img/jpg/首图6.jpg" />
                                </div>
                            </div>
                            <div class="right_top">
                                <span class="right_size"><b>超棒 4.6</b></span><span>/5分</span><br />
                                <br />
                                <span style="color: #2676e3">3833</span>条住客点评，<span style="color: #2676e3">97%</span><span>用户推荐</span><br />
                                <br />
                                <span>“七瑾国际酒店作为郑州大型综合商业项目的重要组成部分，今年国庆长假选择通过携程订在座落于郑州的HYATT REGENCY。环境优雅服务热情。”</span>
                            </div>
                            <div>
                                <img src="img/jpg/地图.png" style="margin-top: 15px; width: 260px;" />
                            </div>
                        </div>
                        <div class="bottom">
                            <h2 style="color: #2676e3; margin: 30px 20px 20px 100px;">酒店设施</h2>
                            <img src="img/jpg/信息.png" style="margin-left: 100px;" />
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <script type="text/javascript">
            var big = document.getElementsByClassName("big")[0];
            var smalls = document.getElementsByClassName("small");
            for (var i = 0; i < smalls.length; i++) {
                smalls[i].onmouseover = function () {
                    big.src = this.src;
                }
            }
            console.log("a");
        </script>
        <script src="js/jquery.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script src="js/matrix.js"></script>
    </form>
</body>
</html>
