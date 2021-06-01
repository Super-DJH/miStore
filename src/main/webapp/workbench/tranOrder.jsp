<%--
  Created by IntelliJ IDEA.
  User: dd
  Date: 2021/5/27
  Time: 14:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String userName = (String) session.getAttribute("userName");
    String[] ids = request.getParameterValues("id");
%>


<html>
<head>
    <title>Title</title>

    <link rel="stylesheet" href="https://cdn.bootcdn.net/ajax/libs/twitter-bootstrap/3.3.0/css/bootstrap.min.css" />
    <link rel="stylesheet" href="https://cdn.bootcdn.net/ajax/libs/twitter-bootstrap/3.3.0/css/bootstrap-theme.min.css" />
    <script src="https://cdn.bootcdn.net/ajax/libs/twitter-bootstrap/3.3.0/js/bootstrap.min.js" ></script>

    <script type="text/javascript" src="https://cdn.bootcdn.net/ajax/libs/jquery/1.12.4/jquery.js"></script>
    <script type="text/javascript">
        $(function () {

            var url = "/myWeb/workbench/tran/getOrderList.do?text=text";
            <%
            for (String id : ids) {
           %>
                url += "&id=";
                url += "<%=id%> ";
            <%
            }
            %>

            //alert("123")
            $.ajax({
                url:url,
                type:"post",
                dataType:"json",
                success : function (data) {

                    var html = ""
                    html += '<tr align=\'center\'>';
                    html += '<td  width=\"1500px\" height=\"50px\">客户</td>';
                    html += '<td  width=\"1500px\" height=\"50px\">产品名</td>';
                    html += '<td  width=\"1500px\" height=\"50px\">版本</td>';
                    html += '<td  width=\"1500px\" height=\"50px\">内存</td>';
                    html += '<td  width=\"1500px\" height=\"50px\">颜色</td>';
                    html += '<td  width=\"1500px\" height=\"50px\">价格</td>';
                    html += '<td  width=\"1500px\" height=\"50px\">订单创建时间</td>';

                    html += '</tr>';
                    html += "<tr>";
                    html += "<td><font><hr><font></td>"
                    html += "<td><font><hr><font></td>"
                    html += "<td><font><hr><font></td>"
                    html += "<td><font><hr><font></td>"
                    html += "<td><font><hr><font></td>"
                    html += "<td><font><hr><font></td>"
                    html += "<td><font><hr><font></td>"
                    html += "</tr>";

                    //$("#orderBody").html(html)

                    $.each(data,function (i,n) {


                        html += '<tr align=\'center\'>';
                        html += '<td  width=\"1500px\" height=\"50px\">'+n.userName+'</td>';
                        html += '<td  width=\"1500px\" height=\"50px\">'+n.commName+'</td>';
                        html += '<td  width=\"1500px\" height=\"50px\">'+n.commVersion+'</td>';
                        html += '<td  width=\"1500px\" height=\"50px\">'+n.commSpace+'</td>';
                        html += '<td  width=\"1500px\" height=\"50px\">'+n.commColor+'</td>';
                        html += '<td  width=\"1500px\" height=\"50px\">'+n.commMoney+'</td>';
                        html += '<td  width=\"1500px\" height=\"50px\">'+n.createTime+'</td>';
                        html += '</tr>';
                        html += "<tr>";
                        html += "<td><font><hr><font></td>"
                        html += "<td><font><hr><font></td>"
                        html += "<td><font><hr><font></td>"
                        html += "<td><font><hr><font></td>"
                        html += "<td><font><hr><font></td>"
                        html += "<td><font><hr><font></td>"
                        html += "<td><font><hr><font></td>"
                        html += "</tr>";

                        $("#orderBody").html(html)

                    })
                }

            })

            $("#allHis").click(function () {
                //alert("13")
                $.ajax({
                    url:"/myWeb/workbench/tran/getHisListAll.do",
                    type:"get",
                    dataType:"json",
                    success : function (data) {
                        var html = ""
                        html += '<tr align=\'center\'>';
                        html += '<td  width=\"1500px\" height=\"50px\">客户</td>';
                        html += '<td  width=\"1500px\" height=\"50px\">产品名</td>';
                        html += '<td  width=\"1500px\" height=\"50px\">版本</td>';
                        html += '<td  width=\"1500px\" height=\"50px\">内存</td>';
                        html += '<td  width=\"1500px\" height=\"50px\">颜色</td>';
                        html += '<td  width=\"1500px\" height=\"50px\">价格</td>';
                        html += '<td  width=\"1500px\" height=\"50px\">订单创建时间</td>';

                        html += '</tr>';
                        html += "<tr>";
                        html += "<td><font><hr><font></td>"
                        html += "<td><font><hr><font></td>"
                        html += "<td><font><hr><font></td>"
                        html += "<td><font><hr><font></td>"
                        html += "<td><font><hr><font></td>"
                        html += "<td><font><hr><font></td>"
                        html += "<td><font><hr><font></td>"
                        html += "</tr>";

                        //$("#orderBody").html(html)

                        $.each(data,function (i,n) {


                            html += '<tr align=\'center\'>';
                            html += '<td  width=\"1500px\" height=\"50px\">'+n.userName+'</td>';
                            html += '<td  width=\"1500px\" height=\"50px\">'+n.commName+'</td>';
                            html += '<td  width=\"1500px\" height=\"50px\">'+n.commVersion+'</td>';
                            html += '<td  width=\"1500px\" height=\"50px\">'+n.commSpace+'</td>';
                            html += '<td  width=\"1500px\" height=\"50px\">'+n.commColor+'</td>';
                            html += '<td  width=\"1500px\" height=\"50px\">'+n.commMoney+'</td>';
                            html += '<td  width=\"1500px\" height=\"50px\">'+n.createTime+'</td>';
                            html += '</tr>';
                            html += "<tr>";
                            html += "<td><font><hr><font></td>"
                            html += "<td><font><hr><font></td>"
                            html += "<td><font><hr><font></td>"
                            html += "<td><font><hr><font></td>"
                            html += "<td><font><hr><font></td>"
                            html += "<td><font><hr><font></td>"
                            html += "<td><font><hr><font></td>"
                            html += "</tr>";

                            $("#orderBody").html(html)

                        })
                    }

                })
            })

        })
    </script>
</head>
<body>
123
<a href="/myWeb/workbench/tran/tranLogin.do?userName=<%=userName%>&password=123" >继续购买</a>

<div align="right"><a id="allHis">全部订单</a></div>
<%--<table>
    <tr>
        <td>客户</td>
        <td>产品名</td>
        <td>版本</td>
        <td>内存</td>
        <td>颜色</td>
        <td>价格</td>
        <td>订单创建时间</td>
    </tr>
    <tbody id="orderBody">

    </tbody>
</table>--%>

<table align="center" width="1300px" height="350px">
    <tbody id="orderBody" >

    </tbody>
</table>

</body>
</html>
