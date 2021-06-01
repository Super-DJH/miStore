<%@ page import="com.Day.StuQue.domain.User" %><%--
  Created by IntelliJ IDEA.
  User: dd
  Date: 2021/5/24
  Time: 15:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<% String name = ((User)session.getAttribute("user")).getName(); %>

<%  String user_name = request.getParameter("user_name"); %>
<html>
<head>
    <title>Title</title>

    <link rel="stylesheet" href="https://cdn.bootcdn.net/ajax/libs/twitter-bootstrap/3.3.0/css/bootstrap.min.css" />
    <link rel="stylesheet" href="https://cdn.bootcdn.net/ajax/libs/twitter-bootstrap/3.3.0/css/bootstrap-theme.min.css" />
    <script src="https://cdn.bootcdn.net/ajax/libs/twitter-bootstrap/3.3.0/js/bootstrap.min.js" ></script>


    <script src="jquery/jquery-3.4.1.js"></script>

    <script type="text/javascript">
        $(function () {

            showShoppingList();


            /*var html = ""
            html += '<tr>';
            html += '<td  width=\"100px\" height=\"50px\"></td>';
            html += '<td  width=\"450px\" height=\"50px\">小米笔记本pro&nbsp;MX450&nbsp;16G+512G</td>';
            html += '<td  width=\"250px\" height=\"50px\">类型</td>';
            html += '<td  width=\"250px\" height=\"50px\">单价</td>';
            html += '<td  width=\"250px\" height=\"50px\">小计</td>';
            html += '<td  width=\"350px\" height=\"50px\">操作</td>';
            html += '</tr>';
            html += "<tr>";
            html += "<td><font><hr><font></td>"
            html += "<td><font><hr><font></td>"
            html += "<td><font><hr><font></td>"
            html += "<td><font><hr><font></td>"
            html += "<td><font><hr><font></td>"
            html += "<td><font><hr><font></td>"

            html += "</tr>";
            $("#commTbody").append(html)*/
        })



        function showShoppingList() {
            $.ajax({
                url:"comm/getShippingListByUserName.do",
                data:{
                    "userName":<%=user_name%>
                },
                type:"get",
                dataType:"json",
                success : function (data) {
                    var html = ""
                    $.each(data,function (i,n) {
                        html += '<tr>';
                        html += '<td  width=\"100px\" height=\"50px\"></td>';
                        html += '<td  width=\"450px\" height=\"50px\">'+n.commName+'&nbsp;'+n.commVersion+'&nbsp;'+n.commSpace+'&nbsp;'+n.commColor+'</td>';
                        html += '<td  width=\"250px\" height=\"50px\">'+n.commTypeName+'</td>';
                        html += '<td  width=\"250px\" height=\"50px\">'+n.commMoney+'</td>';
                        html += '<td  width=\"250px\" height=\"50px\">'+n.commMoney+'</td>';
                        html += '<td  width=\"350px\" height=\"50px\">删除</td>';
                        html += '</tr>';
                        html += "<tr>";
                        html += "<td><font><hr><font></td>"
                        html += "<td><font><hr><font></td>"
                        html += "<td><font><hr><font></td>"
                        html += "<td><font><hr><font></td>"
                        html += "<td><font><hr><font></td>"
                        html += "<td><font><hr><font></td>"

                        html += "</tr>";

                    })
                    $("#commTbody").append(html)
                }

            })
        }
    </script>
</head>
<body>
    <div align="right">管理者：<font color="#7cfc00"><%=name%></font></div>
    <br>
    <ol class="breadcrumb"  style="font-size: 20px">
        <li><a href="/myWeb/index.jsp">登录页</a></li>
        <li><a href="/myWeb/detail.jsp">客户：<%=user_name%></a></li>
        <li><a href="commodityType.jsp?user_name=<%=user_name%>">商城首页</a></li>
        <li class="active">购物车</li>
    </ol>
    <h2 align="center"><font color="#ff4500"><u><a style="color:#ff4500 ;" href="/myWeb/detail.jsp"><em><%=user_name%></em></a></u>&nbsp;的购物车<u></u></font></h2>
    <div align="center" style="margin-top:50px;margin-left: 350px;margin-right: 350px;/*height: 3000px;*/ background-color:white;">
        <table align="center" width="1000px" height="200px">
            <tbody id="commTbody" >
                <tr>
                    <td></td>
                    <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;商品名</td>
                    <td>类型</td>
                    <td>单价</td>
                    <td>小计</td>
                    <td>操作</td>

                </tr>
                <tr>

                    <td><hr></td>
                    <td><hr></td>
                    <td><hr></td>
                    <td><hr></td>
                    <td><hr></td>
                    <td><hr></td>

                </tr>
            </tbody>
        </table>
    </div>
</body>
</html>
