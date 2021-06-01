<%@ page import="com.Day.StuQue.domain.User" %><%--
  Created by IntelliJ IDEA.
  User: dd
  Date: 2021/5/18
  Time: 19:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<% String name = ((User)session.getAttribute("user")).getName(); %>

<html>
<head>
    <title>Title</title>


    <link rel="stylesheet" href="https://cdn.bootcdn.net/ajax/libs/twitter-bootstrap/3.3.0/css/bootstrap.min.css" />
    <link rel="stylesheet" href="https://cdn.bootcdn.net/ajax/libs/twitter-bootstrap/3.3.0/css/bootstrap-theme.min.css" />
    <script src="https://cdn.bootcdn.net/ajax/libs/twitter-bootstrap/3.3.0/js/bootstrap.min.js" ></script>


    <script src="jquery/jquery-3.4.1.js"></script>

    <script type="text/javascript">
        $(function () {

            var result = 1
            var flag = 5

            pageList(1,5);



            $("#addBtn").click(function () {
            window.location="add.jsp"
            })

            //打开分页
            $("#openBtn").click(function () {
                result = 1
                pageList(result,flag);
            })
            //关闭分页
            $("#closeBtn").click(function () {
                pageList(1,100);
            })

            $("#upBtn").click(function () {
                result2 = result -1
                pageList(result2,flag);
                result = result2
            })
            $("#nextBtn").click(function () {

                result2 = result +1
                pageList(result2,flag);
                result = result2
            })

            //给第1，2，3，4，5页绑定事件
            $("#1Btn").click(function () {
                result = 1
                pageList(result,flag);
            })
            $("#2Btn").click(function () {
                result = 2
                pageList(result,flag);
            })
            $("#3Btn").click(function () {
                result = 3
                pageList(result,flag);
            })
            $("#4Btn").click(function () {
                result = 4
                pageList(result,flag);
            })
            $("#5Btn").click(function () {
                result = 5
                pageList(result,flag);
            })
            //给自定义多少个绑定事件
            $(window).keydown(function (event) {
                if(13==event.keyCode){
                   var pageSize = $("#zBtn").val();

                    result = 1
                    pageList(result,pageSize);

                    flag = pageSize;
                    $("#zBtn").val("")

                }
            })



        })
        function deleteUser(id) {
            //alert(id)

            $.ajax({
                url:"user/delete.do",
                data:{
                    "id":id
                },
                type:"post",
                dataType:"json",
                success:function (data) {
                    if (data.success){
                        alert("成功")
                        window.location="detail.jsp"
                    } else {
                        alert("失败")
                    }
                }

            })
        }
        function updateUser(id) {

                window.location="user/update.do?id="+id



        }


        //分页
        function pageList(pageNo,pageSize) {

            $.ajax({
                url:"user/getUserList.do",
                data:{
                    "pageNo":pageNo,
                    "pageSize":pageSize
                },
                type:"get",
                dataType:"json",
                success : function (data) {
                    //alert("拿到数据")
                    //返回map{{"total":number}，userList:[{}{}{}]}
                    var html ="";


                    html += "<tr  align='center'>";
                    html += "<td width=\"1500px\" height=\"70px\"><span class=\"glyphicon glyphicon-user\" aria-hidden=\"true\"></span></td>";
                    html += "<td width=\"1500px\" height=\"70px\"><span class=\"glyphicon glyphicon-search\" aria-hidden=\"true\"></span></td>";
                    html += "<td width=\"1500px\" height=\"70px\"><span class=\"glyphicon glyphicon-phone-alt\" aria-hidden=\"true\"></span></td>";
                    html += "<td width=\"1500px\" height=\"70px\"><span class=\"glyphicon glyphicon-home\" aria-hidden=\"true\"></span></td>";
                    html += "<td width=\"1500px\" height=\"70px\"><span class=\"glyphicon glyphicon-file\" aria-hidden=\"true\"></span></td>";
                    html += "<td width=\"1500px\" height=\"70px\"><span class=\"glyphicon glyphicon-cog\" aria-hidden=\"true\"></span></td>";
                    html += "<td width=\"1500px\" height=\"70px\"><span class=\"glyphicon glyphicon-trash\" aria-hidden=\"true\"></span></td>";
                    html += "<td width=\"1500px\" height=\"70px\">选择</td>";
                    html += "</tr>";
                    html += "<tr>";
                    html += "<td><font><hr><font></td>"
                    html += "<td><font><hr><font></td>"
                    html += "<td><font><hr><font></td>"
                    html += "<td><font><hr><font></td>"
                    html += "<td><font><hr><font></td>"
                    html += "<td><font><hr><font></td>"
                    html += "<td><font><hr><font></td>"
                    html += "<td><font><hr><font></td>"
                    html += "</tr>";
                    $.each(data.userList,function (i,n) {


                        html += "<tr align='center'>";
                        html += "<td  width=\"1500px\" height=\"50px\">"+n.name+"</td>";
                        html += "<td  width=\"1500px\" height=\"50px\">"+n.sex+"</td>";
                        html += "<td  width=\"1500px\" height=\"50px\">"+n.tel+"</td>";
                        html += "<td  width=\"1500px\" height=\"50px\">"+n.addr+"</td>";
                        html += "<td  width=\"1500px\" height=\"50px\">"+n.remark+"</td>";
                        html += '<td  width=\"1500px\" height=\"50px\"><a onclick="updateUser(\''+n.id+'\')" ><span class="glyphicon glyphicon-pencil" aria-hidden="true"></span><a></td>';
                        html += '<td  width=\"1500px\" height=\"50px\"><a onclick="deleteUser(\''+n.id+'\')" ><span style="color: orangered"  class="glyphicon glyphicon-remove" aria-hidden="true"></span><a></td>';
                        html += '<td  width=\"1500px\" height=\"50px\"><a href="commodityType.jsp?user_name=\''+n.name+'\'"><span style="color: black" class="glyphicon glyphicon-plus-sign" aria-hidden="true"></span></a></td>';
                        html += "</tr>";
                        html += "<tr>";
                        html += "<td><font><hr><font></td>"
                        html += "<td><font><hr><font></td>"
                        html += "<td><font><hr><font></td>"
                        html += "<td><font><hr><font></td>"
                        html += "<td><font><hr><font></td>"
                        html += "<td><font><hr><font></td>"
                        html += "<td><font><hr><font></td>"
                        html += "<td><font><hr><font></td>"
                        html += "</tr>";

                        $("#toBody").html(html)
                    })

                }

            })


        }


    </script>
</head>
<body>
<div align="right">管理者：<font color="#d2691e"><%=name%></font></div>
<br>
<ol class="breadcrumb"  style="font-size: 20px">
    <li><a href="/myWeb/index.jsp">登录页</a></li>
    <li class="active">客户</li>
</ol>

        <h2 align="center"><font color="#ff4500">请选择你的<em>客户</em></font></h2>
        <br><br>
        <p align="center">
            <a id="addBtn">新增用户</a>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <a id="openBtn">打开分页</a>
            <a id="closeBtn">关闭分页</a>
        </p>
        <div>
            <table id="toBody" align="center" width="1300px" height="350px">

            </table>
            <p align="center">

                <center>
                <nav aria-label="Page navigation" >
                    <ul class="pagination">
                        <li>
                            <a aria-label="Previous" id="upBtn">
                                <span aria-hidden="true">&laquo;</span>
                            </a>
                        </li>
                        <li><a id="1Btn" >1</a></li>
                        <li><a id="2Btn" >2</a></li>
                        <li><a id="3Btn" >3</a></li>
                        <li><a id="4Btn" >4</a></li>
                        <li><a id="5Btn" >5</a></li>
                        <li><a id="6Btn" >6</a></li>
                        <li>
                            <a aria-label="Next" id="nextBtn">
                                <span aria-hidden="true">&raquo;</span>
                            </a>
                        </li>
                        <input type="text"  id="zBtn" style="width: 35px; height: 34px" >
                    </ul>
                </nav>
                </center>

            </p>




        </div>



</body>
</html>
