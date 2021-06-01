<%--
  Created by IntelliJ IDEA.
  User: dd
  Date: 2021/5/20
  Time: 9:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>

    <script src="jquery/jquery-3.4.1.js"></script>
    <script type="text/javascript">

        $(function () {

            $("#name").val("")
            $("#sex").val("")
            $("#tel").val("")
            $("#addr").val("")
            $("#remark").val("")

            $("#addBtn").click(function () {

                $.ajax({
                    url:"user/add.do",
                    data:{
                        "name":$.trim($("#name").val()),
                        "sex":$.trim($("#sex").val()),
                        "tel":$.trim($("#tel").val()),
                        "addr":$.trim($("#addr").val()),
                        "remark":$.trim($("#remark").val())
                    },
                    type:"post",
                    datatype:"json",
                    success:function (data) {
                        alert("新增成功")
                        window.location="detail.jsp";
                    }

                })
            })

        })


    </script>
</head>
<body>
    <table>

        <tr>
            <td>
                姓名<input type="text" id="name">
            </td>
        </tr>
        <tr>
            <td>
                性别<input type="text" id="sex">
            </td>
        </tr>
        <tr>
            <td>
                电话<input type="text" id="tel">
            </td>
        </tr>
        <tr>
            <td>
                地址<input type="text" id="addr">
            </td>
        </tr>
        <tr>
            <td>
                备注<input type="text" id="remark">
            </td>
        </tr>
        <tr>
            <td>
                <input type="button" id="addBtn" value="新增">
            </td>
        </tr>



    </table>
</body>
</html>
