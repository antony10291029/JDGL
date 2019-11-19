<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Test2.aspx.cs" Inherits="QJ.JDGL.YS.WebApp.Test2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <script src="js/jquery-1.7.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <style type="text/css">
        .radiolist label {
            display: inline-block;
            margin-left: -10px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">


        <h2>创建模态框（Modal）</h2>
        <!-- 按钮触发模态框 -->
        <button  data-toggle="modal" data-target="#myModal">
            开始演示模态框
        </button>
        <!-- 模态框（Modal） -->
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
                            <div>
                                <asp:Button ID="Button1" runat="server" Text="添加" OnClick="Button1_Click" />
                                <asp:Button ID="Button2" runat="server" Text="关闭" />
                            </div>
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:JDGLConnectionString %>" SelectCommand="SELECT * FROM [RoomType]"></asp:SqlDataSource>
                            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:JDGLConnectionString %>" SelectCommand="SELECT * FROM [RoomNum]"></asp:SqlDataSource>
                            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:JDGLConnectionString %>" SelectCommand="SELECT * FROM [RooRight]"></asp:SqlDataSource>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal">
                            关闭</button>
                        <button type="button" class="btn btn-primary">
                            提交更改
                        </button>
                    </div>
                </div>
                <!-- /.modal-content -->
            </div>
            <!-- /.modal -->
        </div>
    </form>
</body>
</html>
