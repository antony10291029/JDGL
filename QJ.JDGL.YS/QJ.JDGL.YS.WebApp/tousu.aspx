<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="tousu.aspx.cs" Inherits="QJ.JDGL.YS.WebApp.tousu" %>

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
    <script src="js/jquery-1.7.js"></script>
     <script type="text/javascript">
        $(function() {
				$("#div1").click(function() {
                    $(this).css("background", "darkgray");
                    $(this).css("border", "1px solid darkgray");
                    $("#div2").css("background", "white");
                    $("#div2").css("border", "1px solid white");
                    $("#div3").css("display", "block");
                    $("#div4").css("display", "none");

            });
            //$("#div1").hover(function () {
            //    $("#div1").attr("cursor","pointer")
            //})
                $("#div2").click(function() {
                    $(this).css("background", "darkgray");
                    $(this).css("border", "1px solid darkgray");
                    $("#div1").css("background", "white");
                    $("#div1").css("border", "1px solid white");
                    $("#div4").css("display", "block");
                    $("#div3").css("display", "none");

				});
		});
    </script>
    <style type="text/css">
        .auto-style1 {
            width: 415px;
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
                    <li class="submenu"><a href="index.aspx"><i class="icon icon-signal"></i><span>房间信息</span></a>
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
                    <li  class="active"><a href="#"><i class="icon icon-fullscreen"></i><span>投诉中心</span></a></li>
                    <li><a href="#"><i class="icon icon-th-list"></i><span>结账信息</span></a></li>
                    <li><a href="#"><i class="icon icon-tint"></i><span>员工管理</span></a></li>
                    <li><a href="#"><i class="icon icon-pencil"></i><span>账单信息</span></a></li>
                </ul>
            </div>
             <div id="content">
                <div id="content-header">
                     <div id="breadcrumb">
                         <a href="index.aspx" title="Go to Home" class="tip-bottom"><i class="icon-home"></i>房间信息</a> <a href="#" class="current">投诉中心</a>
                     </div>
                    <div style="background-color:white;width:1800px;height:875px;margin-bottom: -25px;">
                    <div id="div1" style="float:left;background-color:darkgray;width:140px;height:60px;margin-left:80px;border:1px solid darkgray;font-size:30px;text-align:center;cursor:pointer" >
                          <span style="line-height:62px">
                                添加投诉
                          </span>
                        
                    </div>
                    <div id="div2" style="float:left;background-color:white;width:140px;height:60px;border:1px solid white;font-size:30px;text-align:center;cursor:pointer">
                        <span style="line-height:62px">
                                查看投诉
                          </span>
                    </div>
                     <div id="div3" style="font-size:30px;text-align:center; margin-top:100px;position:absolute;left:80px;top:0;display:block;width:800px;height:500px;border:1px solid darkgray;background-color:darkgray">
                         <table style="width: 100%; height:500px;margin:0 auto">
                             <tr style="width:600px">
                                 <td style="width:300px">姓名：</td>
                                 <td class="auto-style1">
                                     <asp:DropDownList ID="DropDownList1" runat="server"></asp:DropDownList>
                                 </td>
                             </tr>
                             <tr>
                                 <td>房间号：</td>
                                 <td class="auto-style1">
                                     <asp:DropDownList ID="DropDownList2" runat="server"></asp:DropDownList>

                                 </td>
                             </tr>
                             <tr>
                                 <td>举报对象：</td>
                                 <td class="auto-style1">
                                     <asp:DropDownList ID="DropDownList3" runat="server"></asp:DropDownList>
                                 </td>
                             </tr>
                             <tr>
                                 <td>举报理由：</td>
                                 <td class="auto-style1">
                                     <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                                 </td>
                             </tr>
                             <tr>
                                 <td colspan="2">
                                     <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">提交</asp:LinkButton>
                                     &nbsp &nbsp &nbsp
                                     <asp:LinkButton ID="LinkButton2" runat="server">重置</asp:LinkButton>
                                 </td>
                                 
                             </tr>
                         </table>
                     </div>
                    <div id="div4" style="font-size:30px;text-align:center; margin-top:100px;position:absolute;left:80px;top:0;display:none;width:800px;height:500px;border:1px solid darkgray;background-color:darkgray">
                        <asp:Repeater ID="Repeater1" runat="server">
                            <HeaderTemplate>
                                <table class="mytable" style="height:200px;width:100%;border-bottom:0px;border-left:0px;border-top:0px;border-right:0px;margin-top:20px" border="1">
                                    <tr>
                                        <th>
                                            投诉编号
                                        </th>
                                        <th>
                                            投诉人
                                        </th>
                                        <th>
                                            所在房间
                                        </th>
                                        <th>
                                            投诉对象
                                        </th>
                                        <th>
                                            投诉理由
                                        </th>
                                        <th>
                                            操作
                                        </th>
                                    </tr>
                            </HeaderTemplate>
                            <ItemTemplate>
                                    <tr>
                                        <td><%#Eval("touid") %></td>
                                        <td><%#Eval("touname") %></td>
                                        <td><%#Eval("toufang") %></td>
                                        <td><%#Eval("toudui") %></td>
                                        <td><%#Eval("touliyou") %></td>
                                        <td>
                                            <asp:LinkButton ID="LinkButton3" runat="server">处理投诉</asp:LinkButton>
                                        </td>
                                    </tr>
                            </ItemTemplate>
                            <FooterTemplate>
                                </table>
                            </FooterTemplate>
                        </asp:Repeater>
                    </div>
                    </div>
                 </div>
            </div>
        </div>
        <script src="js/jquery.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script src="js/matrix.js"></script>
    </form>
</body>
</html>
