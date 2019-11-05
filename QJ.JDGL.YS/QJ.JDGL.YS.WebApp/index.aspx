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
    <script src="js/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/matrix.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div id="header">
                <h1><a href="dashboard.html">MatAdmin</a></h1>
            </div>
            <div id="user-nav" class="navbar navbar-inverse">
                <ul class="nav">
                    <li class="dropdown" id="profile-messages"><a title="" href="#" data-toggle="dropdown" data-target="#profile-messages" class="dropdown-toggle"><i class="icon icon-user"></i><span class="text">欢迎Admin</span><b class="caret"></b></a>
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
                    <%--<li class="active"><a href="index.html"><i class="icon icon-home"></i><span>首页</span></a> </li>--%>
                    <li class="submenu active"><a href="#"><i class="icon icon-signal"></i><span>房间信息</span></a>
                        <ul>
                            <li><a href="#">未住宿房间信息</a></li>
                            <li><a href="#">已住宿房间信息</a></li>
                        </ul>
                    </li>
                    <li><a href="#"><i class="icon icon-inbox"></i><span>住房服务</span></a> </li>
                    <li><a href="#"><i class="icon icon-th"></i><span>物品报修</span></a></li>
                    <li><a href="#"><i class="icon icon-fullscreen"></i><span>投诉中心</span></a></li>
                    <li><a href="#"><i class="icon icon-th-list"></i><span>结账信息</span></a></li>
                    <li><a href="#"><i class="icon icon-tint"></i><span>员工管理</span></a></li>
                    <li><a href="#"><i class="icon icon-pencil"></i><span>账单信息</span></a></li>
                    <%--<li class="submenu"><a href="#"><i class="icon icon-file"></i><span>其他</span> </a>
                        <ul>
                            <li><a href="#">首页</a></li>
                            <li><a href="#">相册</a></li>
                            <li><a href="#">日历</a></li>
                            <li><a href="#">清单</a></li>
                            <li><a href="#">聊天</a></li>
                        </ul>
                    </li>
                    <li class="submenu"><a href="#"><i class="icon icon-info-sign"></i><span>错误页面</span> </a>
                        <ul>
                            <li><a href="#">403错误页面</a></li>
                            <li><a href="#">404错误页面</a></li>
                            <li><a href="#">405错误页面</a></li>
                            <li><a href="#">500错误页面</a></li>
                        </ul>
                    </li>--%>
                </ul>
            </div>
            <div id="content">
                <div id="content-header">
                    <div id="breadcrumb"><a href="index.html" title="Go to Home" class="tip-bottom"><i class="icon-home"></i>Home</a> <a href="#">Form elements</a> <a href="#" class="current">Validation</a> </div>

                </div>
            </div>
        </div>
    </form>
</body>
</html>
