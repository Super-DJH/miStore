<%@ page import="com.Day.StuQue.domain.User" %><%--
  Created by IntelliJ IDEA.
  User: dd
  Date: 2021/5/20
  Time: 14:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>


<html>
<head>
    <title>Title</title>

    <script type="text/javascript" src="https://cdn.bootcdn.net/ajax/libs/jquery/1.12.4/jquery.js"></script>

    <script type="text/javascript">
        $(function () {
           $("#name").val("${u.name}");
           $("#sex").val("${u.sex}");
           $("#tel").val("${u.tel}");
           $("#addr").val("${u.addr}");
           $("#remark").val("${u.remark}");


           //为修改按钮绑定事件
            $("#updateBtn").click(function () {
                $.ajax({
                    url:"updateUser.do",
                    data:{
                        "id":"${u.id}",
                        "name":$.trim($("#name").val()),
                        "sex":$.trim($("#sex").val()),
                        "tel":$.trim($("#tel").val()),
                        "addr":$.trim($("#addr").val()),
                        "remark":$.trim($("#remark").val()),

                    },
                    type:"post",
                    datatype:"json",
                    success : function (data) {
                        //返回success/true;false
                        window.location="out.do"
                    }
                })

            })
        })
    </script>

</head>
<body>

    姓名<input type="text" id="name"><br>
    性别<input type="text" id="sex"><br>
    电话<input type="text" id="tel"><br>
    地址<input type="text" id="addr"><br>
    备注<input type="text" id="remark"><br>

    <input type="button" id="updateBtn" value="修改">

</body>
</html>
