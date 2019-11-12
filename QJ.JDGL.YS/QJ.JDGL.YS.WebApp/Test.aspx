<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Test.aspx.cs" Inherits="QJ.JDGL.YS.WebApp.Test" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <%--<style type="text/css">
        #box_border {
            border: 1px solid #EDEDED;
            width: 300px;
            text-align: center;
        }

        #fang_type li {
            width: 80px;
            height: 22px;
            line-height: 22px;
            color: #FFF;
            display: inline-block;
        }
    </style>--%>
    <style type="text/css">
       .box{width: 800px;height: 467px;overflow: hidden;position: relative;}
.box-1 ul li img{display:block;width: 800px; height: 450px;margin-left: -45px;}
.box-2{position: absolute;right: 10px;bottom: 14px;}
.box-2 ul li{float:left;width: 12px;height: 12px;overflow: hidden; margin: 0 5px; border-radius: 50%;
				background: rgba(0,0,0,0.5);text-indent: 100px;cursor: pointer;}
.box-2 ul .on{background: rgba(255,255,255,0.6);}
.box-3 span{position: absolute;color: white;background: rgba(125,125,120,.3);width: 50px;height: 80px;
				top:50%; font-family: "宋体";line-height: 80px;font-size:60px;margin-top: -40px;
				text-align: center;cursor: pointer;}
.box-3 .prev{left: 7px;}
.box-3 .next{right: 10px;}
.box-3 span::selection{background: transparent;}
.box-3 span:hover{background: rgba(125,125,120,.8);}
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <%--<div id="container">
            <div id="main">
                <div id="box_border">
                    <ul id="fang_type">
                        <li style="background-color: #b51d1a;">已住宿</li>
                        <li style="background-color: #000EFF;">未住宿</li>
                    </ul>
                </div>
               
            </div>
        </div>
         <asp:Repeater ID="Repeater1" runat="server">
                    <HeaderTemplate>
                        <table>
                            <tr>
                                <th>房间编号</th>
                            </tr>
                    </HeaderTemplate>
                    <ItemTemplate>
                        <tr>
                            <td>1-1</td>
                        </tr>
                    </ItemTemplate>
                    <FooterTemplate>
                        </table>
                    </FooterTemplate>
                </asp:Repeater>--%>
        <div class="all">
            <div class="box">
                <div class="box-1">
                    <ul>
                        <li>
                            <img src="img/jpg/大床房1.jpg" />
                        </li>
                        <li>
                            <img src="img/jpg/大床房2.jpg" />
                        </li>
                        <li>
                            <img src="img/jpg/大床房3.jpg" />
                        </li>
                        <li>
                            <img src="img/jpg/大床房4.jpg" />
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
    </form>
</body>
</html>
