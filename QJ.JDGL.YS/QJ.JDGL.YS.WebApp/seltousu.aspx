<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="seltousu.aspx.cs" Inherits="QJ.JDGL.YS.WebApp.seltousu" %>

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
     <%--<script type="text/javascript">
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
    </script>--%>
    <style type="text/css">
        .auto-style1 {
            width: 415px;
        }
        .table-wrapper{
    margin: 50px 10px 70px 4px;
    box-shadow: 0px 35px 50px rgba( 0, 0, 0, 0.2 );
}

.fl-table {
    border-radius: 5px;
    font-size: 12px;
    font-weight: normal;
    border: none;
    border-collapse: collapse;
    width: 100%;
    max-width: 100%;
    white-space: nowrap;
    background-color: white;
}

.fl-table td, .fl-table th {
    text-align: center;
    padding: 8px;
}

.fl-table td {
    border-right: 1px solid #f8f8f8;
    font-size: 12px;
}

.fl-table thead th {
    color: #ffffff;
    background: #4FC3A1;
}


.fl-table thead th:nth-child(odd) {
    color: #ffffff;
    background: #324960;
}

.fl-table tr:nth-child(even) {
    background: #F8F8F8;
}

/* Responsive */

         td {
            background-color:bisque;
        }
        @media (max-width: 767px) {
            .fl-table {
                display: block;
                width: 100%;
            }

            .table-wrapper:before {
                content: "Scroll horizontally >";
                display: block;
                text-align: right;
                font-size: 11px;
                color: white;
                padding: 0 0 10px;
            }

            .fl-table thead, .fl-table tbody, .fl-table thead th {
                display: block;
            }

                .fl-table thead th:last-child {
                    border-bottom: none;
                }

            .fl-table thead {
                float: left;
            }

            .fl-table tbody {
                width: auto;
                position: relative;
                overflow-x: auto;
            }

            .fl-table td, .fl-table th {
                padding: 20px .625em .625em .625em;
                height: 60px;
                vertical-align: middle;
                box-sizing: border-box;
                overflow-x: hidden;
                overflow-y: auto;
                width: 120px;
                font-size: 13px;
                text-overflow: ellipsis;
            }

            .fl-table thead th {
                text-align: left;
                border-bottom: 1px solid #f7f7f9;
            }

            .fl-table tbody tr {
                display: table-cell;
            }

                .fl-table tbody tr:nth-child(odd) {
                    background: none;
                }

            .fl-table tr:nth-child(even) {
                background: transparent;
            }

            .fl-table tr td:nth-child(odd) {
                background: #F8F8F8;
                border-right: 1px solid #E6E4E4;
            }

            .fl-table tr td:nth-child(even) {
                border-right: 1px solid #E6E4E4;
            }

            .fl-table tbody td {
                display: block;
                text-align: center;
            }
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
                    <li class="submenu "><a href="#"><i class="icon icon-th"></i><span>物品报修</span></a>
                         <ul>
                            <li><a href="insbaoxiu.aspx">添加报修信息</a></li>
                            <li><a href="baoxiu.aspx">查看报修信息</a></li>
                        </ul>
                    </li>
                    <li  class="submenu active"><a href="#"><i class="icon icon-fullscreen"></i><span>投诉中心</span></a>
                        <ul>
                            <li><a href="tousu.aspx">添加投诉信息</a></li>
                            <li><a href="#">查看投诉信息</a></li>
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
                         <a href="index.aspx" title="Go to Home" class="tip-bottom"><i class="icon-home"></i>房间信息</a> <a href="#" class="current">查看投诉</a>
                     </div>
                    <div class="table-wrapper" style="background-color:white;width:1700px;height:875px;margin-bottom: -25px;">
                        <asp:Repeater ID="Repeater1" runat="server" OnItemCommand="Repeater1_ItemCommand">
                            <HeaderTemplate>
                                <table class="gridtable fl-table" style="margin-top:50px">
                                    <thead>
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
                                    </thead>
                            </HeaderTemplate>
                            <ItemTemplate>
                                <tbody>    
                                    <tr>
                                        <td><%#Eval("touid") %></td>
                                        <td><%#Eval("touname") %></td>
                                        <td><%#Eval("toufang") %></td>
                                        <td><%#Eval("toudui") %></td>
                                        <td><%#Eval("touliyou") %></td>
                                        <td>
                                            <asp:LinkButton ID="LinkButton3" runat="server" CommandName="delete"  CommandArgument='<%#Eval("touid") %>'>处理投诉</asp:LinkButton>
                                        </td>
                                    </tr>
                                </tbody>
                            </ItemTemplate>
                            <FooterTemplate>
                                </table>
                            </FooterTemplate>
                        </asp:Repeater>
                    
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
