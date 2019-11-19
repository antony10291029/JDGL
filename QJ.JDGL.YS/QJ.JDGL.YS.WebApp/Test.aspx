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
    <link href="css/roomstyle.css" rel="stylesheet" />
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
            <div class="right">
                <h2 style="margin-bottom: 10px">七瑾大床房</h2>
                <div class="right_info">
                    <dl style="display: inline-block;">
                        <dt>建筑面积</dt>
                        <dd>40平方米</dd>
                    </dl>
                    <dl style="display: inline-block; margin-left: 35px">
                        <dt>楼层</dt>
                        <dd>1-6层</dd>
                    </dl>
                </div>
                <div class="right_info">
                    <dl style="display: inline-block;">
                        <dt>床型</dt>
                        <dd style="margin-left: 25px;">1张 大床1.8米</dd>
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
                            <p>大床</p>
                        </td>
                        <td class="col2 col">
                            <p style="color: #10a200;">每天单早</p>
                        </td>
                        <td class="col2 col">
                            <p>1人入住</p>
                        </td>
                        <td class="col3 col">
                            <p>不可取消</p>
                        </td>
                        <td class="col4 col">
                            <p>立即确认</p>
                        </td>
                        <td class="col5 col">
                            <p style="color: #f60;">￥165</p>
                        </td>
                        <td class="col">
                            <div class="md-trigger col6"  data-modal="modal-1">
                            <%--<asp:LinkButton ID="LinkButton1" CssClass="col6" runat="server" Style="text-decoration: none">--%>
                                <div class="btn_yudin">预定</div>
                                <div class="btn_danbao">
                                    <span class="btn_dbspan">担保</span>
                                </div>
                            <%--</asp:LinkButton>--%>
                            </div>
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
                            <p>大床</p>
                        </td>
                        <td class="col2 col">
                            <p style="color: #10a200;">每天单早</p>
                        </td>
                        <td class="col2 col">
                            <p>1人入住</p>
                        </td>
                        <td class="col3 col">
                            <p>可取消</p>
                        </td>
                        <td class="col4 col">
                            <p>立即确认</p>
                        </td>
                        <td class="col5 col">
                            <p style="color: #f60;">￥200</p>
                        </td>
                        <td class="col">
                            <asp:LinkButton ID="LinkButton2" CssClass="col6" runat="server" Style="text-decoration: none">
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
                            <p>大床</p>
                        </td>
                        <td class="col2 col">
                            <p style="color: #10a200;">每天双早</p>
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
                            <asp:LinkButton ID="LinkButton3" CssClass="col6" runat="server" Style="text-decoration: none">
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
                            <p>大床</p>
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
                            <p style="color: #f60;">￥230</p>
                        </td>
                        <td class="col">
                            <asp:LinkButton ID="LinkButton4" CssClass="col6" runat="server" Style="text-decoration: none">
                                <div class="btn_yudin">预定</div>
                                <div class="btn_danbao">
                                    <span class="btn_dbspan">担保</span>
                                </div>
                            </asp:LinkButton>
                        </td>

                    </tr>
                </tbody>
            </table>
            <div class="md-modal md-effect-1" id="modal-1">
                <div class="md-content">
                    <h3>七瑾大床房</h3>
                    <div>
                        <p>This is a modal window.</p>
                        <ul>
                            <li><strong>123</strong> 456</li>
                            <li><strong>789</strong>123</li>
                            <li><strong>Close:</strong> 666</li>
                        </ul>
                        <asp:Button ID="Button1" runat="server" Text="Button" />
                        <button class="md-close ">Close me!</button>
                    </div>
                </div>
            </div>
              <div class="md-overlay"></div>
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
