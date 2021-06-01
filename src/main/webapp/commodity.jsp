<%@ page import="com.Day.StuQue.domain.User" %><%--
  Created by IntelliJ IDEA.
  User: dd
  Date: 2021/5/21
  Time: 11:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<% String name = ((User)session.getAttribute("user")).getName(); %>

<%  String user_name = request.getParameter("user_name");
    String typeId = request.getParameter("typeId");

%>
<html>
<head>
    <title>Title</title>

    <link rel="stylesheet" href="https://cdn.bootcdn.net/ajax/libs/twitter-bootstrap/3.3.0/css/bootstrap.min.css" />
    <link rel="stylesheet" href="https://cdn.bootcdn.net/ajax/libs/twitter-bootstrap/3.3.0/css/bootstrap-theme.min.css" />
    <script src="https://cdn.bootcdn.net/ajax/libs/twitter-bootstrap/3.3.0/js/bootstrap.min.js" ></script>


    <script src="jquery/jquery-3.4.1.js"></script>

    <script type="text/javascript">

        $(function () {



            var result = 1;
            var flag = 5;

            showCommodityList(1,5);

            //分页--------------------------------------------------------------------------------------------

            //打开分页
            $("#openBtn").click(function () {
                result = 1
                showCommodityList(result,flag);
            })
            //关闭分页
            $("#closeBtn").click(function () {
                showCommodityList(1,100);
            })

            $("#upBtn").click(function () {
                result2 = result -1
                showCommodityList(result2,flag);
                result = result2
            })
            $("#nextBtn").click(function () {

                result2 = result +1
                showCommodityList(result2,flag);
                result = result2
            })

            //给第1，2，3，4，5页绑定事件
            $("#1Btn").click(function () {
                result = 1
                showCommodityList(result,flag);
            })
            $("#2Btn").click(function () {
                result = 2
                showCommodityList(result,flag);
            })
            $("#3Btn").click(function () {
                result = 3
                showCommodityList(result,flag);
            })
            $("#4Btn").click(function () {
                result = 4
                showCommodityList(result,flag);
            })
            $("#5Btn").click(function () {
                result = 5
                showCommodityList(result,flag);
            })
            //给自定义多少个绑定事件
            $(window).keydown(function (event) {
                if(13==event.keyCode){
                    var pageSize = $("#zBtn").val();

                    result = 1
                    showCommodityList(result,pageSize);

                    flag = pageSize;
                    $("#zBtn").val("")

                }
            })

            //分页--------------------------------------------------------------------------------------------

            //取消更改
            $("#quXiaoBtn").click(function () {
                $("#updateDiv").hide()
            })
            $("#qxBtn").click(function () {
                $("#addDiv").hide()
            })


            //更改商品信息
            $("#updateBtn").click(function () {



                $.ajax({
                    url:"comm/update.do",
                    data:{
                        "id" : $.trim($("#commId").val()),
                        "name" : $.trim($("#updateTd1").val()),
                        "version" : $.trim($("#updateTd2").val()),
                        "space" : $.trim($("#updateTd3").val()),
                        "size" : $.trim($("#updateTd4").val()),
                        "color" : $.trim($("#updateTd5").val()),
                        "money" : $.trim($("#updateTd6").val()),
                        "typeId" : $.trim($("#updateTd7").val())

                    },
                    type:"post",
                    dataType:"json",
                    success : function (data) {
                        if (data.success){
                            //alert("成功")
                            $("#updateDiv").hide()
                            $("#commId").val("")
                            $("#updateTd7").val("")

                            $("#updateTd1").val("")
                            $("#updateTd2").val("")
                            $("#updateTd3").val("")
                            $("#updateTd4").val("")
                            $("#updateTd5").val("")
                            $("#updateTd6").val("")


                            showCommodityList(1,5);

                        }
                    }

                })
            })

            //给模糊查询绑定事件
            $("#search-Btn").click(function () {

                $.ajax({
                    url:"comm/search.do",
                    data:{
                        "name" : $.trim($("#search-name").val()),
                        "version" : $.trim($("#search-version").val()),
                        "space" : $.trim($("#search-space").val()),
                        "size" : $.trim($("#search-size").val()),
                        "color" : $.trim($("#search-color").val()),
                        "money" : $.trim($("#search-money").val())
                    },
                    type:"get",
                    dataType:"json",
                    success : function (data) {
                        //----

                        var html = ""
                        html += '<tr align=\'center\'>';
                        html += '<td  width=\"1500px\" height=\"50px\">name</td>';
                        html += '<td  width=\"1500px\" height=\"50px\">型号</td>';
                        html += '<td  width=\"1500px\" height=\"50px\">内存</td>';
                        html += '<td  width=\"1500px\" height=\"50px\">尺寸</td>';
                        html += '<td  width=\"1500px\" height=\"50px\">颜色</td>';
                        html += '<td  width=\"1500px\" height=\"50px\">价格</td>';
                        html += '<td  width=\"1500px\" height=\"50px\">修改</td>';
                        html += '<td  width=\"1500px\" height=\"50px\">删除</td>';
                        html += '<td  width=\"1500px\" height=\"50px\">购买</td>';
                        html += '</tr>';
                        html += "<tr>";
                        html += "<td><font><hr><font></td>"
                        html += "<td><font><hr><font></td>"
                        html += "<td><font><hr><font></td>"
                        html += "<td><font><hr><font></td>"
                        html += "<td><font><hr><font></td>"
                        html += "<td><font><hr><font></td>"
                        html += "<td><font><hr><font></td>"
                        html += "<td><font><hr><font></td>"
                        html += "<td><font><hr><font></td>"
                        html += "</tr>";

                        $.each(data,function (i,n) {

                            html += '<tr align=\'center\'>';
                            html += '<td  width=\"1500px\" height=\"50px\">'+n.name+'</td>';
                            html += '<td  width=\"1500px\" height=\"50px\">'+n.version+'</td>';
                            html += '<td  width=\"1500px\" height=\"50px\">'+n.space+'</td>';
                            html += '<td  width=\"1500px\" height=\"50px\">'+n.size+'</td>';
                            html += '<td  width=\"1500px\" height=\"50px\">'+n.color+'</td>';
                            html += '<td  width=\"1500px\" height=\"50px\">'+n.money+'</td>';
                            html += '<td  width=\"1500px\" height=\"50px\"><a style="color: blue" onclick="updateComm(\''+n.id+'\')" ><span class="glyphicon glyphicon-pencil" aria-hidden="true"></span></a></td>'
                            html += '<td  width=\"1500px\" height=\"50px\"><a style="color: red" onclick="deleteComm(\''+n.id+'\')" ><span style="color: orangered"  class="glyphicon glyphicon-remove" aria-hidden="true"></a></td>'
                            html += '<td  width=\"1500px\" height=\"50px\"><a><span class="glyphicon glyphicon-shopping-cart" aria-hidden="true"></span></a></td>'
                            html += '</tr>';
                            html += "<tr>";
                            html += "<td><font><hr><font></td>"
                            html += "<td><font><hr><font></td>"
                            html += "<td><font><hr><font></td>"
                            html += "<td><font><hr><font></td>"
                            html += "<td><font><hr><font></td>"
                            html += "<td><font><hr><font></td>"
                            html += "<td><font><hr><font></td>"
                            html += "<td><font><hr><font></td>"
                            html += "<td><font><hr><font></td>"
                            html += "</tr>";


                            $("#commTbody").html(html)
                        })

                        //----
                    }

                })

            })
            //清空搜索框
            $("#kong-Btn").click(function () {
                $("#search-name").val("")
                $("#search-version").val("")
                $("#search-space").val("")
                $("#search-size").val("")
                $("#search-color").val("")
                $("#search-money").val("")

            })


            //给新增商品展示绑定事件
            $("#addComm").click(function () {
                $("#updateDiv").hide()
                //alert("12")
                $("#add1").val("");
                $("#add2").val("");
                $("#add3").val("");
                $("#add4").val("");
                $("#add5").val("");
                $("#add6").val("");
                $("#add7").val("");

                $("#addDiv").show()
            })
            //给新增商品绑定事件
            $("#addBtn").click(function () {
                //alert("123")
                $.ajax({
                    url:"comm/add.do",
                    data:{

                        "name" : $.trim($("#add1").val()),
                        "version" : $.trim($("#add2").val()),
                        "space" : $.trim($("#add3").val()),
                        "size" : $.trim($("#add4").val()),
                        "color" : $.trim($("#add5").val()),
                        "money" : $.trim($("#add6").val()),
                        "typeId" : <%=typeId%>

                    },
                    type:"post",
                    dataType:"json",
                    success : function (data) {
                        /*alert("新建成功")*/
                        if (data.success){
                            $("#add1").val("");
                            $("#add2").val("");
                            $("#add3").val("");
                            $("#add4").val("");
                            $("#add5").val("");
                            $("#add6").val("");
                            $("#add7").val("");

                            $("#addDiv").hide();
                            showCommodityList(1,5);
                        }

                    }

                })
            })



        })

        function showCommodityList(pageNo,pageSize) {

            $.ajax({
                url:"comm/getCommodityListAndTypeNamByTypeId.do",
                data:{
                    "typeId":<%=typeId%>,
                    "pageNo":pageNo,
                    "pageSize":pageSize
                },
                type:"get",
                dataType:"json",
                success : function (data) {

                    //返回{{"total":number},tyName:**,commList:[{}{}{}{}]}

                    $("#commTypeName").text(data.typeName)
                    $("#addComm").text("新增"+data.typeName)
                    $("#h3Id").html('<font color="#ff4500">请选择你要购买的：<u><a style="color:#ff4500 ;" href="commodityType.jsp?user_name=\'<%=user_name%>\'"><em>'+data.typeName+'</em></a></u></font>')

                    var html = ""
                    html += '<tr align=\'center\'>';
                    html += '<td  width=\"1500px\" height=\"50px\">name</td>';
                    html += '<td  width=\"1500px\" height=\"50px\">型号</td>';
                    html += '<td  width=\"1500px\" height=\"50px\">内存</td>';
                    html += '<td  width=\"1500px\" height=\"50px\">尺寸</td>';
                    html += '<td  width=\"1500px\" height=\"50px\">颜色</td>';
                    html += '<td  width=\"1500px\" height=\"50px\">价格</td>';
                    html += '<td  width=\"1500px\" height=\"50px\">修改</td>';
                    html += '<td  width=\"1500px\" height=\"50px\">删除</td>';
                    html += '<td  width=\"1500px\" height=\"50px\">购买</td>';
                    html += '</tr>';
                    html += "<tr>";
                    html += "<td><font><hr><font></td>"
                    html += "<td><font><hr><font></td>"
                    html += "<td><font><hr><font></td>"
                    html += "<td><font><hr><font></td>"
                    html += "<td><font><hr><font></td>"
                    html += "<td><font><hr><font></td>"
                    html += "<td><font><hr><font></td>"
                    html += "<td><font><hr><font></td>"
                    html += "<td><font><hr><font></td>"
                    html += "</tr>";

                    $.each(data.commList,function (i,n) {



                        html += '<tr align=\'center\'>';
                        html += '<td  width=\"1500px\" height=\"50px\">'+n.name+'</td>';
                        html += '<td  width=\"1500px\" height=\"50px\">'+n.version+'</td>';
                        html += '<td  width=\"1500px\" height=\"50px\">'+n.space+'</td>';
                        html += '<td  width=\"1500px\" height=\"50px\">'+n.size+'</td>';
                        html += '<td  width=\"1500px\" height=\"50px\">'+n.color+'</td>';
                        html += '<td  width=\"1500px\" height=\"50px\">'+n.money+'</td>';
                        html += '<td  width=\"1500px\" height=\"50px\"><a style="color: blue" onclick="updateComm(\''+n.id+'\')" ><span class="glyphicon glyphicon-pencil" aria-hidden="true"></span></a></td>'
                        html += '<td  width=\"1500px\" height=\"50px\"><a style="color: red" onclick="deleteComm(\''+n.id+'\')" ><span style="color: orangered"  class="glyphicon glyphicon-remove" aria-hidden="true"></a></td>'
                        html += '<td  width=\"1500px\" height=\"50px\"><a onclick="buyComm(\''+n.id+'\')" ><span class="glyphicon glyphicon-shopping-cart" aria-hidden="true"></span></a></td>'
                        html += '</tr>';
                        html += "<tr>";
                        html += "<td><font><hr><font></td>"
                        html += "<td><font><hr><font></td>"
                        html += "<td><font><hr><font></td>"
                        html += "<td><font><hr><font></td>"
                        html += "<td><font><hr><font></td>"
                        html += "<td><font><hr><font></td>"
                        html += "<td><font><hr><font></td>"
                        html += "<td><font><hr><font></td>"
                        html += "<td><font><hr><font></td>"
                        html += "</tr>";

                        $("#commTbody").html(html)
                    })
                }

            })

        }

        function updateComm(id) {
            $("#addDiv").hide()

            $("#updateDiv").show()
            $("#commId").val(id)


            $.ajax({
                url:"comm/getCommodityById.do",
                data:{
                    "id":id
                },
                type:"get",
                dataType:"json",
                success : function (data) {

                    $("#updateTd1").val(data.name)
                    $("#updateTd2").val(data.version)
                    $("#updateTd3").val(data.space)
                    $("#updateTd4").val(data.size)
                    $("#updateTd5").val(data.color)
                    $("#updateTd6").val(data.money)
                    $("#updateTd7").val(data.typeId)

                }

            })


        }
        function deleteComm(id) {
            //alert(id)
            $.ajax({
                url:"comm/delete.do",
                data:{
                    "id":id
                },
                type:"post",
                datatype:"json",
                success:function (data) {
                    showCommodityList(1,5);
                }

            })
        }
        //加入购物车
        function buyComm(id) {

            $.ajax({
                url:"comm/addShipping.do",
                data:{
                    "commId":id,
                    "commTypeId":<%=typeId%>,
                    "userName":"<%=user_name%>"

                },
                type:"post",
                dataType:"json",
                success : function (data) {
                    if (data.success){
                        alert("添加成功")
                    } else {
                        alert("添加失败")
                    }
                }

            })
        }

    </script>
</head>
<body>
<div align="right"><a href="shopping.jsp?user_name='<%=user_name%>'">购物车</a>&nbsp;&nbsp;&nbsp;管理者：<font color="#7cfc00"><%=name%></font></div>
<br>
<ol class="breadcrumb"  style="font-size: 20px">
    <li><a href="/myWeb/index.jsp">登录页</a></li>
    <li><a href="/myWeb/detail.jsp">客户：<%=user_name%></a></li>
    <li><a href="commodityType.jsp?user_name='<%=user_name%>'">商城首页</a></li>
    <li class="active" id="commTypeName"></li>
</ol>

    <h2 align="center" id="h3Id"></h2>
    <div align="right" style="margin-right: 20px">

    </div>


<div align="center">
    name<input type="text" id="search-name"> &nbsp;&nbsp;
    型号<input type="text" id="search-version">&nbsp;&nbsp;
    内存<input type="text" id="search-space">&nbsp;&nbsp;
    尺寸<input type="text" id="search-size">&nbsp;&nbsp;
    颜色<input type="text" id="search-color">&nbsp;&nbsp;
    价格<input type="text" id="search-money">&nbsp;&nbsp;
    <input type="button" value="搜索" id="search-Btn">
    <input type="button" value="清空" id="kong-Btn">

</div>
<br><br>


    <div >
        <p align="center">
            <a id="addComm">新增用户</a>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <a id="openBtn">打开分页</a>
            <a id="closeBtn">关闭分页</a>
        </p>

        <table align="center" width="1300px" height="350px">
            <tbody id="commTbody" >

            </tbody>
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
    <div id="updateDiv" style=" position: fixed;bottom: 0px; display:none;"  >
        <table class="table-cell" border="1px" align="center" width="1000px" height="25px">
            <tr>
                <td>name<input type="text" id="updateTd1"></td>
                <td>型号<input type="text" id="updateTd2"></td>
                <td>内存<input type="text" id="updateTd3"></td>
                <td>尺寸<input type="text" id="updateTd4"></td>
                <td>颜色<input type="text" id="updateTd5"></td>
                <td>价格<input type="text" id="updateTd6"></td>
                <td><input type="button" id="updateBtn" value="确认"><input type="button" id="quXiaoBtn" value="取消"></td>
                <input type="hidden" id="updateTd7">
                <input type="hidden" id="commId">
            </tr>
        </table>

    </div>

    <div id="addDiv" style=" position: fixed;bottom: 0px; display:none;"  >
        <table class="table-cell" border="1px" align="center" width="1000px" height="25px">
            <tr>
                <td>name<input type="text" id="add1"></td>
                <td>型号<input type="text" id="add2"></td>
                <td>内存<input type="text" id="add3"></td>
                <td>尺寸<input type="text" id="add4"></td>
                <td>颜色<input type="text" id="add5"></td>
                <td>价格<input type="text" id="add6"></td>
                <input type="hidden" id="add7"><%--要增加的TypeId--%>
                <td><input type="button" id="addBtn" value="确认"><input type="button" id="qxBtn" value="取消"></td>
            </tr>
        </table>

    </div>

</body>
</html>
