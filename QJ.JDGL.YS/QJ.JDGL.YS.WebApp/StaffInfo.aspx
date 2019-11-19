<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StaffInfo.aspx.cs" Inherits="QJ.JDGL.YS.WebApp.StaffInfo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <script src="js/jquery-1.7.js"></script>
    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <link href="css/matrix-media.css" rel="stylesheet" />
    <link href="css/matrix-style.css" rel="stylesheet" />
    <link href="css/bootstrap-responsive.min.css" rel="stylesheet" />
    <link href="font-awesome/css/font-awesome.css" rel="stylesheet" />
    <script src="js/bootstrap.min.js"></script>

    <style type="text/css">
        .all {
            background-color: white;
            /*margin-bottom: -25px;*/
            /*padding: 50px 60px 15px 105px;*/
            border: 1px solid red;
        }

        /*.center {
            width: 1285px;
            border:1px solid red;
        }*/

        .left_img {
            width: 1000px;
            float: left;
            padding-top: 11px;
            padding-right: 10px;
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

        .yx {
            height: 700px;
            /*border:1px solid red;*/
        }

            .yx table {
                border: 1px solid blue;
                border-collapse: collapse;
                width: 100%;
            }

            .yx table, tr, th, td {
                border: 1px solid black;
                text-align: center;
            }

        .r1 label {
            display: inline-block;
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
                    <li class="submenu"><a href="#"><i class="icon icon-signal"></i><span>房间信息</span></a>
                        <ul>
                            <li><a href="OneRoom.aspx">标准间</a></li>
                            <li><a href="TwoRoom.aspx">双人间</a></li>
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
                    <li class="active"><a href="#"><i class="icon icon-tint"></i><span>员工管理</span></a></li>
                    <li><a href="#"><i class="icon icon-pencil"></i><span>账单信息</span></a></li>
                </ul>
            </div>
            <div id="content">
                <div id="content-header">
                    <div id="breadcrumb">
                        <a href="index.aspx" title="返回房间信息" class="tip-bottom"><i class="icon-home"></i>房间信息</a>
                        <a href="#" class="current">员工管理</a>
                    </div>
                    <div class="all">
                        <div class="center">
                            <div class="tianjian r1">
                                身份：<asp:DropDownList ID="DropDownList1" runat="server">
                                    <asp:ListItem Value="0" Text="全部"></asp:ListItem>
                                    <asp:ListItem Value="1" Text="老板"></asp:ListItem>
                                    <asp:ListItem Value="2" Text="经理"></asp:ListItem>
                                    <asp:ListItem Value="3" Text="员工"></asp:ListItem>
                                </asp:DropDownList>
                                员工姓名：<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                                姓别：
                                 <asp:RadioButton ID="RadioButton5" runat="server" Text="全部" GroupName="sex1" Checked="true"/>
                                <asp:RadioButton ID="RadioButton1" runat="server" Text="男" GroupName="sex1"/>
                                       <asp:RadioButton ID="RadioButton2" runat="server" Text="女" GroupName="sex1" />
                                是否在岗：<asp:DropDownList ID="DropDownList2" runat="server">
                                     <asp:ListItem Value="2" Text="全部"></asp:ListItem>
                                    <asp:ListItem Value="1" Text="是"></asp:ListItem>
                                    <asp:ListItem Value="0" Text="否"></asp:ListItem>
                                </asp:DropDownList>
                                <asp:Button ID="Button2" runat="server" Text="查询" OnClick="Button2_Click" />
                            </div>
                            <div class="yx">
                                <asp:Button ID="Button3" runat="server" Text="+" data-toggle="modal" data-target="#myModal" OnClick="Button3_Click"/>
                                <asp:Repeater ID="Repeater1" runat="server" OnItemCommand="Repeater1_ItemCommand">
                                    <HeaderTemplate>
                                        <table>
                                            <tr style="background-color: bisque">
                                                <th>员工编号</th>
                                                <th>登录编号</th>
                                                <th>登录名</th>
                                                <th>密码</th>
                                                <th>身份</th>
                                                <th>员工姓名</th>
                                                <th>员工性别</th>
                                                <th>员工手机号</th>
                                                <th>员工身份证号</th>
                                                <th>员工是否在岗</th>
                                                <th>操作</th>
                                            </tr>
                                    </HeaderTemplate>
                                    <ItemTemplate>
                                        <tr>
                                            <td><%#Eval("StaID")%></td>
                                            <td><%#Eval("UserID")%></td>
                                            <td><%#Eval("UserName")%></td>
                                            <td><%#Eval("UserPwd")%></td>
                                            <td><%#Eval("UserCardStr")%></td>
                                            <td><%#Eval("StaName")%></td>
                                            <td><%#Eval("StaSex")%></td>
                                            <td><%#Eval("StaPhone")%></td>
                                            <td><%#Eval("StaCard")%></td>
                                            <td><%#Eval("isworkstring")%></td>
                                            <td>
                                                <asp:LinkButton ID="LinkButton1" runat="server" CommandName="delete" CommandArgument='<%#Eval("StaID")%>'>删除</asp:LinkButton>
<%--                                                <asp:LinkButton ID="LinkButton2" runat="server" CommandName="update" CommandArgument='<%#Eval("StaID")%>'  data-toggle="modal" data-target="#myModal">编辑</asp:LinkButton>--%>
<%--                                                <a href="#" id="update"  data-id="<%#Eval("StaID")%>">修改</a>--%>
                                                 <a href="#" onclick="update('<%#Eval("StaID")%>','<%#Eval("StaName")%>', '<%#Eval("StaSex")%>', '<%#Eval("StaPhone")%>',' <%#Eval("StaCard")%>', '<%#Eval("isworkstring")%>')">修改</a>
                                            </td>
                                        </tr>
                                    </ItemTemplate>
                                    <FooterTemplate>
                                        </table>                       
                                    </FooterTemplate>
                                </asp:Repeater>
                            </div>
                        </div>

                        
                                    <!-- 按钮触发模态框 -->
<!-- 模态框（Modal） -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" style="top:100px; display:block;">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-hidden="true">
					&times;</button>
				<h4 class="modal-title" id="myModalLabel">
					模态框（Modal）标题
				</h4>
			</div>
			<div class="modal-body">
                                                  <div>
            <table>
                <tr>
                    <td>登录编号</td>
                    <td>
                        <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label></td>
                </tr>
                <tr>
                    <td>员工姓名</td>
                    <td>
                        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>员工性别</td>
                    <td class="r1">
                        <asp:RadioButton ID="RadioButton3" runat="server" Text="男" RepeatDirection="Horizontal" RepeatLayout="Flow" GroupName="sex" Checked="true" />
                        <asp:RadioButton ID="RadioButton4" runat="server" Text="女" RepeatDirection="Horizontal" RepeatLayout="Flow" GroupName="sex"  />
                        
                    </td>
                </tr>
                <tr>
                    <td>员工手机号</td>
                    <td>
                        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>员工身份证号</td>
                    <td>
                        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>员工是否在岗</td>
                    <td>
                        <asp:DropDownList ID="DropDownList3" runat="server">
                            <asp:ListItem Text="是" Value="1">                                 
                            </asp:ListItem>

                            <asp:ListItem Text="否" Value="0"></asp:ListItem>
                        </asp:DropDownList></td>
                </tr>

            </table>
        </div>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-default" data-dismiss="modal">关闭
				</button>
                <asp:Button ID="Button4"  class="btn btn-primary" runat="server" Text="确定" OnClick="Button4_Click" />
			</div>
		</div><!-- /.modal-content -->
	</div><!-- /.modal -->
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


            //console.log("a");
        </script>
        <script type="text/javascript">
            
            function update(StaID, StaName, StaSex, StaPhone, StaCard, isworkstring) {
                $("#Label2").text(StaID);
                $("#TextBox2").val(StaName);
                if (StaSex == "男") {
                    $("#RadioButton3").attr("checked", false);
                } else
                {
                    $("#RadioButton4").attr("checked", true);
                }
                $("#TextBox3").val(StaPhone);
                $("#TextBox4").val(StaCard);

                $("#DropDownList3").val(isworkstring);
                if()
                $("#myModal").modal('show');


            };
            //$(function () {
            //    $("#update").click(function () {
            //        var id = $(this).attr("data-id");
            //        $.ajax({
            //            url: "handle/ajax1.ashx",
            //            data: { "id": id },
            //            dataType: "json",
            //            type:"post",
            //            success: function (json) {
            //                console.log(json);
            //            }
            //        });
            //    });
                
            //});


        </script>
        <script src="js/jquery.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script src="js/matrix.js"></script>
    </form>
</body>
</html>