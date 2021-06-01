<%--
  Created by IntelliJ IDEA.
  User: dd
  Date: 2021/5/25
  Time: 11:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>

    <link rel="stylesheet" href="https://cdn.bootcdn.net/ajax/libs/twitter-bootstrap/3.3.0/css/bootstrap.min.css" />
    <link rel="stylesheet" href="https://cdn.bootcdn.net/ajax/libs/twitter-bootstrap/3.3.0/css/bootstrap-theme.min.css" />
    <script src="https://cdn.bootcdn.net/ajax/libs/twitter-bootstrap/3.3.0/js/bootstrap.min.js" ></script>


    <script type="text/javascript" src="https://cdn.bootcdn.net/ajax/libs/jquery/1.12.4/jquery.js"></script>

    <script type="text/javascript">

        $(function () {

            $("#login").click(function () {

                window.location.href="tran/tranLogin.do?userName="+$.trim($("#userName").val())+"&password="+$.trim($("#password").val())

            })
        })


    </script>

</head>
<body>


<div align="center" style="margin-top:200px;margin-left: 750px;width: 400px;height: 300px; background-color:whitesmoke">
    <br>
    <img style="width: 50px; height: 50px;" src="/myWeb/image/milo.jpg"><br><br><br>


    <table border="1px">
        <tr>
            <div>
                <strong style="font-size: 18px">用户名称</strong>
                &nbsp;&nbsp;&nbsp;&nbsp;
                <input type="text" name="userName" style="width: 200px;height: 35px" id="userName" placeholder="请输入用户名">
            </div>
        </tr>
        <br>
        <tr>
            <div>
                <strong style="font-size: 18px">用户密码</strong>
                &nbsp;&nbsp;&nbsp;&nbsp;
                <input type="password" name="password" style="width: 200px;height: 35px" id="password" placeholder="密码">
            </div>
        </tr>
        <br>
        <tr>
            <td id="tbody">

            </td>
        </tr>
        <div>
            <input type="button" value="登录" id="login" class="btn btn-default">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <input type="reset" class="btn btn-default">
        </div>
        <div class="ant-tabs-ink-bar ant-tabs-ink-bar-animated" style="display: block; transform: translate3d(0px, 0px, 0px); width: 44px;"></div>
    </table>
</div>


</body>
</html>
