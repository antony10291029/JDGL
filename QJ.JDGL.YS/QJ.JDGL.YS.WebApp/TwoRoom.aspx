<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TwoRoom.aspx.cs" Inherits="QJ.JDGL.YS.WebApp.TwoRoom" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
<link href="css/bootstrap.min.css" rel="stylesheet" />
    <link href="css/matrix-media.css" rel="stylesheet" />
    <link href="css/matrix-style.css" rel="stylesheet" />
    <link href="css/bootstrap-responsive.min.css" rel="stylesheet" />
    <link href="font-awesome/css/font-awesome.css" rel="stylesheet" />
    <link href="css/roomstyle.css" rel="stylesheet" />
    <style type="text/css">
        .radiolist label {
            display: inline-block;
            margin-left: -10px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div id="header">
                <h1>七瑾国际酒店</h1>
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
                    <li class="submenu"><a href="index.aspx"><i class="icon icon-signal"></i><span>房间信息</span></a>
                        <ul>
                            <li><a href="OneRoom.aspx">标准间</a></li>
                            <li class="active"><a href="TwoRoom.aspx">双人间</a></li>
                            <li><a href="HaohuaRoom.aspx">豪华套房</a></li>
                        </ul>
                    </li>
                    <li class="submenu"><a href="#"><i class="icon icon-inbox"></i><span>住房服务</span></a>
                        <ul>
                            <li><a href="#">未住宿房间信息</a></li>
                            <li><a href="#">已住宿房间信息</a></li>
                        </ul>
                    </li>
                   <li class="submenu"><a href="#"><i class="icon icon-th"></i><span>物品报修</span></a>
                        <ul>
                            <li><a href="insbaoxiu.aspx">添加报修信息</a></li>
                            <li><a href="#">查看报修信息</a></li>
                        </ul>
                    </li>
                    <li  class="submenu"><a href="tousu.aspx"><i class="icon icon-fullscreen"></i><span>投诉中心</span></a>
                        <ul>
                            <li><a href="tousu.aspx">添加投诉信息</a></li>
                            <li><a href="seltousu.aspx">查看投诉信息</a></li>
                        </ul>
                    </li>
                    <li><a href="#"><i class="icon icon-th-list"></i><span>结账信息</span></a></li>
                 <li><a href="StaffInfo.aspx"><i class="icon icon-tint"></i><span>员工管理</span></a></li>
                    <li><a href="#"><i class="icon icon-pencil"></i><span>账单信息</span></a></li>
                </ul>
            </div>
            <div id="content">
                <div id="content-header">
                    <div id="breadcrumb">
                         <a href="index.aspx" title="返回房间信息" class="tip-bottom"><i class="icon-home"></i>房间信息</a> 
                        <a href="#" class="current">双人间</a>
                    </div>
                    <div class="all">
                        <br />
                        <p style="text-align:center;font-size:40px;margin-top: 30px;margin-bottom: 50px;">双人间</p>
                        <div class="top">
                            <div class="col1 col"></div>
                            <div class="col2 col">床型</div>
                            <div class="col2 col">早餐</div>
                            <div class="col2 col">人数上限</div>
                            <div class="col3 col">取消政策</div>
                            <div class="col4 col">服务指标</div>
                            <div class="col5 col">均价</div>
                        </div>
                        <div class="left">
                            <div class="box">
                                <div class="box-1">
                                    <ul style="list-style: none;">
                                        <li>
                                            <img src="img/jpg/双人床1.jpg"/>
                                        </li>
                                        <li>
                                            <img src="img/jpg/双人床2.jpg" />
                                        </li>
                                    </ul>
                                </div>
                                <div class="box-2">
                                    <ul>
                                    </ul>
                                </div>
                                <div class="box-3">
                                    <span class="prev">< </span>
                                    <span class="next">> </span>
                                </div>
                            </div>
                        </div>
                        <div class="right">
                            <h3 style="margin-bottom: 10px">七瑾双人房</h3>
                            <div class="right_info">
                                <dl style="display: inline-block;">
                                    <dt>建筑面积</dt>
                                    <dd>32-35平方米</dd>
                                </dl>
                                <dl style="display: inline-block; margin-left: 35px">
                                    <dt>楼层</dt>
                                    <dd>2-6层</dd>
                                </dl>
                            </div>
                            <div class="right_info">
                                <dl style="display: inline-block;">
                                    <dt>床型</dt>
                                    <dd style="margin-left: 25px;">2张1.35米双人床</dd>
                                </dl>
                            </div>
                            <div class="right_info">
                                <dl style="display: inline-block;">
                                    <dt>可加床</dt>
                                    <dd style="margin-left: 10px;">不可加床</dd>
                                </dl>
                            </div>
                        </div>
                        <table class="bottom_info" border="0">
                            <tbody>
                                <tr>
                                    <td class="col1 col">
                                        <p>(旗舰店)</p>
                                    </td>
                                    <td class="col2 col">
                                        <p>双床</p>
                                    </td>
                                    <td class="col2 col">
                                        <p style="color: #10a200;">每天单早</p>
                                    </td>
                                    <td class="col2 col">
                                        <p>2人入住</p>
                                    </td>
                                    <td class="col3 col">
                                        <p>不可取消</p>
                                    </td>
                                    <td class="col4 col">
                                        <p>立即确认</p>
                                    </td>
                                    <td class="col5 col">
                                        <p style="color: #f60;">￥200</p>
                                    </td>
                                    <td class="col">
                                        <asp:LinkButton ID="LinkButton1" CssClass="col6" runat="server" Style="text-decoration: none"  data-toggle="modal" data-target="#myModal">
                                <div class="btn_yudin">预定</div>
                                <div class="btn_danbao">
                                    <span class="btn_dbspan">担保</span>
                                </div>
                                        </asp:LinkButton>
                                    </td>

                                </tr>
                            </tbody>
                        </table>
                        <table class="bottom_info" border="0">
                            <tbody>
                                <tr>
                                    <td class="col1 col">
                                        <p>(旗舰店)</p>
                                    </td>
                                    <td class="col2 col">
                                        <p>双床</p>
                                    </td>
                                    <td class="col2 col">
                                        <p style="color: #10a200;">每天双早</p>
                                    </td>
                                    <td class="col2 col">
                                        <p>2人入住</p>
                                    </td>
                                    <td class="col3 col">
                                        <p>可取消</p>
                                    </td>
                                    <td class="col4 col">
                                        <p>立即确认</p>
                                    </td>
                                    <td class="col5 col">
                                        <p style="color: #f60;">￥240</p>
                                    </td>
                                    <td class="col">
                                        <asp:LinkButton ID="LinkButton2" CssClass="col6" runat="server" Style="text-decoration: none"  data-toggle="modal" data-target="#myModal">
                                <div class="btn_yudin">预定</div>
                                <div class="btn_danbao">
                                    <span class="btn_dbspan">担保</span>
                                </div>
                                        </asp:LinkButton>
                                    </td>

                                </tr>
                            </tbody>
                        </table>
                        
                    </div>
                </div>
            </div>
            <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                            &times;
                        </button>
                        <h4 class="modal-title" id="myModalLabel">七瑾大床房
                        </h4>
                    </div>
                    <div class="modal-body">
                        <div style="margin:0 auto;padding:0;width:310px;">
                            <div>
                                <span>姓&nbsp;&nbsp;&nbsp;&nbsp;名：</span>&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox1" runat="server" placeholder="请输入住宿人姓名"></asp:TextBox>
                            </div>
                            <div class="radiolist">
                                <span>性&nbsp;&nbsp;&nbsp;&nbsp;别：</span>
                                <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal" RepeatLayout="Flow">
                                    <asp:ListItem Selected="True" Text="男"></asp:ListItem>
                                    <asp:ListItem Text="女"></asp:ListItem>
                                </asp:RadioButtonList>
                            </div>
                            <div>
                                <span>手机号：</span>&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox2" runat="server" placeholder="请输入住宿人手机号码"></asp:TextBox>
                            </div>
                            <div>
                                <span>身份证号：</span>
                                <asp:TextBox ID="TextBox3" runat="server" placeholder="请输入住宿人身份证号码"></asp:TextBox>
                            </div>
                            <div>
                                <span>房间类型：</span>
                                <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="RooType" DataValueField="RTypeID" AppendDataBoundItems="True">
                                    <asp:ListItem Text="-请选择-" Value="0" Selected="True"></asp:ListItem>
                                </asp:DropDownList>
                            </div>
                            <div>
                                <span>房间人数：</span>
                                <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource2" DataTextField="RooNum" DataValueField="NumID" AppendDataBoundItems="True">
                                    <asp:ListItem Text="-请选择-" Value="0" Selected="True"></asp:ListItem>
                                </asp:DropDownList>
                            </div>
                            <div>
                                <span>能否取消：</span>
                                <asp:DropDownList ID="DropDownList3" runat="server" DataSourceID="SqlDataSource3" DataTextField="RooRight" DataValueField="RightID" AppendDataBoundItems="True">
                                    <asp:ListItem Text="-请选择-" Value="0" Selected="True"></asp:ListItem>
                                </asp:DropDownList>
                            </div>
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:JDGLConnectionString %>" SelectCommand="SELECT * FROM [RoomType]"></asp:SqlDataSource>
                            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:JDGLConnectionString %>" SelectCommand="SELECT * FROM [RoomNum]"></asp:SqlDataSource>
                            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:JDGLConnectionString %>" SelectCommand="SELECT * FROM [RooRight]"></asp:SqlDataSource>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <asp:Button ID="Button4" runat="server" Text="关闭" class="btn btn-default" data-dismiss="modal"/>
                        <asp:Button ID="Button3" runat="server" Text="添加" class="btn btn-primary" OnClick="Button3_Click"/>
                    </div>
                </div>
                <!-- /.modal-content -->
            </div>
            <!-- /.modal -->
        </div>
        </div>
        <script type="text/javascript">
            window.onload = function () {
                function $(param) {
                    if (arguments[1] == true) {
                        return document.querySelectorAll(param);
                    } else {
                        return document.querySelector(param);
                    }
                }
                var $box = $(".box");
                var $box1 = $(".box-1 ul li", true);
                var $box2 = $(".box-2 ul");
                var $box3 = $(".box-3");
                var $length = $box1.length;

                var str = "";
                for (var i = 0; i < $length; i++) {
                    if (i == 0) {
                        str += "<li class='on'>" + (i + 1) + "</li>";
                    } else {
                        str += "<li>" + (i + 1) + "</li>";
                    }
                }
                $box2.innerHTML = str;

                var current = 0;
                function go() {
                    for (var j = 0; j < $length; j++) {
                        $box1[j].style.display = "none";
                        $box2.children[j].className = "";
                    }
                    if ($length == current) {
                        current = 0;
                    }
                    $box1[current].style.display = "block";
                    $box2.children[current].className = "on";
                    current++;
                }
                $box3.children[0].onclick = function () {
                    back();
                }
                $box3.children[1].onclick = function () {
                    go();
                }
                function back() {
                    for (var j = 0; j < $length; j++) {
                        $box1[j].style.display = "none";
                        $box2.children[j].className = "";
                    }
                    if (current == 0) {
                        current = $length;
                    }
                    $box1[current - 1].style.display = "block";
                    $box2.children[current - 1].className = "on";
                    current--;
                }
            }
        </script>
        <script src="js/jquery-1.7.js"></script>
        <script src="js/jquery.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script src="js/matrix.js"></script>
    </form>
</body>
</html>
