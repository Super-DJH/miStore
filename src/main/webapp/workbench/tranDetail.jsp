<%@ page import="java.util.Map" %>
<%@ page import="java.util.List" %>
<%@ page import="com.Day.StuQue.domain.Commodity" %>
<%@ page import="javax.print.DocFlavor" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>


<%
    /*List<Commodity> phone = (List<Commodity>) session.getAttribute("手机/电话卡");*/
    Map<String,Object> map = (Map<String, Object>) session.getAttribute("m");
    String userName = (String) session.getAttribute("userName");
%>

<html lang="zh-CN" xml:lang="zh-CN">

<head>



    <meta http-equiv="X-UA-Compatible" content="IE=Edgitge" />
    <meta charset="UTF-8" />
    <title>
        小米商城 - 小米11 Ultra、Redmi K40 Pro、MIX FOLD，小米电视官方网站
    </title>

    <%--<link rel="stylesheet" href="https://cdn.bootcdn.net/ajax/libs/twitter-bootstrap/3.3.0/css/bootstrap.min.css" />
    <link rel="stylesheet" href="https://cdn.bootcdn.net/ajax/libs/twitter-bootstrap/3.3.0/css/bootstrap-theme.min.css" />
    <script src="https://cdn.bootcdn.net/ajax/libs/twitter-bootstrap/3.3.0/js/bootstrap.min.js" ></script>--%>


    <%--<script type="text/javascript" src="https://cdn.bootcdn.net/ajax/libs/jquery/1.12.4/jquery.js"></script>--%>


    <meta name="description" content="小米官网直营小米公司旗下所有产品，包括小米手机系列小米11 Ultra、MIX FOLD，Redmi 红米系列Redmi Note 9、Redmi K40 Pro，小米电视、笔记本、米家智能家居等，同时提供小米客户服务及售后支持." />
    <meta name="keywords" content="小米,redmi,小米11 Ultra,Redmi Note 9,小米MIX Alpha,小米商城" />

    <meta name="viewport" content="width=1226" />
    <meta http-equiv="x-dns-prefetch-control" content="on">
    <link rel="dns-prefetch" href="//s01.mifile.cn" />
    <link rel="dns-prefetch" href="//c1.mifile.cn" />
    <link rel="dns-prefetch" href="//i3.mifile.cn" />
    <link rel="dns-prefetch" href="//i2.mifile.cn" />
    <link rel="dns-prefetch" href="//i1.mifile.cn" />
    <link rel="dns-prefetch" href="//i8.mifile.cn" />
    <link rel="dns-prefetch" href="//v.mifile.cn" />
    <link rel="dns-prefetch" href="//a.huodong.mi.cn" />
    <link rel="shortcut icon" href="//s01.mifile.cn/favicon.ico" type="image/x-icon" />
    <link rel="icon" href="//s01.mifile.cn/favicon.ico" type="image/x-icon" />
    <meta http-equiv="Cache-Control" content="no-transform " />
    <meta http-equiv="Cache-Control" content="no-siteapp" />

    <link href="//s02.mifile.cn/assets/css/home.1f77b03c.css" rel="preload" as="style"><link href="//s02.mifile.cn/assets/js/chunk-vendors.4dda2449.js" rel="preload" as="script"><link href="//s02.mifile.cn/assets/js/home.747f9d13.js" rel="preload" as="script"><link href="//s02.mifile.cn/assets/css/home.1f77b03c.css" rel="stylesheet"></head>

<body>
<div id="app">
    <div ref="J_siteHeader">

        <div class="header">
            <div id="J_topbarBannerWrapper"></div>
            <div class="site-topbar">
                <div class="container">
                    <div class="topbar-nav">


                        <a rel="nofollow" href="//www.mi.com/index.html" >小米商城</a>
                        <span class="sep">|</span>
                        <a rel="nofollow" href="//www.miui.com/" target="_blank">MIUI</a>
                        <span class="sep">|</span>
                        <a rel="nofollow" href="//iot.mi.com" target="_blank">IoT</a>
                        <span class="sep">|</span>
                        <a rel="nofollow" href="//i.mi.com/" target="_blank">云服务</a>
                        <span class="sep">|</span>
                        <a rel="nofollow" href="//airstar.com/home" target="_blank">天星数科</a>
                        <span class="sep">|</span>
                        <a rel="nofollow" href="//youpin.mi.com/" target="_blank">有品</a>
                        <span class="sep">|</span>
                        <a rel="nofollow" href="//xiaoai.mi.com/" target="_blank">小爱开放平台</a>
                        <span class="sep">|</span>
                        <a rel="nofollow" href="//qiye.mi.com/" target="_blank">企业团购</a>
                        <span class="sep">|</span>
                        <a rel="nofollow" href="//www.mi.com/aptitude/list/?id=88" target="_blank">资质证照</a>
                        <span class="sep">|</span>
                        <a rel="nofollow" href="//www.mi.com/aptitude/list/" target="_blank">协议规则</a>
                        <span class="sep">|</span>
                        <a rel="nofollow" href="//www.mi.com/appdownload/" target="_blank" class="topbar-download" id="J_siteDownloadApp">
                            下载app
                            <span class="appcode">
        <img src="//i1.mifile.cn/f/i/17/appdownload/download.png?1" alt="小米商城" width="90" height="90">
        小米商城APP
    </span>
                        </a>
                        <span class="sep">|</span>
                        <a rel="nofollow" href="//xiaomishare.mi.com/?from=micom" target="_blank">智能生活</a>
                        <span class="sep">|</span>
                        <a rel="nofollow" href="javascript:;" class="J_siteGlobalRegion">Select Location</a>

                    </div>
                    <div class="topbar-cart" id="J_miniCartTrigger">
                        <a rel="nofollow" class="cart-mini" id="J_miniCartBtn" href="/myWeb/workbench/tran/tranShopping.jsp">
                            <em class="iconfont-cart"></em><em class="iconfont-cart-full hide"></em>购物车<span class="cart-mini-num J_cartNum"></span>
                        </a>

                        <div class="cart-menu " id="J_miniCartMenu">
                            <div class="menu-content">
                                <div class="loading"><div class="loader"></div></div>
                                <ul class="cart-list hide" id="J_miniCartList"></ul>
                                <div class="cart-total clearfix hide" id="J_miniCartListTotal"></div>
                                <div class="msg msg-error hide"></div>
                                <div class="msg msg-empty hide">购物车中还没有商品，赶紧选购吧！</div>
                            </div>
                        </div>
                    </div>
                    <div class="topbar-info" id="J_siteUserInfo">

                        <a href="/myWeb/workbench/tran/getHisListAll.do">全部订单</a>

                        <a  rel="nofollow" class="link" href="#" data-agreement="true"   data-login="true"></a>
                        <a  rel="nofollow" class="link" href="#" data-agreement="true"   data-login="true"></a>
                        <span class="sep">|</span>
                        <a  rel="nofollow" class="link" href="#" data-agreement="true" data-register="true"></a>
                    </div>
                </div>

            </div>

            <div class="site-header  ">
                <div class="container">
                    <div class="header-logo">
                        <a class="logo ir" href="//www.mi.com/index.html" title="小米官网">小米官网</a>
                    </div>

                    <div class="header-nav ">
                        <ul class="nav-list J_navMainList clearfix">

                            <li id="J_navCategory" class="nav-category">
                                <a class="link-category" href="//www.mi.com/category/list"><span class="text">全部商品分类</span></a>
                                <div class="site-category" >

                                    <ul id="J_categoryList" class="site-category-list clearfix">

                                        <li class="category-item">
                                            <a class="title"


                                               href=""

                                               data-log_code="31pchomeother001000#t=normal&amp;act=other&amp;page=home&amp;page_id=10530&amp;bid=3476792.1">
                                                手机 电话卡
                                                <em class="iconfont-arrow-right-big"></em>
                                            </a>

                                            <div class="children clearfix">
                                                <ul class="children-list clearix">

                                                    <%List<Commodity> commList = (List<Commodity>) map.get("手机/电话卡");
                                                        for (Commodity c : commList) {
                                                    %>
                                                    <li>
                                                        <a class="link clearfix" href="/myWeb/workbench/tran/tranShow.do?id=<%=c.getId()%>" <%--data-log_code="31pchomeother001000#t=normal&amp;act=other&amp;page=home&amp;page_id=10530&amp;bid=3476792.8"--%>>
                                                            <img <%--class="thumb"  data-src=""--%> src="/myWeb/image/<%=c.getId()%>.jpg" width="40" height="40" <%--alt=""--%>><span class="text"><%=c.getName()%>&nbsp;<%=c.getVersion()%>&nbsp;<%=c.getColor()%></span></a>
                                                    </li>
                                                    <%}%>

                                                </ul>
                                                <%--手机--%>
                                            </div>

                                        </li>

                                        <li class="category-item">
                                            <a class="title"

                                               href=""

                                               data-log_code="31pchomeother002000#t=normal&amp;act=other&amp;page=home&amp;page_id=10530&amp;bid=3476793.1">
                                                电视 盒子
                                                <em class="iconfont-arrow-right-big"></em>
                                            </a>

                                            <div class="children clearfix">
                                                <ul class="children-list clearix">

                                                    <%List<Commodity> dsmmList = (List<Commodity>) map.get("电视/盒子");
                                                        for (Commodity c : dsmmList) {
                                                    %>
                                                    <li>
                                                        <a class="link clearfix" href="/myWeb/workbench/tran/tranShow.do?id=<%=c.getId()%>" <%--data-log_code="31pchomeother001000#t=normal&amp;act=other&amp;page=home&amp;page_id=10530&amp;bid=3476792.8"--%>>
                                                            <img <%--class="thumb"  data-src=""--%> src="/myWeb/image/<%=c.getId()%>.jpg" width="40" height="40" <%--alt=""--%>><span class="text"><%=c.getName()%>&nbsp;<%=c.getVersion()%>&nbsp;<%=c.getColor()%></span></a>
                                                    </li>
                                                    <%}%>

                                                </ul>
                                                <%--电视--%>
                                            </div>

                                        </li>

                                        <li class="category-item">
                                            <a class="title"

                                               href=""

                                               data-log_code="31pchomeother003000#t=normal&amp;act=other&amp;page=home&amp;page_id=10530&amp;bid=3476794.1">
                                                笔记本 显示器
                                                <em class="iconfont-arrow-right-big"></em>
                                            </a>

                                            <div class="children clearfix">
                                                <ul class="children-list clearix">

                                                    <%List<Commodity> bjmmList = (List<Commodity>) map.get("笔记本/显示器");
                                                        for (Commodity c : bjmmList) {
                                                    %>
                                                    <li>
                                                        <a class="link clearfix" href="/myWeb/workbench/tran/tranShow.do?id=<%=c.getId()%>" <%--data-log_code="31pchomeother001000#t=normal&amp;act=other&amp;page=home&amp;page_id=10530&amp;bid=3476792.8"--%>>
                                                            <img <%--class="thumb"  data-src=""--%> src="/myWeb/image/<%=c.getId()%>.jpg" width="40" height="40" <%--alt=""--%>><span class="text"><%=c.getName()%>&nbsp;<%=c.getVersion()%>&nbsp;<%=c.getColor()%></span></a>
                                                    </li>
                                                    <%}%>

                                                </ul>
                                                <%--笔记本--%>
                                            </div>

                                        </li>

                                        <li class="category-item">
                                            <a class="title"

                                               href=""

                                               data-log_code="31pchomeother004000#t=normal&amp;act=other&amp;page=home&amp;page_id=10530&amp;bid=3476795.1">
                                                家电 插线板
                                                <em class="iconfont-arrow-right-big"></em>
                                            </a>

                                            <div class="children clearfix">
                                                <ul class="children-list clearix">

                                                    <%List<Commodity> jdmmList = (List<Commodity>) map.get("家电/插线板");
                                                        for (Commodity c : jdmmList) {
                                                    %>
                                                    <li>
                                                        <a class="link clearfix" href="/myWeb/workbench/tran/tranShow.do?id=<%=c.getId()%>" <%--data-log_code="31pchomeother001000#t=normal&amp;act=other&amp;page=home&amp;page_id=10530&amp;bid=3476792.8"--%>>
                                                            <img <%--class="thumb"  data-src=""--%> src="/myWeb/image/<%=c.getId()%>.jpg" width="40" height="40" <%--alt=""--%>><span class="text"><%=c.getName()%>&nbsp;<%=c.getVersion()%>&nbsp;<%=c.getColor()%></span></a>
                                                    </li>
                                                    <%}%>

                                                </ul>
                                                <%--家电--%>
                                            </div>

                                        </li>

                                        <li class="category-item">
                                            <a class="title"

                                               href=""

                                               data-log_code="31pchomeother005000#t=normal&amp;act=other&amp;page=home&amp;page_id=10530&amp;bid=3476796.1">
                                                出行 穿戴
                                                <em class="iconfont-arrow-right-big"></em>
                                            </a>

                                            <div class="children clearfix">

                                                <ul class="children-list clearix">

                                                    <%List<Commodity> cxmmList = (List<Commodity>) map.get("出行/穿戴");
                                                        for (Commodity c : cxmmList) {
                                                    %>
                                                    <li>
                                                        <a class="link clearfix" href="/myWeb/workbench/tran/tranShow.do?id=<%=c.getId()%>" <%--data-log_code="31pchomeother001000#t=normal&amp;act=other&amp;page=home&amp;page_id=10530&amp;bid=3476792.8"--%>>
                                                            <img <%--class="thumb"  data-src=""--%> src="/myWeb/image/<%=c.getId()%>.jpg" width="40" height="40" <%--alt=""--%>><span class="text"><%=c.getName()%>&nbsp;<%=c.getVersion()%>&nbsp;<%=c.getColor()%></span></a>
                                                    </li>
                                                    <%}%>

                                                </ul>
                                                <%--出行--%>
                                            </div>

                                        </li>

                                        <li class="category-item">
                                            <a class="title"

                                               href=""

                                               data-log_code="31pchomeother006000#t=normal&amp;act=other&amp;page=home&amp;page_id=10530&amp;bid=3476797.1">
                                                智能 路由器
                                                <em class="iconfont-arrow-right-big"></em>
                                            </a>

                                            <div class="children clearfix">
                                                <ul class="children-list clearix">

                                                    <%List<Commodity> znmmList = (List<Commodity>) map.get("智能/路由器");
                                                        for (Commodity c : znmmList) {
                                                    %>
                                                    <li>
                                                        <a class="link clearfix" href="/myWeb/workbench/tran/tranShow.do?id=<%=c.getId()%>" <%--data-log_code="31pchomeother001000#t=normal&amp;act=other&amp;page=home&amp;page_id=10530&amp;bid=3476792.8"--%>>
                                                            <img <%--class="thumb"  data-src=""--%> src="/myWeb/image/<%=c.getId()%>.jpg" width="40" height="40" <%--alt=""--%>><span class="text"><%=c.getName()%>&nbsp;<%=c.getVersion()%>&nbsp;<%=c.getColor()%></span></a>
                                                    </li>
                                                    <%}%>

                                                </ul>
                                                <%----%>
                                            </div>

                                        </li>

                                        <li class="category-item">
                                            <a class="title"

                                               href=""

                                               data-log_code="31pchomeother007000#t=normal&amp;act=other&amp;page=home&amp;page_id=10530&amp;bid=3476798.1">
                                                电源 配件
                                                <em class="iconfont-arrow-right-big"></em>
                                            </a>

                                            <div class="children clearfix">
                                                <ul class="children-list clearix">

                                                    <%List<Commodity> dymmList = (List<Commodity>) map.get("电源/配件");
                                                        for (Commodity c : dymmList) {
                                                    %>
                                                    <li>
                                                        <a class="link clearfix" href="/myWeb/workbench/tran/tranShow.do?id=<%=c.getId()%>" <%--data-log_code="31pchomeother001000#t=normal&amp;act=other&amp;page=home&amp;page_id=10530&amp;bid=3476792.8"--%>>
                                                            <img <%--class="thumb"  data-src=""--%> src="/myWeb/image/<%=c.getId()%>.jpg" width="40" height="40" <%--alt=""--%>><span class="text"><%=c.getName()%>&nbsp;<%=c.getVersion()%>&nbsp;<%=c.getColor()%></span></a>
                                                    </li>
                                                    <%}%>

                                                </ul>
                                                <%----%>
                                            </div>

                                        </li>

                                        <li class="category-item">
                                            <a class="title"

                                               href=""

                                               data-log_code="31pchomeother008000#t=normal&amp;act=other&amp;page=home&amp;page_id=10530&amp;bid=3476799.1">
                                                健康 儿童
                                                <em class="iconfont-arrow-right-big"></em>
                                            </a>

                                            <div class="children clearfix">
                                                <ul class="children-list clearix">

                                                    <%List<Commodity> jkmmList = (List<Commodity>) map.get("健康/儿童");
                                                        for (Commodity c : jkmmList) {
                                                    %>
                                                    <li>
                                                        <a class="link clearfix" href="/myWeb/workbench/tran/tranShow.do?id=<%=c.getId()%>" <%--data-log_code="31pchomeother001000#t=normal&amp;act=other&amp;page=home&amp;page_id=10530&amp;bid=3476792.8"--%>>
                                                            <img <%--class="thumb"  data-src=""--%> src="/myWeb/image/<%=c.getId()%>.jpg" width="40" height="40" <%--alt=""--%>><span class="text"><%=c.getName()%>&nbsp;<%=c.getVersion()%>&nbsp;<%=c.getColor()%></span></a>
                                                    </li>
                                                    <%}%>

                                                </ul>
                                                <%----%>
                                            </div>

                                        </li>

                                        <li class="category-item">
                                            <a class="title"

                                               href=""

                                               data-log_code="31pchomeother009000#t=normal&amp;act=other&amp;page=home&amp;page_id=10530&amp;bid=3478351.1">
                                                耳机 音箱
                                                <em class="iconfont-arrow-right-big"></em>
                                            </a>

                                            <div class="children clearfix">
                                                <ul class="children-list clearix">

                                                    <%List<Commodity> ejmmList = (List<Commodity>) map.get("耳机/音箱");
                                                        for (Commodity c : ejmmList) {
                                                    %>
                                                    <li>
                                                        <a class="link clearfix" href="/myWeb/workbench/tran/tranShow.do?id=<%=c.getId()%>" <%--data-log_code="31pchomeother001000#t=normal&amp;act=other&amp;page=home&amp;page_id=10530&amp;bid=3476792.8"--%>>
                                                            <img <%--class="thumb"  data-src=""--%> src="/myWeb/image/<%=c.getId()%>.jpg" width="40" height="40" <%--alt=""--%>><span class="text"><%=c.getName()%>&nbsp;<%=c.getVersion()%>&nbsp;<%=c.getColor()%></span></a>
                                                    </li>
                                                    <%}%>

                                                </ul>
                                                <%----%>
                                            </div>

                                        </li>

                                        <li class="category-item">
                                            <a class="title"

                                               href=""

                                               data-log_code="31pchomeother010000#t=normal&amp;act=other&amp;page=home&amp;page_id=10530&amp;bid=3476801.1">
                                                生活 箱包
                                                <em class="iconfont-arrow-right-big"></em>
                                            </a>

                                            <div class="children clearfix">
                                                <ul class="children-list clearix">

                                                    <%List<Commodity> shmmList = (List<Commodity>) map.get("生活/箱包");
                                                        for (Commodity c : shmmList) {
                                                    %>
                                                    <li>
                                                        <a class="link clearfix" href="/myWeb/workbench/tran/tranShow.do?id=<%=c.getId()%>" <%--data-log_code="31pchomeother001000#t=normal&amp;act=other&amp;page=home&amp;page_id=10530&amp;bid=3476792.8"--%>>
                                                            <img <%--class="thumb"  data-src=""--%> src="/myWeb/image/<%=c.getId()%>.jpg" width="40" height="40" <%--alt=""--%>><span class="text"><%=c.getName()%>&nbsp;<%=c.getVersion()%>&nbsp;<%=c.getColor()%></span></a>
                                                    </li>
                                                    <%}%>


                                                </ul>
                                                <%----%>
                                            </div>

                                        </li>

                                    </ul>

                                </div>
                            </li>









                        </ul>
                    </div>

                    <div class="header-search ">
                        <form id="J_searchForm" class="search-form clearfix" action="//search.mi.com/search" method="get">
                            <label for="search" class="hide">站内搜索</label>
                            <a class="no-style-msq" data-log_code="bpm=28.265.3682762.1&cdm=0.0.0.0">
                                <input class="search-text" type="search" id="search" name="keyword" autocomplete="off" data-search-config="{'defaultWords':[{&#34;word&#34;:&#34;Redmi K30&#34;,&#34;block_id&#34;:0,&#34;action&#34;:{&#34;type&#34;:&#34;none&#34;,&#34;path&#34;:&#34;&#34;,&#34;log_code&#34;:&#34;31pcsearchother000000#t=normal\u0026act=other\u0026page=search\u0026bid=3468989.1&#34;,&#34;extra&#34;:&#34;&#34;}},{&#34;word&#34;:&#34;小米10&#34;,&#34;block_id&#34;:0,&#34;action&#34;:{&#34;type&#34;:&#34;none&#34;,&#34;path&#34;:&#34;&#34;,&#34;log_code&#34;:&#34;31pcsearchother000000#t=normal\u0026act=other\u0026page=search\u0026bid=3468988.1&#34;,&#34;extra&#34;:&#34;&#34;}},{&#34;word&#34;:&#34;Redmi Note 8&#34;,&#34;block_id&#34;:0,&#34;action&#34;:{&#34;type&#34;:&#34;none&#34;,&#34;path&#34;:&#34;&#34;,&#34;log_code&#34;:&#34;31pcsearchother000000#t=normal\u0026act=other\u0026page=search\u0026bid=3468986.1&#34;,&#34;extra&#34;:&#34;&#34;}},{&#34;word&#34;:&#34;小米CC9&#34;,&#34;block_id&#34;:0,&#34;action&#34;:{&#34;type&#34;:&#34;none&#34;,&#34;path&#34;:&#34;&#34;,&#34;log_code&#34;:&#34;31pcsearchother000000#t=normal\u0026act=other\u0026page=search\u0026bid=3468985.1&#34;,&#34;extra&#34;:&#34;&#34;}},{&#34;word&#34;:&#34;黑鲨游戏手机&#34;,&#34;block_id&#34;:0,&#34;action&#34;:{&#34;type&#34;:&#34;none&#34;,&#34;path&#34;:&#34;&#34;,&#34;log_code&#34;:&#34;31pcsearchother000000#t=normal\u0026act=other\u0026page=search\u0026bid=3468990.1&#34;,&#34;extra&#34;:&#34;&#34;}},{&#34;word&#34;:&#34;小米电视&#34;,&#34;block_id&#34;:0,&#34;action&#34;:{&#34;type&#34;:&#34;none&#34;,&#34;path&#34;:&#34;&#34;,&#34;log_code&#34;:&#34;31pcsearchother000000#t=normal\u0026act=other\u0026page=search\u0026bid=3468984.1&#34;,&#34;extra&#34;:&#34;&#34;}},{&#34;word&#34;:&#34;小米笔记本&#34;,&#34;block_id&#34;:0,&#34;action&#34;:{&#34;type&#34;:&#34;none&#34;,&#34;path&#34;:&#34;&#34;,&#34;log_code&#34;:&#34;31pcsearchother000000#t=normal\u0026act=other\u0026page=search\u0026bid=3468983.1&#34;,&#34;extra&#34;:&#34;&#34;}},{&#34;word&#34;:&#34;路由器&#34;,&#34;block_id&#34;:0,&#34;action&#34;:{&#34;type&#34;:&#34;none&#34;,&#34;path&#34;:&#34;&#34;,&#34;log_code&#34;:&#34;31pcsearchother000000#t=normal\u0026act=other\u0026page=search\u0026bid=3468982.1&#34;,&#34;extra&#34;:&#34;&#34;}},{&#34;word&#34;:&#34;小爱音箱&#34;,&#34;block_id&#34;:0,&#34;action&#34;:{&#34;type&#34;:&#34;none&#34;,&#34;path&#34;:&#34;&#34;,&#34;log_code&#34;:&#34;31pcsearchother000000#t=normal\u0026act=other\u0026page=search\u0026bid=3468981.1&#34;,&#34;extra&#34;:&#34;&#34;}},{&#34;word&#34;:&#34;净水器&#34;,&#34;block_id&#34;:0,&#34;action&#34;:{&#34;type&#34;:&#34;none&#34;,&#34;path&#34;:&#34;&#34;,&#34;log_code&#34;:&#34;31pcsearchother000000#t=normal\u0026act=other\u0026page=search\u0026bid=3468980.1&#34;,&#34;extra&#34;:&#34;&#34;}}]}" />
                            </a>
                            <a id="J_submitBtn" class="no-style-msq" data-log_code="bpm=28.265.3682763.1&cdm=0.0.0.0&next=28.265&query=">
                                <input type="submit" class="search-btn iconfont" value="&#xe616;" />
                            </a>
                            <div class="search-hot-words">
                            </div>
                            <div id="J_keywordList" class="keyword-list hide">
                                <ul class="result-list">
                                </ul>
                            </div>
                        </form>
                    </div>


                    <div id="J_doodleWrapper"></div>
                </div>
                <div id="J_navMenu" class="header-nav-menu" style="display: none;"><div class="container"></div></div>
            </div>
        </div>



    </div>

    <div class="home-hero-container container">
        <div class="home-hero">

            <div class="swiper-container home-hero-swiper swiper-no-swiping" id="J_homeSwiper">

                <div class="swiper-wrapper">

                    <div class="swiper-slide ">
                        <a target="_blank"
                           data-log_code="31pchomepagegallery000001#t=ad&amp;act=other&amp;page=homepage&amp;page_id=10530&amp;bid=3480927.1&amp;adp=3131&amp;adm=28833">

                            <img class="swiper-lazy" src="https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/9d0f9e0184661354b44381b1920f8c01.jpeg?w=2452&amp;h=920" alt="" key="https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/9d0f9e0184661354b44381b1920f8c01.jpeg?w=2452&amp;h=920">

                        </a>
                    </div>

                    <div class="swiper-slide ">
                        <a target="_blank"
                           data-log_code="31pchomepagegallery000001#t=ad&amp;act=other&amp;page=homepage&amp;page_id=10530&amp;bid=3480927.2&amp;adp=3132&amp;adm=28892">

                            <img class="swiper-lazy" data-src="https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/2b6933610dfa42adc25e4adf19ac5450.jpg?w=2452&amp;h=920" alt=""
                                 key="https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/2b6933610dfa42adc25e4adf19ac5450.jpg?w=2452&amp;h=920">

                        </a>
                    </div>

                    <div class="swiper-slide ">
                        <a target="_blank"
                           data-log_code="31pchomepagegallery000001#t=ad&amp;act=product&amp;page=homepage&amp;pid=14031&amp;page_id=10530&amp;bid=3480927.3&amp;adp=4025&amp;adm=28678">

                            <img class="swiper-lazy" data-src="https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/5084e471aa2554867cd1c9bf333a83e4.jpg?w=2452&amp;h=920" alt=""
                                 key="https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/5084e471aa2554867cd1c9bf333a83e4.jpg?w=2452&amp;h=920">

                        </a>
                    </div>

                    <div class="swiper-slide ">
                        <a target="_blank"
                           data-log_code="31pchomepagegallery000001#t=ad&amp;act=product&amp;page=homepage&amp;pid=10000284&amp;page_id=10530&amp;bid=3480927.4&amp;adp=3135&amp;adm=28081">

                            <img class="swiper-lazy" data-src="https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/175b22f0032803f8bdbd94590c8c6629.jpeg?w=2452&amp;h=920" alt=""
                                 key="https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/175b22f0032803f8bdbd94590c8c6629.jpeg?w=2452&amp;h=920">

                        </a>
                    </div>

                    <div class="swiper-slide ">
                        <a target="_blank"
                           data-log_code="31pchomepagegallery000001#t=ad&amp;act=other&amp;page=homepage&amp;page_id=10530&amp;bid=3480927.5&amp;adp=3133&amp;adm=28815">

                            <img class="swiper-lazy" data-src="https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/d2e2db65581b5977e508550ba405c436.jpg?w=2452&amp;h=920" alt=""
                                 key="https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/d2e2db65581b5977e508550ba405c436.jpg?w=2452&amp;h=920">

                        </a>
                    </div>

                    <div class="swiper-slide ">
                        <a target="_blank"
                           data-log_code="31pchomepagegallery000001#t=ad&amp;act=product&amp;page=homepage&amp;pid=14242&amp;page_id=10530&amp;bid=3480927.6&amp;adp=3134&amp;adm=28850">

                            <img class="swiper-lazy" data-src="https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/86430f36ae03c99b9f5156544f50efca.jpg?w=2452&amp;h=920" alt=""
                                 key="https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/86430f36ae03c99b9f5156544f50efca.jpg?w=2452&amp;h=920">

                        </a>
                    </div>

                </div>
                <div class="swiper-pagination"></div>
                <div class="swiper-button-prev"></div>
                <div class="swiper-button-next"></div>

            </div>

            <div class="home-hero-sub row">
                <div class="span4">

                    <ul class="home-channel-list clearfix">

                        <li>
                            <a target="_blank"
                               data-log_code="31pchomepagefeatures_entrance001001#t=normal&amp;act=other&amp;page=homepage&amp;page_id=10530&amp;bid=3480970.1">
                                <img src="https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/82abdba456e8caaea5848a0cddce03db.png?w=48&amp;h=48" alt="小米秒杀">
                                小米秒杀
                            </a>
                        </li>

                        <li>
                            <a target="_blank"
                               data-log_code="31pchomepagefeatures_entrance002001#t=normal&amp;act=webview&amp;page=homepage&amp;page_id=10530&amp;bid=3480970.2">
                                <img src="https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/806f2dfb2d27978e33fe3815d3851fa3.png?w=48&amp;h=48" alt="企业团购">
                                企业团购
                            </a>
                        </li>

                        <li>
                            <a target="_blank"
                               data-log_code="31pchomepagefeatures_entrance003001#t=normal&amp;act=webview&amp;page=homepage&amp;page_id=10530&amp;bid=3480970.3">
                                <img src="https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/eded6fa3b897a058163e2485532c4f10.png?w=48&amp;h=48" alt="F码通道">
                                F码通道
                            </a>
                        </li>

                        <li>
                            <a target="_blank"
                               data-log_code="31pchomepagefeatures_entrance004001#t=normal&amp;act=webview&amp;page=homepage&amp;page_id=10530&amp;bid=3480970.4">
                                <img src="https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/43a3195efa6a3cc7662efed8e7abe8bf.png?w=48&amp;h=48" alt="米粉卡">
                                米粉卡
                            </a>
                        </li>

                        <li>
                            <a target="_blank"
                               data-log_code="31pchomepagefeatures_entrance005001#t=normal&amp;act=other&amp;page=homepage&amp;page_id=10530&amp;bid=3480970.5">
                                <img src="https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/f4846bca6010a0deb9f85464409862af.png?w=48&amp;h=48" alt="以旧换新">
                                以旧换新
                            </a>
                        </li>

                        <li>
                            <a target="_blank"
                               data-log_code="31pchomepagefeatures_entrance006001#t=normal&amp;act=webview&amp;page=homepage&amp;page_id=10530&amp;bid=3480970.6">
                                <img src="https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/9a76d7636b08e0988efb4fc384ae497b.png?w=48&amp;h=48" alt="话费充值">
                                话费充值
                            </a>
                        </li>

                    </ul>

                </div>
                <div class="span16">
                    <ul class="home-promo-list clearfix" id="J_homePromoList">

                        <li class=" first ">
                            <a target="_blank"
                               data-log_code="31pchomepagecells_auto_fill000001#t=ad&amp;act=webview&amp;page=homepage&amp;page_id=10530&amp;bid=3480925.1&amp;adp=3117&amp;adm=26866">
                                <img src="https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/5d4298059889417157e8492750328492.jpg?w=632&amp;h=340" alt="">
                            </a>
                        </li>

                        <li class="">
                            <a target="_blank"
                               data-log_code="31pchomepagecells_auto_fill000001#t=ad&amp;act=webview&amp;page=homepage&amp;page_id=10530&amp;bid=3480925.2&amp;adp=3118&amp;adm=28228">
                                <img src="https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/b30177d629bfbe2fb42251c1b8538f7b.jpg?w=632&amp;h=340" alt="">
                            </a>
                        </li>

                        <li class="">
                            <a target="_blank"
                               data-log_code="31pchomepagecells_auto_fill000001#t=ad&amp;act=product&amp;page=homepage&amp;pid=12931&amp;page_id=10530&amp;bid=3480925.3&amp;adp=3119&amp;adm=24873">
                                <img src="https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/793913688bfaee26b755a0b0cc8575fd.jpg?w=632&amp;h=340" alt="">
                            </a>
                        </li>

                    </ul>
                </div>
            </div>
        </div>
    </div>





</div>
    <script type="text/javascript">
        var IsCategoryToggled = 'toggled';
        var $GLOBAL_HOME = {
            goodsFloorData: [{"view_type":"flash_purchase","body":{"floor_name":"小米秒杀"}},{"view_type":"cells_auto_fill","body":{"bg_color":"","items":[{"path_type":"image","x":0,"y":0,"w":2452,"h":240,"img_url":"https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/431e5fd6bfd1b67d096928248be18303.jpg?w=2452\u0026h=240","action":{"type":"url","path":"https://www.mi.com/redminote9","log_code":"31pchomepagecells_auto_fill001010#t=ad\u0026act=webview\u0026page=homepage\u0026page_id=10530\u0026bid=3480940.1\u0026adp=3136\u0026adm=25750","extra":""}}]}},{"view_type":"list_eight_product","body":{"floor_name":"手机","more_text":"查看更多","action":{"type":"pc_channel","path":"//www.mi.com/p/1915.html","log_code":"31pchomepagelist_eight_product000000#t=normal\u0026act=other\u0026page=homepage\u0026page_id=10530\u0026bid=3480926.2","extra":""},"left_ad":{"type":0,"items":[{"img_url":"https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/c583f2edc613f1be20fa415910b13ce3.jpg?w=468\u0026h=1228","action":{"type":"url","path":"https://www.mi.com/mixfold","log_code":"31pchomepagelist_eight_product000001#t=ad\u0026act=webview\u0026page=homepage\u0026page_id=10530\u0026bid=3480926.1\u0026adp=3120\u0026adm=28087","extra":""}}]},"product_list":[{"img_url":"https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/5dc32ec73299ff79556dcd1cf0f0ac11.png","product_id":13774,"product_name":"小米MIX FOLD","product_brief":"折叠大屏｜自研芯片","product_price":"9999","product_org_price":"9999","show_price_qi":true,"action":{"type":"url","path":"https://www.mi.com/mixfold","log_code":"31pchomepagelist_eight_product000001#t=product\u0026act=webview\u0026page=homepage\u0026page_id=10530\u0026bid=3480926.3\u0026pid=13774","extra":""}},{"img_url":"https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/eb69512d9d6430d865d457ec52eebb51.png","product_id":13649,"product_name":"小米11 Ultra","product_brief":"1.12''GN2｜2K四微曲屏","product_price":"5999","product_org_price":"5999","show_price_qi":true,"action":{"type":"url","path":"https://www.mi.com/mi11ultra","log_code":"31pchomepagelist_eight_product001001#t=product\u0026act=webview\u0026page=homepage\u0026page_id=10530\u0026bid=3480926.4\u0026pid=13649","extra":""}},{"img_url":"https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/34caee2c867bfd8c5e0dc2d8c663e121.jpg","product_id":13650,"product_name":"小米11 Pro","product_brief":"1.12''GN2｜骁龙888","product_price":"4999","product_org_price":"4999","show_price_qi":true,"action":{"type":"url","path":"https://www.mi.com/mi11Pro","log_code":"31pchomepagelist_eight_product002001#t=product\u0026act=webview\u0026page=homepage\u0026page_id=10530\u0026bid=3480926.5\u0026pid=13650","extra":""}},{"img_url":"https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/cb554f30eaa0316b0a736c3d59f21584.png","product_id":13873,"product_name":"小米11 青春版","product_brief":"小米11 青春版 轻薄","product_price":"2299","product_org_price":"2299","show_price_qi":true,"action":{"type":"url","path":"https://www.mi.com/mi11youth","log_code":"31pchomepagelist_eight_product003001#t=product\u0026act=webview\u0026page=homepage\u0026page_id=10530\u0026bid=3480926.6\u0026pid=13873","extra":""}},{"img_url":"https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/3b7fbb6fe07907c60f08358adab5adfe.png","product_id":14031,"product_name":"K40 游戏增强版","product_brief":"轻薄电竞设计","product_price":"1999","product_org_price":"1999","show_price_qi":true,"action":{"type":"product","path":"https://www.mi.com/buy?product_id=14031","log_code":"31pchomepagelist_eight_product004001#t=product\u0026act=product\u0026page=homepage\u0026pid=14031\u0026page_id=10530\u0026bid=3480926.7","extra":""}},{"img_url":"https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/d47f7ecaa04d92bf2790d4a5d53d9099.png","product_id":13812,"product_name":"黑鲨4 Pro","product_brief":"黑鲨4 Pro ","product_price":"3999","product_org_price":"3999","show_price_qi":true,"action":{"type":"product","path":"https://www.mi.com/buy?product_id=13812","log_code":"31pchomepagelist_eight_product005001#t=product\u0026act=product\u0026page=homepage\u0026pid=13812\u0026page_id=10530\u0026bid=3480926.8","extra":""}},{"img_url":"https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/c21247abf4bc610cd86fe00601b0f766.png","product_id":13810,"product_name":"黑鲨4","product_brief":"黑鲨4 磁动力升降肩键","product_price":"2499","product_org_price":"2499","show_price_qi":true,"action":{"type":"product","path":"https://www.mi.com/buy?product_id=13810","log_code":"31pchomepagelist_eight_product006001#t=product\u0026act=product\u0026page=homepage\u0026pid=13810\u0026page_id=10530\u0026bid=3480926.9","extra":""}},{"img_url":"https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/b3553083a4975325eab6470d94465548.jpg","product_id":13588,"product_name":"小米10S","product_brief":"骁龙870 | 对称式双扬立体声","product_price":"3299","product_org_price":"3299","show_price_qi":true,"action":{"type":"url","path":"https://www.mi.com/mi10s","log_code":"31pchomepagelist_eight_product007001#t=product\u0026act=webview\u0026page=homepage\u0026page_id=10530\u0026bid=3480926.10\u0026pid=13588","extra":""}}]}},{"view_type":"cells_auto_fill","body":{"bg_color":"","items":[{"path_type":"image","x":0,"y":0,"w":2452,"h":240,"img_url":"https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/41d16e66381cfeda7b6b39ab67678d5e.jpg?w=2452\u0026h=240","action":{"type":"url","path":"https://www.mi.com/a/h/15707.html","log_code":"31pchomepagecells_auto_fill001012#t=ad\u0026act=webview\u0026page=homepage\u0026page_id=10530\u0026bid=3480941.1\u0026adp=3137\u0026adm=17948","extra":""}}]}},{"view_type":"list_eight_product_tab","body":{"floor_name":"家电","left_ad":{"type":1,"items":[{"img_url":"https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/116fc43816b87192be4e67cf762e8da5.jpeg?w=468\u0026h=600","action":{"type":"url","path":"https://www.mi.com/redmitv/98/","log_code":"31pchomepagelist_eight_product_tab000001#t=ad\u0026act=webview\u0026page=homepage\u0026page_id=10530\u0026bid=3480938.1\u0026adp=3121\u0026adm=21117","extra":""}},{"img_url":"https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/dfbdabe36b2d630d57a015e6fb5eb3ea.jpg?w=468\u0026h=600","action":{"type":"product","path":"https://www.mi.com/buy?product_id=11843","log_code":"31pchomepagelist_eight_product_tab000001#t=ad\u0026act=product\u0026page=homepage\u0026pid=11843\u0026page_id=10530\u0026bid=3480938.2\u0026adp=3122\u0026adm=24187","extra":""}}]},"tab_content":[{"tab_name":"热门","more_text":"浏览更多","product_list":[{"img_url":"https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/03a9e7e96a09d256ca1badeec186c859.jpg","product_id":12849,"product_name":"小米全面屏电视65英寸 E65X","product_brief":"全面屏设计","product_price":"2999","product_org_price":"3299","show_price_qi":false,"action":{"type":"product","path":"https://www.mi.com/buy?product_id=12849","log_code":"31pchomepagelist_eight_product_tab000001#t=product\u0026act=product\u0026page=homepage\u0026pid=12849\u0026page_id=10530\u0026bid=3480938.4","extra":""}},{"img_url":"https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/20d36fbaa18625e4fe507af31e4e9f83.jpg","product_id":12045,"product_name":"全面屏电视E43K","product_brief":"全面屏设计，海量内容","product_price":"1399","product_org_price":"1599","show_price_qi":false,"action":{"type":"product","path":"https://www.mi.com/buy?product_id=12045","log_code":"31pchomepagelist_eight_product_tab001001#t=product\u0026act=product\u0026page=homepage\u0026pid=12045\u0026page_id=10530\u0026bid=3480938.5","extra":""}},{"img_url":"https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/9d8674cd21c486feff5328772ab9cf01.jpg","product_id":10764,"product_name":"小米电视4A 70英寸\t","product_brief":"大屏更享受","product_price":"3499","product_org_price":"3999","show_price_qi":false,"action":{"type":"product","path":"https://www.mi.com/buy?product_id=10764","log_code":"31pchomepagelist_eight_product_tab002001#t=product\u0026act=product\u0026page=homepage\u0026pid=10764\u0026page_id=10530\u0026bid=3480938.6","extra":""}},{"img_url":"https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/6bed167fc905bab57dee478bcf1e5e0d.JPG","product_id":13168,"product_name":"米家互联网对开门冰箱 540L","product_brief":"重磅新品福利特惠","product_price":"2899","product_org_price":"3699","show_price_qi":false,"action":{"type":"product","path":"https://www.mi.com/buy?product_id=13168","log_code":"31pchomepagelist_eight_product_tab003001#t=product\u0026act=product\u0026page=homepage\u0026pid=13168\u0026page_id=10530\u0026bid=3480938.7","extra":""}},{"img_url":"https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/b8c63a2024528fe5410ebe669b7d2407.jpg","product_id":9509,"product_name":"Redmi全自动波轮洗衣机1A 8kg","product_brief":"一键操作，父母都爱用","product_price":"799","product_org_price":"899","show_price_qi":false,"action":{"type":"product","path":"https://www.mi.com/buy?product_id=9509","log_code":"31pchomepagelist_eight_product_tab004001#t=product\u0026act=product\u0026page=homepage\u0026pid=9509\u0026page_id=10530\u0026bid=3480938.8","extra":""}},{"img_url":"https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/7e5f89adf98ab3fccb34012b5209cd58.jpg","product_id":9861,"product_name":"米家互联网烟灶套装（天然气）","product_brief":"点火排烟，风随火动","product_price":"2298","product_org_price":"2298","show_price_qi":false,"action":{"type":"product","path":"https://www.mi.com/buy?product_id=9861","log_code":"31pchomepagelist_eight_product_tab005001#t=product\u0026act=product\u0026page=homepage\u0026pid=9861\u0026page_id=10530\u0026bid=3480938.9","extra":""}},{"img_url":"https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/1612c93ad4756215774a0dbec7a81bb2.jpg","product_id":9866,"product_name":"米家电烤箱","product_brief":"全能烘焙体验","product_price":"299","product_org_price":"299","show_price_qi":false,"action":{"type":"product","path":"https://www.mi.com/buy?product_id=9866","log_code":"31pchomepagelist_eight_product_tab006001#t=product\u0026act=product\u0026page=homepage\u0026pid=9866\u0026page_id=10530\u0026bid=3480938.10","extra":""}},{"img_url":"http://i8.mifile.cn/v1/a1/d5a39c5e-28e7-f4c1-57fd-59933f26032b.jpg","product_id":7229,"product_name":"小米米家空气净化器 2S","product_brief":"好空气看得见","product_price":"699","product_org_price":"899","show_price_qi":false,"action":{"type":"url","path":"https://www.mi.com/air2s/","log_code":"31pchomepagelist_eight_product_tab007001#t=product\u0026act=webview\u0026page=homepage\u0026page_id=10530\u0026bid=3480938.11\u0026pid=7229","extra":""}}],"action":{"type":"pc_channel","path":"//www.mi.com/p/3469.html","log_code":"31pchomepagelist_eight_product_tab000000#t=normal\u0026act=other\u0026page=homepage\u0026page_id=10530\u0026bid=3480938.3","extra":""}},{"tab_name":"电视影音","more_text":"浏览更多","product_list":[{"img_url":"https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/20d36fbaa18625e4fe507af31e4e9f83.jpg","product_id":12045,"product_name":"全面屏电视E43K","product_brief":"全面屏设计，海量内容","product_price":"1399","product_org_price":"1599","show_price_qi":false,"action":{"type":"product","path":"https://www.mi.com/buy?product_id=12045","log_code":"31pchomepagelist_eight_product_tab000001#t=product\u0026act=product\u0026page=homepage\u0026pid=12045\u0026page_id=10530\u0026bid=3480938.13","extra":""}},{"img_url":"https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/f193daba3989eadac5e13ae102b91582.jpg","product_id":10909,"product_name":"全面屏电视 55英寸E55X","product_brief":"潮流全面屏设计","product_price":"2399","product_org_price":"2599","show_price_qi":false,"action":{"type":"product","path":"https://www.mi.com/buy?product_id=10909","log_code":"31pchomepagelist_eight_product_tab001001#t=product\u0026act=product\u0026page=homepage\u0026pid=10909\u0026page_id=10530\u0026bid=3480938.14","extra":""}},{"img_url":"https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/ecbe6a6c0d4950b78b086d7ada654e3b.jpg","product_id":11843,"product_name":"小米电视4A 60英寸","product_brief":"人工智能语音系统,超高清画质","product_price":"2799","product_org_price":"2799","show_price_qi":false,"action":{"type":"product","path":"https://www.mi.com/buy?product_id=11843","log_code":"31pchomepagelist_eight_product_tab002001#t=product\u0026act=product\u0026page=homepage\u0026pid=11843\u0026page_id=10530\u0026bid=3480938.15","extra":""}},{"img_url":"https://cdn.cnbj0.fds.api.mi-img.com/b2c-mimall-media/7e2127506fd2209f3115828404269d45.jpg","product_id":8993,"product_name":"小米电视4S 75英寸","product_brief":"4K HDR，人工智能语音","product_price":"4599","product_org_price":"5999","show_price_qi":false,"action":{"type":"url","path":"https://www.mi.com/mitv4s/75/","log_code":"31pchomepagelist_eight_product_tab003001#t=product\u0026act=webview\u0026page=homepage\u0026page_id=10530\u0026bid=3480938.16\u0026pid=8993","extra":""}},{"img_url":"https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/03a9e7e96a09d256ca1badeec186c859.jpg","product_id":12849,"product_name":"小米全面屏电视65英寸 E65X","product_brief":"全面屏设计","product_price":"2999","product_org_price":"3299","show_price_qi":false,"action":{"type":"product","path":"https://www.mi.com/buy?product_id=12849","log_code":"31pchomepagelist_eight_product_tab004001#t=product\u0026act=product\u0026page=homepage\u0026pid=12849\u0026page_id=10530\u0026bid=3480938.17","extra":""}},{"img_url":"https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/8b3fe3a07ef69fb4c959e39c768c7525.jpg","product_id":10126,"product_name":"小米全面屏电视E32C","product_brief":"全面屏设计，人工智能系统","product_price":"949","product_org_price":"1099","show_price_qi":false,"action":{"type":"url","path":"https://www.mi.com/mitvall-screen/e32c/","log_code":"31pchomepagelist_eight_product_tab005001#t=product\u0026act=webview\u0026page=homepage\u0026page_id=10530\u0026bid=3480938.18\u0026pid=10126","extra":""}},{"img_url":"https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/f674ced205c2e81125dfd2d6659aabfc.jpg","product_id":12809,"product_name":"Redmi智能电视A55","product_brief":"澎湃音效影院级体验","product_price":"2188","product_org_price":"2199","show_price_qi":false,"action":{"type":"product","path":"https://www.mi.com/buy?product_id=12809","log_code":"31pchomepagelist_eight_product_tab006001#t=product\u0026act=product\u0026page=homepage\u0026pid=12809\u0026page_id=10530\u0026bid=3480938.19","extra":""}},{"img_url":"https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/8861fafd390bf76f7446d4db2053560f.jpg","product_id":11814,"product_name":"Redmi 智能电视 MAX 98''","product_brief":"客厅里的巨幕影院","product_price":"19999","product_org_price":"19999","show_price_qi":false,"action":{"type":"url","path":"https://www.mi.com/redmitv/98/","log_code":"31pchomepagelist_eight_product_tab007001#t=product\u0026act=webview\u0026page=homepage\u0026page_id=10530\u0026bid=3480938.20\u0026pid=11814","extra":""}}],"action":{"type":"pc_activity","path":"//www.mi.com/a/h/15707.html","log_code":"31pchomepagelist_eight_product_tab000000#t=normal\u0026act=other\u0026page=homepage\u0026page_id=10530\u0026bid=3480938.12","extra":""}}]}},{"view_type":"cells_auto_fill","body":{"bg_color":"","items":[{"path_type":"image","x":0,"y":0,"w":2452,"h":240,"img_url":"https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/59e8fc8ba9718c266882719fb4bbcedd.jpg?w=2452\u0026h=240","action":{"type":"product","path":"https://www.mi.com/buy?product_id=10025","log_code":"31pchomepagecells_auto_fill001014#t=ad\u0026act=product\u0026page=homepage\u0026pid=10025\u0026page_id=10530\u0026bid=3480942.1\u0026adp=3138\u0026adm=13608","extra":""}}]}},{"view_type":"list_eight_product_tab","body":{"floor_name":"智能","left_ad":{"type":1,"items":[{"img_url":"https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/ffe114f73fac3a45e5622c3eff56106b.jpg?w=468\u0026h=600","action":{"type":"product","path":"https://www.mi.com/buy?product_id=12212","log_code":"31pchomepagelist_eight_product_tab000001#t=ad\u0026act=product\u0026page=homepage\u0026pid=12212\u0026page_id=10530\u0026bid=3480939.1\u0026adp=3123\u0026adm=26604","extra":""}},{"img_url":"https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/a660ce095e8f553a9ed1515265f4e9fc.jpg?w=468\u0026h=600","action":{"type":"product","path":"https://www.mi.com/buy?product_id=9285","log_code":"31pchomepagelist_eight_product_tab000001#t=ad\u0026act=product\u0026page=homepage\u0026pid=9285\u0026page_id=10530\u0026bid=3480939.2\u0026adp=3124\u0026adm=13599","extra":""}}]},"tab_content":[{"tab_name":"热门","more_text":"浏览更多","product_list":[{"img_url":"https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/e7c6e79433c883e1a022ec21402c1679.jpg","product_id":10015,"product_name":"小米小爱音箱 Play","product_brief":"听音乐、语音遥控家电","product_price":"109","product_org_price":"169","show_price_qi":false,"action":{"type":"url","path":"https://www.mi.com/aispeaker-play/","log_code":"31pchomepagelist_eight_product_tab000001#t=product\u0026act=webview\u0026page=homepage\u0026page_id=10530\u0026bid=3480939.4\u0026pid=10015","extra":""}},{"img_url":"https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/3accd497afc0047cfbd40f442e3b17df.jpg","product_id":12274,"product_name":"米家智能窗帘","product_brief":"窗帘开合随心控","product_price":"799","product_org_price":"799","show_price_qi":false,"action":{"type":"product","path":"https://www.mi.com/buy?product_id=12274","log_code":"31pchomepagelist_eight_product_tab001001#t=product\u0026act=product\u0026page=homepage\u0026pid=12274\u0026page_id=10530\u0026bid=3480939.5","extra":""}},{"img_url":"https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/550177d2e54387521bce9e78cb2949dd.jpg","product_id":9686,"product_name":"小米体脂秤2","product_brief":"轻松掌握身体脂肪率","product_price":"99","product_org_price":"99","show_price_qi":false,"action":{"type":"product","path":"https://www.mi.com/buy?product_id=9686","log_code":"31pchomepagelist_eight_product_tab002001#t=product\u0026act=product\u0026page=homepage\u0026pid=9686\u0026page_id=10530\u0026bid=3480939.6","extra":""}},{"img_url":"http://cdn.cnbj0.fds.api.mi-img.com/b2c-miapp-a1/T1r_x_BgLT1RXrhCrK.jpg","product_id":2774,"product_name":"九号平衡车","product_brief":"年轻人的酷玩具","product_price":"1999","product_org_price":"1999","show_price_qi":false,"action":{"type":"url","path":"https://www.mi.com/scooter/","log_code":"31pchomepagelist_eight_product_tab003001#t=product\u0026act=webview\u0026page=homepage\u0026page_id=10530\u0026bid=3480939.7\u0026pid=2774","extra":""}},{"img_url":"https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/5a312d69c1a5447c9e3d14d42d01a8fb.jpg","product_id":10025,"product_name":"小米智能门锁 推拉式","product_brief":"一步推拉，高端智能门锁","product_price":"1699","product_org_price":"1699","show_price_qi":false,"action":{"type":"product","path":"https://www.mi.com/buy?product_id=10025","log_code":"31pchomepagelist_eight_product_tab004001#t=product\u0026act=product\u0026page=homepage\u0026pid=10025\u0026page_id=10530\u0026bid=3480939.8","extra":""}},{"img_url":"https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/49f30069c778b494257320d9da5a1a60.jpg","product_id":11810,"product_name":"Redmi小爱触屏音箱 8英寸","product_brief":"超大屏，让智能更多可能","product_price":"349","product_org_price":"349","show_price_qi":false,"action":{"type":"url","path":"https://www.mi.com/redmi-xai","log_code":"31pchomepagelist_eight_product_tab005001#t=product\u0026act=webview\u0026page=homepage\u0026page_id=10530\u0026bid=3480939.9\u0026pid=11810","extra":""}},{"img_url":"https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/ec0ec7692ba005710d1887262559609c.jpg","product_id":10000238,"product_name":"小米手环5","product_brief":"11种运动模式 磁吸式充电","product_price":"179","product_org_price":"189","show_price_qi":true,"action":{"type":"url","path":"https://www.mi.com/shouhuan5/all","log_code":"31pchomepagelist_eight_product_tab006001#t=product\u0026act=webview\u0026page=homepage\u0026page_id=10530\u0026bid=3480939.10\u0026pid=10000238","extra":""}},{"img_url":"https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/f10b003b4ff46c59f5736e8f324af034.jpg","product_id":4802,"product_name":"米家空气净化器Pro","product_brief":"大空间，快循环","product_price":"1099","product_org_price":"1499","show_price_qi":false,"action":{"type":"url","path":"https://www.mi.com/airpro","log_code":"31pchomepagelist_eight_product_tab007001#t=product\u0026act=webview\u0026page=homepage\u0026page_id=10530\u0026bid=3480939.11\u0026pid=4802","extra":""}}],"action":{"type":"pc_channel","path":"//www.mi.com/p/3469.html","log_code":"31pchomepagelist_eight_product_tab000000#t=normal\u0026act=other\u0026page=homepage\u0026page_id=10530\u0026bid=3480939.3","extra":""}},{"tab_name":"安防","more_text":"浏览更多","product_list":[{"img_url":"https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/0baacf6e54cbf89cab2c543cc02344e9.jpg","product_id":10025,"product_name":"米家智能门锁 推拉式 通用版","product_brief":"一步推拉，高端智能门锁","product_price":"1699","product_org_price":"1699","show_price_qi":false,"action":{"type":"product","path":"https://www.mi.com/buy?product_id=10025","log_code":"31pchomepagelist_eight_product_tab000001#t=product\u0026act=product\u0026page=homepage\u0026pid=10025\u0026page_id=10530\u0026bid=3480939.13","extra":""}},{"img_url":"https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/0245498a0e08b87ba8c323871c5d48bc.jpg","product_id":10345,"product_name":"米家智能门锁 青春版","product_brief":"隐形指纹识别设计 简单一步快进家门","product_price":"999","product_org_price":"999","show_price_qi":false,"action":{"type":"product","path":"https://www.mi.com/buy?product_id=10345","log_code":"31pchomepagelist_eight_product_tab001001#t=product\u0026act=product\u0026page=homepage\u0026pid=10345\u0026page_id=10530\u0026bid=3480939.14","extra":""}},{"img_url":"https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/e83e1ab5947337d7b631e056b3e0f23d.jpg","product_id":9850,"product_name":"米家智能门锁 霸王锁体 碳素黑","product_brief":"一体化活体指纹识别，多种开锁方式","product_price":"1599","product_org_price":"1599","show_price_qi":false,"action":{"type":"url","path":"https://www.mi.com/mj-smartlock-bawang","log_code":"31pchomepagelist_eight_product_tab002001#t=product\u0026act=webview\u0026page=homepage\u0026page_id=10530\u0026bid=3480939.15\u0026pid=9850","extra":""}},{"img_url":"https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/fa7cdb455f106da904e8c3f6156abc06.jpg","product_id":10304,"product_name":"米家智能门锁 霸王锁体 磨砂金","product_brief":"适配霸王锁体，多种开锁方式","product_price":"1799","product_org_price":"1799","show_price_qi":false,"action":{"type":"url","path":"https://www.mi.com/mj-smartlock-bawang","log_code":"31pchomepagelist_eight_product_tab003001#t=product\u0026act=webview\u0026page=homepage\u0026page_id=10530\u0026bid=3480939.16\u0026pid=10304","extra":""}}],"action":{"type":"pc_channel","path":"//www.mi.com/p/3469.html","log_code":"31pchomepagelist_eight_product_tab000000#t=normal\u0026act=other\u0026page=homepage\u0026page_id=10530\u0026bid=3480939.12","extra":""}},{"tab_name":"出行","more_text":"浏览更多","product_list":[{"img_url":"https://i8.mifile.cn/b2c-mimall-media/18a82e7cda6ecbc22ecee7ac927d6ff9.jpg","product_id":9029,"product_name":"米兔折叠婴儿推车","product_brief":"出发去向往的地方","product_price":"699","product_org_price":"699","show_price_qi":false,"action":{"type":"url","path":"https://www.mi.com/babyfoldingcar/","log_code":"31pchomepagelist_eight_product_tab000001#t=product\u0026act=webview\u0026page=homepage\u0026page_id=10530\u0026bid=3480939.18\u0026pid=9029","extra":""}},{"img_url":"http://i8.mifile.cn/v1/a1/877d3ce8-68ab-7506-2a78-55a8c0fba946.png","product_id":6079,"product_name":"九号平衡车 Plus","product_brief":"一个形影不离的新伙伴","product_price":"3499","product_org_price":"3499","show_price_qi":false,"action":{"type":"url","path":"https://www.mi.com/scooterplus/","log_code":"31pchomepagelist_eight_product_tab001001#t=product\u0026act=webview\u0026page=homepage\u0026page_id=10530\u0026bid=3480939.19\u0026pid=6079","extra":""}},{"img_url":"https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/0294e2f3997bf0cffb7bf48361d03588.jpg","product_id":9613,"product_name":"米家充气宝","product_brief":"便携电动打气筒","product_price":"199","product_org_price":"199","show_price_qi":false,"action":{"type":"product","path":"https://www.mi.com/buy?product_id=9613","log_code":"31pchomepagelist_eight_product_tab002001#t=product\u0026act=product\u0026page=homepage\u0026pid=9613\u0026page_id=10530\u0026bid=3480939.20","extra":""}},{"img_url":"https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/12fe0ea5e8dafecce5ffa65108796683.jpg","product_id":11674,"product_name":"小米小背包","product_brief":"城市休闲，简约设计","product_price":"29","product_org_price":"29","show_price_qi":true,"action":{"type":"product","path":"https://www.mi.com/buy?product_id=11674","log_code":"31pchomepagelist_eight_product_tab003001#t=product\u0026act=product\u0026page=homepage\u0026pid=11674\u0026page_id=10530\u0026bid=3480939.21","extra":""}},{"img_url":"https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/5b4304d0e62a9c874e83eba0649110ee.jpg","product_id":9560,"product_name":"小米旅行箱 青春款","product_brief":"环保材料，轻便重量","product_price":"199","product_org_price":"199","show_price_qi":true,"action":{"type":"product","path":"https://www.mi.com/buy?product_id=9560","log_code":"31pchomepagelist_eight_product_tab004001#t=product\u0026act=product\u0026page=homepage\u0026pid=9560\u0026page_id=10530\u0026bid=3480939.22","extra":""}},{"img_url":"https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/3520b7c57449585bc3185d31b9d9bd08.jpg","product_id":11368,"product_name":"骑记电动助力自行车 新国标版 黑色","product_brief":"更多助力选择，更多城市风景","product_price":"2999","product_org_price":"2999","show_price_qi":false,"action":{"type":"product","path":"https://www.mi.com/buy?product_id=11368","log_code":"31pchomepagelist_eight_product_tab005001#t=product\u0026act=product\u0026page=homepage\u0026pid=11368\u0026page_id=10530\u0026bid=3480939.23","extra":""}},{"img_url":"https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/d86c1eb8f5525bc4c76c8e0e98db7446.jpg","product_id":9550,"product_name":"小米米家对讲机2","product_brief":"向更远出发","product_price":"449","product_org_price":"449","show_price_qi":false,"action":{"type":"product","path":"https://www.mi.com/buy?product_id=9550","log_code":"31pchomepagelist_eight_product_tab006001#t=product\u0026act=product\u0026page=homepage\u0026pid=9550\u0026page_id=10530\u0026bid=3480939.24","extra":""}},{"img_url":"http://cdn.cnbj0.fds.api.mi-img.com/b2c-miapp-a1/T1r_x_BgLT1RXrhCrK.jpg","product_id":2774,"product_name":"九号平衡车","product_brief":"年轻人的酷玩具","product_price":"1999","product_org_price":"1999","show_price_qi":false,"action":{"type":"url","path":"https://www.mi.com/scooter/","log_code":"31pchomepagelist_eight_product_tab007001#t=product\u0026act=webview\u0026page=homepage\u0026page_id=10530\u0026bid=3480939.25\u0026pid=2774","extra":""}}],"action":{"type":"pc_channel","path":"//www.mi.com/p/3469.html","log_code":"31pchomepagelist_eight_product_tab000000#t=normal\u0026act=other\u0026page=homepage\u0026page_id=10530\u0026bid=3480939.17","extra":""}}]}},{"view_type":"cells_auto_fill","body":{"bg_color":"","items":[{"path_type":"image","x":0,"y":0,"w":2452,"h":240,"img_url":"https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/7caa687b3298f54dc17eb24f9e95cdf5.jpg?w=2452\u0026h=240","action":{"type":"pc_activity","path":"//www.mi.com/a/h/20392.html?sign=88330911106385f578812753da19c10e","log_code":"31pchomepagecells_auto_fill001016#t=ad\u0026act=other\u0026page=homepage\u0026page_id=10530\u0026bid=3480943.1\u0026adp=3139\u0026adm=28777","extra":"{\"sign\":\"88330911106385f578812753da19c10e\"}"}}]}},{"view_type":"list_eight_product_tab","body":{"floor_name":"搭配","left_ad":{"type":1,"items":[{"img_url":"https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/6874615b3c50e837ffe532eb6ea4ef1a.jpg?w=468\u0026h=600","action":{"type":"url","path":"https://www.mi.com/scooter/","log_code":"31pchomepagelist_eight_product_tab000001#t=ad\u0026act=webview\u0026page=homepage\u0026page_id=10530\u0026bid=3480944.1\u0026adp=3125\u0026adm=13600","extra":""}},{"img_url":"https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/9f6c89cf21efc23799f6130224cef007.jpg?w=468\u0026h=600","action":{"type":"product","path":"https://www.mi.com/buy?product_id=13414","log_code":"31pchomepagelist_eight_product_tab000001#t=ad\u0026act=product\u0026page=homepage\u0026pid=13414\u0026page_id=10530\u0026bid=3480944.2\u0026adp=3126\u0026adm=26658","extra":""}}]},"tab_content":[{"tab_name":"热门","more_text":"浏览更多","product_list":[{"img_url":"https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/5fc35cf0af915a9e60f5d4ea220521ab.jpg","product_id":12899,"product_name":" 小米真无线蓝牙耳机Air 2 Pro","product_brief":" 主动降噪/持久续航/无线充","product_price":"649","product_org_price":"699","show_price_qi":false,"action":{"type":"product","path":"https://www.mi.com/buy?product_id=12899","log_code":"31pchomepagelist_eight_product_tab000001#t=product\u0026act=product\u0026page=homepage\u0026pid=12899\u0026page_id=10530\u0026bid=3480944.4","extra":""}},{"img_url":"https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/9eb0178e3bfeb7d170edd641fb4be4bc.jpg","product_id":9311,"product_name":"高速无线充套装","product_brief":"快速无线闪充，Qi充电标准","product_price":"149","product_org_price":"149","show_price_qi":false,"action":{"type":"product","path":"https://www.mi.com/buy?product_id=9311","log_code":"31pchomepagelist_eight_product_tab001001#t=product\u0026act=product\u0026page=homepage\u0026pid=9311\u0026page_id=10530\u0026bid=3480944.5","extra":""}},{"img_url":"https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/7d9e8308f5f55bfa69c5c7fadc7cb4aa.jpg","product_id":12479,"product_name":"Redmi AirDots 2真无线蓝牙耳机","product_brief":"支持蓝牙5.0，自动秒连，拿起就能用","product_price":"99","product_org_price":"99","show_price_qi":false,"action":{"type":"product","path":"https://www.mi.com/buy?product_id=12479","log_code":"31pchomepagelist_eight_product_tab002001#t=product\u0026act=product\u0026page=homepage\u0026pid=12479\u0026page_id=10530\u0026bid=3480944.6","extra":""}},{"img_url":"https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/c6306bf6d8aede9f6f48d8e4d9256db2.jpg","product_id":11821,"product_name":"小米真无线蓝牙耳机Air 2s","product_brief":"全面升级，智慧真无线","product_price":"359","product_org_price":"399","show_price_qi":false,"action":{"type":"product","path":"https://www.mi.com/buy?product_id=11821","log_code":"31pchomepagelist_eight_product_tab003001#t=product\u0026act=product\u0026page=homepage\u0026pid=11821\u0026page_id=10530\u0026bid=3480944.7","extra":""}},{"img_url":"https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/ea8e42faebf7d76a4cb42b8930cf9e46.jpg","product_id":10317,"product_name":"Redmi充电宝 10000mAh 标准版 白色","product_brief":"10000mAh大电量 ","product_price":"59","product_org_price":"59","show_price_qi":false,"action":{"type":"product","path":"https://www.mi.com/buy?product_id=10317","log_code":"31pchomepagelist_eight_product_tab004001#t=product\u0026act=product\u0026page=homepage\u0026pid=10317\u0026page_id=10530\u0026bid=3480944.8","extra":""}},{"img_url":"https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/eaf70e0e9905de6452f07b1f48fcc386.jpg","product_id":10318,"product_name":"Redmi充电宝 20000mAh 快充版","product_brief":"大容量，\t可上飞机 ","product_price":"99","product_org_price":"99","show_price_qi":false,"action":{"type":"product","path":"https://www.mi.com/buy?product_id=10318","log_code":"31pchomepagelist_eight_product_tab005001#t=product\u0026act=product\u0026page=homepage\u0026pid=10318\u0026page_id=10530\u0026bid=3480944.9","extra":""}},{"img_url":"http://i8.mifile.cn/v1/a1/5dd69c0a-8f4a-b42f-d840-6c5a47f2cd03.jpg","product_id":5857,"product_name":"小米插线板 5孔位","product_brief":"多重安全保护","product_price":"39","product_org_price":"39","show_price_qi":false,"action":{"type":"product","path":"https://www.mi.com/buy?product_id=5857","log_code":"31pchomepagelist_eight_product_tab006001#t=product\u0026act=product\u0026page=homepage\u0026pid=5857\u0026page_id=10530\u0026bid=3480944.10","extra":""}},{"img_url":"https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/9946e252a7c49662376c056ced004a20.jpg","product_id":9334,"product_name":"小米小爱触屏音箱","product_brief":"好听，更好看","product_price":"249","product_org_price":"249","show_price_qi":false,"action":{"type":"url","path":"https://www.mi.com/aispeaker-touch/","log_code":"31pchomepagelist_eight_product_tab007001#t=product\u0026act=webview\u0026page=homepage\u0026page_id=10530\u0026bid=3480944.11\u0026pid=9334","extra":""}}],"action":{"type":"pc_channel","path":"//www.mi.com/p/3469.html","log_code":"31pchomepagelist_eight_product_tab000000#t=normal\u0026act=other\u0026page=homepage\u0026page_id=10530\u0026bid=3480944.3","extra":""}},{"tab_name":"耳机音箱","more_text":"浏览更多","product_list":[{"img_url":"https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/7d9e8308f5f55bfa69c5c7fadc7cb4aa.jpg","product_id":12479,"product_name":"Redmi AirDots 2真无线蓝牙耳机","product_brief":"支持蓝牙5.0，自动秒连，拿起就能用","product_price":"99","product_org_price":"99","show_price_qi":false,"action":{"type":"product","path":"https://www.mi.com/buy?product_id=12479","log_code":"31pchomepagelist_eight_product_tab000001#t=product\u0026act=product\u0026page=homepage\u0026pid=12479\u0026page_id=10530\u0026bid=3480944.13","extra":""}},{"img_url":"https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/c6306bf6d8aede9f6f48d8e4d9256db2.jpg","product_id":11821,"product_name":"小米真无线蓝牙耳机Air 2s","product_brief":"全面升级，智慧真无线","product_price":"359","product_org_price":"399","show_price_qi":false,"action":{"type":"product","path":"https://www.mi.com/buy?product_id=11821","log_code":"31pchomepagelist_eight_product_tab001001#t=product\u0026act=product\u0026page=homepage\u0026pid=11821\u0026page_id=10530\u0026bid=3480944.14","extra":""}},{"img_url":"https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/faf8668acb2fd80c0afad4d4c4e837ad.jpg","product_id":10316,"product_name":"小米降噪项圈蓝牙耳机","product_brief":"无线降噪，静无止境","product_price":"399","product_org_price":"499","show_price_qi":false,"action":{"type":"product","path":"https://www.mi.com/buy?product_id=10316","log_code":"31pchomepagelist_eight_product_tab002001#t=product\u0026act=product\u0026page=homepage\u0026pid=10316\u0026page_id=10530\u0026bid=3480944.15","extra":""}},{"img_url":"https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/8b619d27877bbc497468c673a317a847.jpg","product_id":10745,"product_name":"小米小爱音箱 Pro","product_brief":"语音遥控5000+品牌主流家电","product_price":"299","product_org_price":"299","show_price_qi":false,"action":{"type":"product","path":"https://www.mi.com/buy?product_id=10745","log_code":"31pchomepagelist_eight_product_tab003001#t=product\u0026act=product\u0026page=homepage\u0026pid=10745\u0026page_id=10530\u0026bid=3480944.16","extra":""}},{"img_url":"https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/1ab7943ae5215e0faacb04f7270d9cfb.jpg","product_id":13032,"product_name":"小米小爱音箱 Art 电池版","product_brief":"不插电，让音乐更自由","product_price":"399","product_org_price":"399","show_price_qi":false,"action":{"type":"product","path":"https://www.mi.com/buy?product_id=13032","log_code":"31pchomepagelist_eight_product_tab004001#t=product\u0026act=product\u0026page=homepage\u0026pid=13032\u0026page_id=10530\u0026bid=3480944.17","extra":""}},{"img_url":"https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/1c278ccaa2a2b7e0ab9b294a3a0ec32b.jpg","product_id":12050,"product_name":"小米小爱音箱 Art","product_brief":"极光下的声音艺术","product_price":"349","product_org_price":"349","show_price_qi":false,"action":{"type":"url","path":"http://www.mi.com/aispeaker-art","log_code":"31pchomepagelist_eight_product_tab005001#t=product\u0026act=webview\u0026page=homepage\u0026page_id=10530\u0026bid=3480944.18\u0026pid=12050","extra":""}},{"img_url":"https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/e13900c094ae4ac4eb53b35f2d0c95b0.jpg","product_id":10744,"product_name":"小米小爱音箱 ","product_brief":"全面升级 旗舰音质","product_price":"249","product_org_price":"269","show_price_qi":false,"action":{"type":"product","path":"https://www.mi.com/buy?product_id=10744","log_code":"31pchomepagelist_eight_product_tab006001#t=product\u0026act=product\u0026page=homepage\u0026pid=10744\u0026page_id=10530\u0026bid=3480944.19","extra":""}},{"img_url":"http://cdn.cnbj0.fds.api.mi-img.com/b2c-miapp-a1/b474f7bb-10e1-ee92-f78f-d87231b0726a.jpg","product_id":6334,"product_name":"小米AI音箱","product_brief":"听音乐、语音遥控家电","product_price":"229","product_org_price":"299","show_price_qi":false,"action":{"type":"url","path":"https://www.mi.com/aispeaker/","log_code":"31pchomepagelist_eight_product_tab007001#t=product\u0026act=webview\u0026page=homepage\u0026page_id=10530\u0026bid=3480944.20\u0026pid=6334","extra":""}}],"action":{"type":"pc_channel","path":"//www.mi.com/p/3469.html","log_code":"31pchomepagelist_eight_product_tab000000#t=normal\u0026act=other\u0026page=homepage\u0026page_id=10530\u0026bid=3480944.12","extra":""}}]}},{"view_type":"cells_auto_fill","body":{"bg_color":"","items":[{"path_type":"image","x":0,"y":0,"w":2452,"h":240,"img_url":"https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/89c2a209b742fce9b10d9d196149d634.jpg?w=2452\u0026h=240","action":{"type":"url","path":"https://www.mi.com/airconditionc1/v1c1","log_code":"31pchomepagecells_auto_fill001018#t=ad\u0026act=webview\u0026page=homepage\u0026page_id=10530\u0026bid=3480945.1\u0026adp=3140\u0026adm=13610","extra":""}}]}},{"view_type":"list_eight_product_tab","body":{"floor_name":"配件","left_ad":{"type":1,"items":[{"img_url":"https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/9f64bbd58c3f5001bdf0688894f22cb6.jpg?w=468\u0026h=600","action":{"type":"product","path":"https://www.mi.com/buy?product_id=12404","log_code":"31pchomepagelist_eight_product_tab000001#t=ad\u0026act=product\u0026page=homepage\u0026pid=12404\u0026page_id=10530\u0026bid=3480946.1\u0026adp=3127\u0026adm=25060","extra":""}},{"img_url":"https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/ffe4182f1d9a5befdf2380ec90ae1620.jpg?w=468\u0026h=600","action":{"type":"url","path":"https://www.mi.com/dispenser/","log_code":"31pchomepagelist_eight_product_tab000001#t=ad\u0026act=webview\u0026page=homepage\u0026page_id=10530\u0026bid=3480946.2\u0026adp=3128\u0026adm=13603","extra":""}}]},"tab_content":[{"tab_name":"热门","more_text":"浏览更多","product_list":[{"img_url":"https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/f8fde8a877fd4b12ad88119d9b6bc061.jpg","product_id":11543,"product_name":"小米氮化镓GaN充电器 Type-C 65W ","product_brief":"氮化镓黑科技 65W MAX 大功率快充","product_price":"149","product_org_price":"149","show_price_qi":false,"action":{"type":"product","path":"https://www.mi.com/buy?product_id=11543","log_code":"31pchomepagelist_eight_product_tab000001#t=product\u0026act=product\u0026page=homepage\u0026pid=11543\u0026page_id=10530\u0026bid=3480946.4","extra":""}},{"img_url":"https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/9eb0178e3bfeb7d170edd641fb4be4bc.jpg","product_id":9311,"product_name":"高速无线充套装","product_brief":"快速无线闪充，Qi充电标准","product_price":"149","product_org_price":"149","show_price_qi":false,"action":{"type":"product","path":"https://www.mi.com/buy?product_id=9311","log_code":"31pchomepagelist_eight_product_tab001001#t=product\u0026act=product\u0026page=homepage\u0026pid=9311\u0026page_id=10530\u0026bid=3480946.5","extra":""}},{"img_url":"https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/1f32af53d1ad60f4980146f6a2b81019.jpg","product_id":10721,"product_name":"小米无线充电宝青春版10000mAh","product_brief":"能量满满，无线有线都能充","product_price":"129","product_org_price":"129","show_price_qi":false,"action":{"type":"product","path":"https://www.mi.com/buy?product_id=10721","log_code":"31pchomepagelist_eight_product_tab002001#t=product\u0026act=product\u0026page=homepage\u0026pid=10721\u0026page_id=10530\u0026bid=3480946.6","extra":""}},{"img_url":"https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/01dba858b327eeeadf34ce8a1d794ed4.jpg","product_id":12282,"product_name":"小米车载充电器快充版","product_brief":"双口快充，安全稳定","product_price":"69","product_org_price":"69","show_price_qi":false,"action":{"type":"product","path":"https://www.mi.com/buy?product_id=12282","log_code":"31pchomepagelist_eight_product_tab003001#t=product\u0026act=product\u0026page=homepage\u0026pid=12282\u0026page_id=10530\u0026bid=3480946.7","extra":""}},{"img_url":"https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/573e9cb39b0d8c7f2cd063621142fe44.jpg","product_id":11859,"product_name":"小米Type-C转Lightning数据线 1m","product_brief":"苹果MFi官方认证，支持快充","product_price":"59","product_org_price":"59","show_price_qi":false,"action":{"type":"product","path":"https://www.mi.com/buy?product_id=11859","log_code":"31pchomepagelist_eight_product_tab004001#t=product\u0026act=product\u0026page=homepage\u0026pid=11859\u0026page_id=10530\u0026bid=3480946.8","extra":""}},{"img_url":"https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/fffc0a962387dff2f70aeb009ddf69ff.jpg","product_id":12541,"product_name":"小米车载充电器快充版1A1C 100W","product_brief":"小米车载充电器快充版1A1C 100W","product_price":"99","product_org_price":"99","show_price_qi":false,"action":{"type":"product","path":"https://www.mi.com/buy?product_id=12541","log_code":"31pchomepagelist_eight_product_tab005001#t=product\u0026act=product\u0026page=homepage\u0026pid=12541\u0026page_id=10530\u0026bid=3480946.9","extra":""}},{"img_url":"https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/f8fde8a877fd4b12ad88119d9b6bc061.jpg","product_id":11543,"product_name":"小米氮化镓GaN充电器 Type-C 65W ","product_brief":"氮化镓黑科技 65W MAX 大功率快充","product_price":"149","product_org_price":"149","show_price_qi":false,"action":{"type":"product","path":"https://www.mi.com/buy?product_id=11543","log_code":"31pchomepagelist_eight_product_tab006001#t=product\u0026act=product\u0026page=homepage\u0026pid=11543\u0026page_id=10530\u0026bid=3480946.10","extra":""}},{"img_url":"http://cdn.cnbj0.fds.api.mi-img.com/b2c-miapp-a1/287594eb-b765-8db1-3255-0a05c4c07440.jpg","product_id":4944,"product_name":"小米二合一数据线100cm","product_brief":"支持快充，安全保护","product_price":"24.9","product_org_price":"24.9","show_price_qi":false,"action":{"type":"product","path":"https://www.mi.com/buy?product_id=4944","log_code":"31pchomepagelist_eight_product_tab007001#t=product\u0026act=product\u0026page=homepage\u0026pid=4944\u0026page_id=10530\u0026bid=3480946.11","extra":""}}],"action":{"type":"keyword","path":"//www.mi.com/search?keyword=%E4%BF%9D%E6%8A%A4%E5%A3%B3","log_code":"31pchomepagelist_eight_product_tab000000#t=normal\u0026act=other\u0026page=homepage\u0026page_id=10530\u0026bid=3480946.3","extra":""}},{"tab_name":"充电器","more_text":"浏览更多","product_list":[{"img_url":"https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/f8fde8a877fd4b12ad88119d9b6bc061.jpg","product_id":11543,"product_name":"小米氮化镓GaN充电器 Type-C 65W ","product_brief":"氮化镓黑科技 65W MAX 大功率快充","product_price":"149","product_org_price":"149","show_price_qi":false,"action":{"type":"product","path":"https://www.mi.com/buy?product_id=11543","log_code":"31pchomepagelist_eight_product_tab000001#t=product\u0026act=product\u0026page=homepage\u0026pid=11543\u0026page_id=10530\u0026bid=3480946.13","extra":""}},{"img_url":"https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/15ac53312f850bfcc73bdc5a185fda8a.jpg","product_id":10860,"product_name":"小米立式风冷无线充 30W ","product_brief":"解锁充电新姿势","product_price":"199","product_org_price":"199","show_price_qi":false,"action":{"type":"product","path":"https://www.mi.com/buy?product_id=10860","log_code":"31pchomepagelist_eight_product_tab001001#t=product\u0026act=product\u0026page=homepage\u0026pid=10860\u0026page_id=10530\u0026bid=3480946.14","extra":""}},{"img_url":"https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/bb115b0d5e6cc24c39c1ae818b63bf1a.jpg","product_id":11226,"product_name":"小米立式无线充电器 通用快充20W","product_brief":"横竖可充，迅速感应边充边玩","product_price":"99","product_org_price":"99","show_price_qi":false,"action":{"type":"product","path":"https://www.mi.com/buy?product_id=11226","log_code":"31pchomepagelist_eight_product_tab002001#t=product\u0026act=product\u0026page=homepage\u0026pid=11226\u0026page_id=10530\u0026bid=3480946.15","extra":""}},{"img_url":"http://cdn.cnbj0.fds.api.mi-img.com/b2c-miapp-a1/554198af-55ec-8400-7a04-66a8f3e0dd66.jpg","product_id":4888,"product_name":"米家插线板6位基础版（含3口USB 2A快充）","product_brief":"小巧设计，便捷不占地儿","product_price":"79","product_org_price":"79","show_price_qi":false,"action":{"type":"url","path":"https://www.mi.com/powerstrip6/","log_code":"31pchomepagelist_eight_product_tab003001#t=product\u0026act=webview\u0026page=homepage\u0026page_id=10530\u0026bid=3480946.16\u0026pid=4888","extra":""}},{"img_url":"https://cdn.cnbj0.fds.api.mi-img.com/b2c-mimall-media/d6484113b03acde1672d50c395c09763.jpg","product_id":7805,"product_name":"小米插线板（含3口USB 2A快充）","product_brief":"3个USB充电口，支持快充","product_price":"49","product_org_price":"49","show_price_qi":false,"action":{"type":"product","path":"https://www.mi.com/buy?product_id=7805","log_code":"31pchomepagelist_eight_product_tab004001#t=product\u0026act=product\u0026page=homepage\u0026pid=7805\u0026page_id=10530\u0026bid=3480946.17","extra":""}},{"img_url":"https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/028d84b7e54574047e6bafe52f781ee7.jpg","product_id":12896,"product_name":"小米Type-C充电器快充版 20W","product_brief":"智能兼容/小巧易携带","product_price":"39","product_org_price":"39","show_price_qi":false,"action":{"type":"product","path":"https://www.mi.com/buy?product_id=12896","log_code":"31pchomepagelist_eight_product_tab005001#t=product\u0026act=product\u0026page=homepage\u0026pid=12896\u0026page_id=10530\u0026bid=3480946.18","extra":""}},{"img_url":"https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/f8fde8a877fd4b12ad88119d9b6bc061.jpg","product_id":11543,"product_name":"小米氮化镓GaN充电器 Type-C 65W ","product_brief":"氮化镓黑科技 65W MAX 大功率快充","product_price":"149","product_org_price":"149","show_price_qi":false,"action":{"type":"product","path":"https://www.mi.com/buy?product_id=11543","log_code":"31pchomepagelist_eight_product_tab006001#t=product\u0026act=product\u0026page=homepage\u0026pid=11543\u0026page_id=10530\u0026bid=3480946.19","extra":""}}],"action":{"type":"keyword","path":"//www.mi.com/search?keyword=%E5%85%85%E7%94%B5%E5%99%A8","log_code":"31pchomepagelist_eight_product_tab000000#t=normal\u0026act=other\u0026page=homepage\u0026page_id=10530\u0026bid=3480946.12","extra":""}}]}},{"view_type":"cells_auto_fill","body":{"bg_color":"","items":[{"path_type":"image","x":0,"y":0,"w":2452,"h":240,"img_url":"https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/66523a1accdc72e01c01d4761a26fbb9.jpg?w=2452\u0026h=240","action":{"type":"product","path":"https://www.mi.com/buy?product_id=12558","log_code":"31pchomepagecells_auto_fill001020#t=ad\u0026act=product\u0026page=homepage\u0026pid=12558\u0026page_id=10530\u0026bid=3480947.1\u0026adp=3141\u0026adm=23286","extra":""}}]}},{"view_type":"list_eight_product_tab","body":{"floor_name":"周边","left_ad":{"type":1,"items":[{"img_url":"https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/ca0940f052227d235e7de5678d106c89.jpg?w=468\u0026h=600","action":{"type":"product","path":"https://www.mi.com/buy?product_id=2203900010","log_code":"31pchomepagelist_eight_product_tab000001#t=ad\u0026act=product\u0026page=homepage\u0026pid=2203900010\u0026page_id=10530\u0026bid=3480948.1\u0026adp=3129\u0026adm=16008","extra":""}},{"img_url":"https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/0497ba8520dc4aca9d55e6b841d42331.jpg?w=468\u0026h=600","action":{"type":"product","path":"https://www.mi.com/buy?product_id=11674","log_code":"31pchomepagelist_eight_product_tab000001#t=ad\u0026act=product\u0026page=homepage\u0026pid=11674\u0026page_id=10530\u0026bid=3480948.2\u0026adp=3130\u0026adm=24694","extra":""}}]},"tab_content":[{"tab_name":"热门","more_text":"浏览更多","product_list":[{"img_url":"https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/cccac948e1b8ffb47f1fecde67692e60.jpg","product_id":9732,"product_name":"米家飞行员太阳镜 Pro","product_brief":"尼龙偏光，轻巧佩戴","product_price":"189","product_org_price":"199","show_price_qi":false,"action":{"type":"product","path":"https://www.mi.com/buy?product_id=9732","log_code":"31pchomepagelist_eight_product_tab000001#t=product\u0026act=product\u0026page=homepage\u0026pid=9732\u0026page_id=10530\u0026bid=3480948.4","extra":""}},{"img_url":"https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/57433a4b991b2a2ddc889f2d8d434655.jpg","product_id":9836,"product_name":"小米巨能写中性笔10支装","product_brief":"一支顶4支，超长顺滑书写","product_price":"9.99","product_org_price":"9.99","show_price_qi":false,"action":{"type":"product","path":"https://www.mi.com/buy?product_id=9836","log_code":"31pchomepagelist_eight_product_tab001001#t=product\u0026act=product\u0026page=homepage\u0026pid=9836\u0026page_id=10530\u0026bid=3480948.5","extra":""}},{"img_url":"https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/03d94ee6059481a6adcb6c4c5c572fb4.jpg","product_id":10480,"product_name":"米家迷你保温杯","product_brief":"可以随身携带的温度","product_price":"49","product_org_price":"49","show_price_qi":false,"action":{"type":"product","path":"https://www.mi.com/buy?product_id=10480","log_code":"31pchomepagelist_eight_product_tab002001#t=product\u0026act=product\u0026page=homepage\u0026pid=10480\u0026page_id=10530\u0026bid=3480948.6","extra":""}},{"img_url":"http://i8.mifile.cn/v1/a1/413f5e2f-53e7-0879-119c-8b4466feea53.jpg","product_id":6443,"product_name":"贝医生巴氏牙刷 四色装","product_brief":"进口刷毛，好品质","product_price":"39.9","product_org_price":"39.9","show_price_qi":false,"action":{"type":"url","path":"https://www.mi.com/toothbrush-set/","log_code":"31pchomepagelist_eight_product_tab003001#t=product\u0026act=webview\u0026page=homepage\u0026page_id=10530\u0026bid=3480948.7\u0026pid=6443","extra":""}},{"img_url":"https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/d0b1119165c481376399aab53330e015.jpg","product_id":11874,"product_name":"米家运动鞋4","product_brief":"轻盈若絮,弹若脱兔","product_price":"199","product_org_price":"199","show_price_qi":false,"action":{"type":"product","path":"https://www.mi.com/buy?product_id=11874","log_code":"31pchomepagelist_eight_product_tab004001#t=product\u0026act=product\u0026page=homepage\u0026pid=11874\u0026page_id=10530\u0026bid=3480948.8","extra":""}},{"img_url":"https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/18ebd0837a5f265deaee9231aa3e1245.jpg","product_id":11805,"product_name":"米家指甲刀五件套","product_brief":"轻巧多用，优雅随行","product_price":"39.9","product_org_price":"39.9","show_price_qi":false,"action":{"type":"product","path":"https://www.mi.com/buy?product_id=11805","log_code":"31pchomepagelist_eight_product_tab005001#t=product\u0026act=product\u0026page=homepage\u0026pid=11805\u0026page_id=10530\u0026bid=3480948.9","extra":""}},{"img_url":"https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/f9017bebb14740ea46673aaa81a616cb.jpg","product_id":11863,"product_name":"8H乳胶床垫2","product_brief":"软硬双面可睡","product_price":"599","product_org_price":"599","show_price_qi":true,"action":{"type":"product","path":"https://www.mi.com/buy?product_id=11863","log_code":"31pchomepagelist_eight_product_tab006001#t=product\u0026act=product\u0026page=homepage\u0026pid=11863\u0026page_id=10530\u0026bid=3480948.10","extra":""}},{"img_url":"https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/b48160e1c150044808c9c8787c140750.jpg","product_id":12434,"product_name":"日常元素抽纸 青春版 24包/箱","product_brief":"精选原生竹浆，健康环保","product_price":"25.9","product_org_price":"32.9","show_price_qi":false,"action":{"type":"product","path":"https://www.mi.com/buy?product_id=12434","log_code":"31pchomepagelist_eight_product_tab007001#t=product\u0026act=product\u0026page=homepage\u0026pid=12434\u0026page_id=10530\u0026bid=3480948.11","extra":""}}],"action":{"type":"keyword","path":"//www.mi.com/search?keyword=MIJOY","log_code":"31pchomepagelist_eight_product_tab000000#t=normal\u0026act=other\u0026page=homepage\u0026page_id=10530\u0026bid=3480948.3","extra":""}},{"tab_name":"出行","more_text":"浏览更多","product_list":[{"img_url":"https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/609d0a457c7f8ac27d76f953c8acb7fc.jpg","product_id":12633,"product_name":"九号卡丁车Pro兰博基尼汽车定制版","product_brief":"九号卡丁车Pro兰博基尼汽车定制版","product_price":"9999","product_org_price":"9999","show_price_qi":false,"action":{"type":"product","path":"https://www.mi.com/buy?product_id=12633","log_code":"31pchomepagelist_eight_product_tab000001#t=product\u0026act=product\u0026page=homepage\u0026pid=12633\u0026page_id=10530\u0026bid=3480948.13","extra":""}},{"img_url":"https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/cccac948e1b8ffb47f1fecde67692e60.jpg","product_id":9732,"product_name":"米家飞行员太阳镜 Pro","product_brief":"尼龙偏光，轻巧佩戴","product_price":"189","product_org_price":"199","show_price_qi":false,"action":{"type":"product","path":"https://www.mi.com/buy?product_id=9732","log_code":"31pchomepagelist_eight_product_tab001001#t=product\u0026act=product\u0026page=homepage\u0026pid=9732\u0026page_id=10530\u0026bid=3480948.14","extra":""}},{"img_url":"http://i8.mifile.cn/v1/a1/T1r_x_BgLT1RXrhCrK.jpg","product_id":2774,"product_name":"九号平衡车","product_brief":"年轻人的酷玩具","product_price":"1999","product_org_price":"1999","show_price_qi":false,"action":{"type":"url","path":"https://www.mi.com/scooter/","log_code":"31pchomepagelist_eight_product_tab002001#t=product\u0026act=webview\u0026page=homepage\u0026page_id=10530\u0026bid=3480948.15\u0026pid=2774","extra":""}},{"img_url":"https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/aabf1a475043266cf4759ec58d0f679c.jpg","product_id":9285,"product_name":"小米米家电动滑板车Pro","product_brief":"性能提升，动力更强劲","product_price":"2799","product_org_price":"2799","show_price_qi":false,"action":{"type":"product","path":"https://www.mi.com/buy?product_id=9285","log_code":"31pchomepagelist_eight_product_tab003001#t=product\u0026act=product\u0026page=homepage\u0026pid=9285\u0026page_id=10530\u0026bid=3480948.16","extra":""}},{"img_url":"https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/c9871569c0b49b769bd74f5cce81e45a.jpg","product_id":9729,"product_name":"米家经典方框太阳镜","product_brief":"复古设计，偏光自修复","product_price":"89","product_org_price":"99","show_price_qi":false,"action":{"type":"product","path":"https://www.mi.com/buy?product_id=9729","log_code":"31pchomepagelist_eight_product_tab004001#t=product\u0026act=product\u0026page=homepage\u0026pid=9729\u0026page_id=10530\u0026bid=3480948.17","extra":""}},{"img_url":"https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/fffc0a962387dff2f70aeb009ddf69ff.jpg","product_id":12541,"product_name":"小米车载充电器快充版1A1C 100W","product_brief":"小米车载充电器快充版1A1C 100W","product_price":"99","product_org_price":"99","show_price_qi":false,"action":{"type":"product","path":"https://www.mi.com/buy?product_id=12541","log_code":"31pchomepagelist_eight_product_tab005001#t=product\u0026act=product\u0026page=homepage\u0026pid=12541\u0026page_id=10530\u0026bid=3480948.18","extra":""}},{"img_url":"https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/3f182e898b25285bd8279cbc72c9686e.jpg","product_id":12741,"product_name":"小米对讲机Lite","product_brief":"小米对讲机Lite","product_price":"129","product_org_price":"129","show_price_qi":false,"action":{"type":"product","path":"https://www.mi.com/buy?product_id=12741","log_code":"31pchomepagelist_eight_product_tab006001#t=product\u0026act=product\u0026page=homepage\u0026pid=12741\u0026page_id=10530\u0026bid=3480948.19","extra":""}},{"img_url":"https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/e2589bc96718b0db697b23ff765c01c3.jpg","product_id":12769,"product_name":"小米无线充电宝30W 10000mAh","product_brief":" 小米无线充电宝30W 10000mAh","product_price":"199","product_org_price":"199","show_price_qi":false,"action":{"type":"product","path":"https://www.mi.com/buy?product_id=12769","log_code":"31pchomepagelist_eight_product_tab007001#t=product\u0026act=product\u0026page=homepage\u0026pid=12769\u0026page_id=10530\u0026bid=3480948.20","extra":""}}],"action":{"type":"keyword","path":"//www.mi.com/search?keyword=%E7%AE%B1%E5%8C%85","log_code":"31pchomepagelist_eight_product_tab000000#t=normal\u0026act=other\u0026page=homepage\u0026page_id=10530\u0026bid=3480948.12","extra":""}}]}},{"view_type":"cells_auto_fill","body":{"bg_color":"","items":[{"path_type":"image","x":0,"y":0,"w":2452,"h":240,"img_url":"https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/88e35cffc82cd98cd53172460067af17.jpg?w=2452\u0026h=240","action":{"type":"product","path":"https://www.mi.com/buy?product_id=9836","log_code":"31pchomepagecells_auto_fill001022#t=ad\u0026act=product\u0026page=homepage\u0026pid=9836\u0026page_id=10530\u0026bid=3480949.1\u0026adp=3142\u0026adm=13611","extra":""}}]}},{"view_type":"list_four_video","body":{"floor_name":"视频","more_text":"查看全部","action":{"type":"url","path":"https://www.mi.com/video/","log_code":"31pchomepagelist_four_video000000#t=normal\u0026act=other\u0026page=homepage\u0026page_id=10530\u0026bid=3480966.1","extra":""},"items":[{"img_url":"https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/e74c4ff741bcdfc5b28a48a43e4edc6d.jpg","video_url":"https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/812358b69886e576c66a01f1f00affe9.mp4","title":"2021年春季新品发布会第一场","subtitle":""},{"img_url":"https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/101b19aca4bb489bcef0f503e44ec866.jpg","video_url":"https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/11c70c96529b6e6938567ec1aa0910e0.mp4","title":"Redmi 10X系列发布会","subtitle":"Redmi 10X系列发布会"},{"img_url":"https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/96563e75833ba4563bd469dd28203b09.jpg","video_url":"https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/7cdabcaa763392c86b944eaf4e68d6a3.mp4","title":"小米10 青春版 发布会","subtitle":""},{"img_url":"https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/2fd26bb99b723337a2f8eaba84f7d5bb.jpg","video_url":"https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/e25d81c4922fca5ebe51877717ef9b76.mp4","title":"小米10 8K手机拍大片","subtitle":""}]}}],
            doodleData: {"img_url":"","action":{"type":"","path":"","log_code":"","extra":""}},
            topbarBannerData: {"img_url":"","action":{"type":"","path":"","log_code":"","extra":""}}
        };
        var HFILTER_DATA = {};
        var TOOL_BAR_DATA = [{"id":24,"type":"image","button_title":"手机APP","button_img":"https://i8.mifile.cn/b2c-mimall-media/98a23aae70f25798192693f21c4d4039.png","button_hover_img":"https://i8.mifile.cn/b2c-mimall-media/74c4fcb4475af8308e9a670db9c01fdf.png","qrcode_img":"https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/78c30d4f259ed43ab20e810a522a6249.png","qrcode_title":"扫码领取新人百元礼包","jump_url":"","jump_type":1,"weight":40,"start_time":"","end_time":"","is_enabled":"Y","block_id":3343648,"type_name":"图片类型","special_mark":""},{"id":20,"type":"common","button_title":"个人中心","button_img":"https://i8.mifile.cn/b2c-mimall-media/55cad219421bee03a801775e7309b920.png","button_hover_img":"https://i8.mifile.cn/b2c-mimall-media/41f858550f42eb1770b97faf219ae215.png","qrcode_img":"","qrcode_title":"","jump_url":"https://www.mi.com/user/portal","jump_type":1,"weight":30,"start_time":"","end_time":"","is_enabled":"Y","block_id":3213221,"type_name":"通用类型","special_mark":""},{"id":23,"type":"common","button_title":"售后服务","button_img":"https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/12eb0965ab33dc8e05870911b90f3f13.png","button_hover_img":"https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/95fbf0081a06eec7be4d35e277faeca0.png","qrcode_img":"","qrcode_title":"","jump_url":"https://www.mi.com/service/aftersale/front","jump_type":1,"weight":25,"start_time":"","end_time":"","is_enabled":"Y","block_id":3213225,"type_name":"通用类型","special_mark":""},{"id":21,"type":"common","button_title":"人工客服","button_img":"https://i8.mifile.cn/b2c-mimall-media/4f036ae4d45002b2a6fb6756cedebf02.png","button_hover_img":"https://i8.mifile.cn/b2c-mimall-media/5e9f2b1b0da09ac3b3961378284ef2d4.png","qrcode_img":"","qrcode_title":"","jump_url":"https://chat.kefu.mi.com/page/index/v2?tag=cn\u0026token=Y24jMTAwMSNjbi53ZWIubWkuaHR0cHMjZGVmYXVsdCNnb29kc0RldGFpbA==\u0026groupId=P0\u0026closedshow=1","jump_type":2,"weight":20,"start_time":"","end_time":"","is_enabled":"Y","block_id":3213222,"type_name":"通用类型","special_mark":"contact"},{"id":22,"type":"cart","button_title":"购物车","button_img":"https://i8.mifile.cn/b2c-mimall-media/d7db56d1d850113f016c95e289e36efa.png","button_hover_img":"https://i8.mifile.cn/b2c-mimall-media/692a6c3b0a93a24f74a29c0f9d68ec71.png","qrcode_img":"","qrcode_title":"","jump_url":"https://www.mi.com/buy/cart","jump_type":1,"weight":10,"start_time":"","end_time":"","is_enabled":"Y","block_id":3213223,"type_name":"购物车类型","special_mark":""}];
    </script>
    <script type="text/javascript" src="//s02.mifile.cn/assets/js/chunk-vendors.4dda2449.js"></script><script type="text/javascript" src="//s02.mifile.cn/assets/js/home.747f9d13.js"></script>
    <script>
        window._msq = window._msq || [];
        _msq.push(['setDomainId', 100]);
        _msq.push(['trackPageView']);
        (function () {
            var ms = document.createElement('script');
            ms.type = 'text/javascript';
            ms.async = true;
            ms.src = '//s1.mi.com/stat/20/xmst.js';
            var s = document.getElementsByTagName('script')[0];
            s.parentNode.insertBefore(ms, s);

            window.statInit = function () {
                if (window.xmstLittle && xmstLittle.isFunction(xmstLittle.fn.linkSign)) {
                    xmstLittle('body').linkSign();
                }
            }
        })();


        var _hmt = _hmt || [];
        (function () {
            var hm = document.createElement("script");
            hm.src = "//hm.baidu.com/hm.js?c3e3e8b3ea48955284516b186acf0f4e";
            var s = document.getElementsByTagName("script")[0];
            s.parentNode.insertBefore(hm, s);
        })();

    </script>
    <script type="text/javascript">




    </script>
</body>

</html>
