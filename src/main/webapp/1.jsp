<%--
  Created by IntelliJ IDEA.
  User: dd
  Date: 2021/3/4
  Time: 12:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + 	request.getServerPort() + request.getContextPath() + "/";
    /* http://localhost:8080/crm/ */
%>

<html>
<head>
    <base href="<%=basePath%>">
    <title>Title</title>
</head>
<body >
    //页码
    String pageNoStr = request.getParameter("pageNo");
    int pageNo = Integer.valueOf(pageNoStr);
    //每页展现的记录数
    String pageSizeStr = request.getParameter("pageSize");
    int pageSize = Integer.valueOf(pageSizeStr);

    //略过的个数
    int skipCount = (pageNo - 1)*pageSize;

    <%--JSTL--%>
    <%--<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>--%>
    <%--<c:forEach items="${sourceList}" var="s">
        <option value="${s.value}">${s.text}</option>
    </c:forEach>--%>

    <%--ajax样板--%>
    $.ajax({
    url:"",
    data:{

    },
    type:"",
    dataType:"json",
    success : function (data) {

    }

    })


    width="500px" height="100px"

    //时间控件
    $(".time").datetimepicker({
    minView: "month",
    language:  'zh-CN',
    format: 'yyyy-mm-dd',
    autoclose: true,
    todayBtn: true,
    pickerPosition: "bottom-left"
    });


    //自动补全
    $("#create-customerName").typeahead({
    source: function (query, process) {
    $.post(
    "workbench/transaction/getCustomerName.do",
    { "name" : query },
    function (data) {
    //alert(data);
    process(data);
    },
    "json"
    );
    },
    delay: 1500
    });


    //创建时间，创建人
    String createBy = ((User)request.getSession().getAttribute("user")).getName();
    String createTime = DateTimeUtil.getSysTime();


    <li>
        <a class="link clearfix" href="https://www.mi.com/buy?product_id=10000214" data-log_code="31pchomeother001000#t=normal&amp;act=other&amp;page=home&amp;page_id=10530&amp;bid=3476792.8">

            <img class="thumb"  data-src="https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/4a7a4f24061860901f724b6ba6d75fd9.png" src="//i1.mifile.cn/f/i/2014/cn/placeholder-40.png" width="40" height="40" alt=""><span class="text">小米10</span></a>
    </li>

    <li>
        <a class="link clearfix" href="https://www.mi.com/shouhuan6/nfc" data-log_code="31pchomeother005000#t=normal&amp;act=other&amp;page=home&amp;page_id=10530&amp;bid=3476796.2">
            <img class="thumb"  data-src="https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/baba53e0cfd7bf0958edd84f8c5fcbbb.png" src="//i1.mifile.cn/f/i/2014/cn/placeholder-40.png" width="40" height="40" alt=""><span class="text">小米手环6 NFC版</span></a>
    </li>


</body>
</html>
