<%@ page import="com.Day.StuQue.domain.User" %><%--
  Created by IntelliJ IDEA.
  User: dd
  Date: 2021/5/21
  Time: 10:34
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

    <script type="text/javascript" src="jquery/jquery-3.4.1.js"></script>

    <script type="text/javascript" >
        $(function () {

            var user_name = <%=user_name%>;


            $.ajax({
                url:"comm/getCommodityTypeList.do",
                type:"get",
                dataType:"json",
                success : function (data) {
                    var html = ""
                    var flag = 0;
                    $.each(data,function (i,n) {

                        //html += '<tr>';
                        html += '<font style="font-size: 25px"><u><a href="commodity.jsp?user_name='+user_name+'&typeId=\''+n.id+'\'  " >'+n.typeName+'</a></u></font>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;';

                        flag +=1;
                        if(flag%3==0){
                            html += '<br>';
                            html += '<br>';
                        }
                        //html += '<tr>';

                        $("#toBodyCT").html(html)


                    })
                }

            })




        })
    </script>

</head>
<body>
    <div align="right"><a href="shopping.jsp?user_name=<%=user_name%>">购物车</a>&nbsp;&nbsp;&nbsp;管理者：<font color="#7cfc00"><%=name%></font></div>
    <br>

    <ol class="breadcrumb" style="font-size: 20px">
        <li><a href="/myWeb/index.jsp">登录页</a></li>
        <li><a href="/myWeb/detail.jsp">客户：<%=user_name%></a></li>
        <li class="active">商城首页</li>
    </ol>


    <h2 align="center"><font color="#ff4500">欢迎您，<u><a style="color:#ff4500 ;" href="/myWeb/detail.jsp"><em><%=user_name%></em></a></u></font></h2>
    <br><br><br><br><br>
    <h2 align="center" >选择你要购买的<em>商品类型：</em></h2>



    <div align="center" style="margin-top:100px">

        <p align="center" >

            <table>


                <tbody id="toBodyCT">

                </tbody>

            </table>
        </p>
    </div>



</body>
</html>
