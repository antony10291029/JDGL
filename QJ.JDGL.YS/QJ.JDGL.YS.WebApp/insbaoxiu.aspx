<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="insbaoxiu.aspx.cs" Inherits="QJ.JDGL.YS.WebApp.insbaoxiu" %>

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
    <style type="text/css">
        .yemian {
            background-color:white;
            width:1700px;
            height:840px;
            margin-bottom: -25px;
        }
                .auto-style1 {
            width: 415px;
        }
        table.gridtable {
   font-family: verdana,arial,sans-serif;
    font-size:11px;
      color:#333333;
      border-width: 1px;
      border-color: #666666;
      border-collapse: collapse;
 }
 table.gridtable th {
     border-width: 1px;
     padding: 8px;
     border-style: solid;
     border-color: #666666;
     background-color: #dedede;
 }
 table.gridtable td {
     border-width: 1px;
     padding: 8px;
     border-style: solid;
     border-color: #666666;
     background-color: #ffffff;
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
                    <li class="dropdown" id="menu-messages"><a href="#" data-toggle="dropdown" data-target="#menu-messages" class="dropdown-toggle"><i class="icon icon-envelope"></i><span class="text">消息</span> <span class="label label-important">8</span> <b class="caret"></b></a>
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
                            <li><a href="TwoRoom.aspx">双人间</a></li>
                            <li><a href="HaohuaRoom.aspx">豪华套房</a></li>
                        </ul>
                    </li>
                    <li class="submenu"><a href="index.aspx"><i class="icon icon-inbox"></i><span>住房服务</span></a>
                        <ul>
                            <li><a href="#">未住宿房间信息</a></li>
                            <li><a href="#">已住宿房间信息</a></li>
                        </ul>
                    </li>
                    <li class="submenu active"><a href="#"><i class="icon icon-th"></i><span>物品报修</span></a>
                         <ul>
                            <li><a href="#">添加报修信息</a></li>
                            <li><a href="baoxiu.aspx">查看报修信息</a></li>
                        </ul>
                    </li>
                    <li  class="submenu"><a href="#"><i class="icon icon-fullscreen"></i><span>投诉中心</span></a>
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
                         <a href="index.aspx" title="Go to Home" class="tip-bottom"><i class="icon-home"></i>房间信息</a> <a href="#" class="current">添加报修</a>
                     </div>
                     <div class="yemian">
                          <div id="div3" style="font-size:30px;text-align:center; margin-top:100px;position:absolute;left:80px;top:0;display:block;width:800px;height:500px;border:1px solid darkgray;background-color:darkgray">
                         <table  style="width: 100%; height:500px;margin:0 auto">
                             <tr style="width:600px">
                                 <td style="width:300px">姓名：</td>
                                 <td class="auto-style1">
                                     <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                                 </td>
                             </tr>
                             <tr>
                                 <td>房间号：</td>
                                 <td class="auto-style1">
                                     <asp:DropDownList ID="DropDownList2" runat="server"></asp:DropDownList>

                                 </td>
                             </tr>
                             <tr>
                                 <td>损坏物：</td>
                                 <td class="auto-style1">
                                     <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                                 </td>
                             </tr>
                            <%-- <tr>
                                 <td>报修时间：</td>
                                 <td class="auto-style1">
                                     <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                                 </td>
                             </tr>--%>
                             <tr>
                                 <td colspan="2">
                                     <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">提交</asp:LinkButton>
                                     &nbsp &nbsp &nbsp
                                     <asp:LinkButton ID="LinkButton2" runat="server">重置</asp:LinkButton>
                                 </td>
                                 
                             </tr>
                         </table>
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