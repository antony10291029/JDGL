<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="QJ.JDGL.YS.WebApp.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <link href="css/matrix-login.css" rel="stylesheet" />
    <link href="font-awesome/css/font-awesome.css" rel="stylesheet" />
    <script src="js/jquery.min.js"></script>
    <script src="js/matrix.login.js"></script>
</head>
<body>
    <div id="loginbox">
        <form id="loginform" class="form-vertical" runat="server">
            <div class="control-group normal_text">
                <h3>
                    七瑾国际酒店</h3>
            </div>
            <div class="control-group">
                <div class="controls">
                    <div class="main_input_box">
                        <span class="add-on bg_lg"><i class="icon-user"></i></span>
                        <asp:TextBox ID="TextBox1" runat="server" placeholder="用户名"></asp:TextBox>
                    </div>
                </div>
            </div>
            <div class="control-group">
                <div class="controls">
                    <div class="main_input_box">
                        <span class="add-on bg_ly"><i class="icon-lock"></i></span>
                        <asp:TextBox ID="TextBox2" runat="server" type="password" placeholder="密码" ></asp:TextBox>
                    </div>
                </div>
            </div>
            <div class="form-actions">
                <asp:LinkButton ID="LinkButton1" runat="server"  class="pull-left">
                    <a href="Forget.aspx" class="flip-link btn btn-info" id="to-recover">忘记密码?</a>
                </asp:LinkButton>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:LinkButton ID="LinkButton2" runat="server" class="btn btn-success" OnClick="LinkButton2_Click" >
                    登录
                </asp:LinkButton>
            </div>
            <asp:Label ID="Label1" runat="server" Text="" class="normal_text"></asp:Label>
        </form>
    </div>
</body>
</html>

