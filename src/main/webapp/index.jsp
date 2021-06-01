<%--
  Created by IntelliJ IDEA.
  User: dd
  Date: 2021/5/18
  Time: 11:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Title</title>

  <link rel="stylesheet" href="https://cdn.bootcdn.net/ajax/libs/twitter-bootstrap/3.3.0/css/bootstrap.min.css" />
  <link rel="stylesheet" href="https://cdn.bootcdn.net/ajax/libs/twitter-bootstrap/3.3.0/css/bootstrap-theme.min.css" />
  <script src="https://cdn.bootcdn.net/ajax/libs/twitter-bootstrap/3.3.0/js/bootstrap.min.js" ></script>
  <script src="jquery/jquery-3.4.1.js"></script>

  <script type="text/javascript">
    $(function () {

        $("#login").click(function () {

          $.ajax({
            url:"user/login.do",
            data:{
              "userName":$.trim($("#userName").val()),
              "password":$.trim($("#password").val())
            },
            type:"post",
            dataType:"json",
            success : function (data) {
              //返回success/true;false
              if (data.success){
                //alert("成功")
                  window.location.href="detail.jsp"
              } else {
                //alert("请求失败，重新试试")
                var msg = data.msg;
                var html = "<font color=\"red\">"+msg+"</font>"
                $("#tbody").html(html)
              }
            }

          })
      })
    })




  </script>



</head>
<body>

<div align="center" style="margin-top:200px;margin-left: 750px;width: 400px;height: 300px; background-color:whitesmoke">


    &nbsp;&nbsp;&nbsp;<img style="width: 190px; height: 120px;" src="image/xiaomilo.jpg">
      <table border="0px">
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
