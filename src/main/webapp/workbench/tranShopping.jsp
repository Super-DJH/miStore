<%@ page import="java.util.Map" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.Set" %>
<%@ page import="com.Day.StuQue.domain.Shopping" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>


<% String userName = (String) session.getAttribute("userName");%>

<%
    List<Map<String,Object>> mapList = (List<Map<String, Object>>) request.getAttribute("ml");
    //System.out.println(mapList);
%>
<!doctype html>
<html lang="zh-CN" xml:lang="zh-CN">
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=Edge" />
    <meta charset="UTF-8" />
    <title>我的购物车-小米商城</title>
    <link rel="shortcut icon" href="//s01.mifile.cn/favicon.ico" type="image/x-icon" />
    <link rel="icon" href="//s01.mifile.cn/favicon.ico" type="image/x-icon" />
    <meta name="description" content="" />
    <meta name="keywords" content="" />

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

    <link href="//s02.mifile.cn/assets/css/buy/cart.cffd9818.css" rel="preload" as="style"><link href="//s02.mifile.cn/assets/js/buy/cart.c2b6ee54.js" rel="preload" as="script"><link href="//s02.mifile.cn/assets/js/chunk-vendors.4dda2449.js" rel="preload" as="script"><link href="//s02.mifile.cn/assets/css/buy/cart.cffd9818.css" rel="stylesheet"></head>
<body>
<div id="app">
    <div ref="J_siteHeader">

        <div class="site-header site-mini-header">
            <div class="container">
                <div class="header-logo">
                    <a class="logo ir" href="//www.mi.com/index.html" title="小米官网">小米官网</a>
                </div>
                <div class="header-title has-more" id="J_miniHeaderTitle">
                    <h2>
                        我的购物车
                    </h2>
                    <p>

                    </p>
                </div>

                <div class="site-topbar ">
                    <div class="topbar-info" id="J_siteUserInfo">
                        <a rel="nofollow" class="link" href="//order.mi.com/site/login" data-agreement="true"
                           data-login="true">登录</a>
                        <span class="sep">|</span>
                        <a rel="nofollow" class="link" href="//account.xiaomi.com/pass/register?sid=mi_eshop" data-agreement="true"
                           data-register="true">注册</a>
                    </div>
                </div>
            </div>
        </div>

    </div>








    <div class="mi-cart page-main">
        <div class="container">
            <div data-v-562c5445="" class="cart-container">
                <div data-v-562c5445="" class="container-main">
                    <!----><div data-v-562c5445="" class="cart-wrap">
                    <div data-v-562c5445="" class="addonitems-tips" style="display: none;">
                        <div data-v-562c5445="" class="tip">
                        </div>
                        <a data-v-562c5445="" href="javascript:void(0);">去凑单 &gt;</a>
                    </div>
                    <div data-v-562c5445="" class="cart-goods-list">
                        <div data-v-562c5445="" class="list-head clearfix">

                            <%--全选按钮--%>
                            <div data-v-562c5445="" class="col col-check">
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="checkbox" id="qx" name="qx">全选
                            </div>

                            <div data-v-562c5445="" class="col col-img">&nbsp;</div>
                            <div data-v-562c5445="" class="col col-name">商品名称</div>
                            <div data-v-562c5445="" class="col col-price">单价</div>
                            <div data-v-562c5445="" class="col col-num">数量</div>
                            <div data-v-562c5445="" class="col col-total">小计</div>
                            <div data-v-562c5445="" class="col col-action">操作</div>
                        </div>
                        <div data-v-562c5445="" class="list-body">




                            <%

                                int sum = 0;
                                for (Map<String, Object> map : mapList) {
                                    /*Shopping sh = (Shopping) map.get("sh");
                                    System.out.println(sh);*/
                                    int total = (int) map.get("total");
                                    Shopping sh = (Shopping) map.get("sh");

                            %>


                            <%--第一个--%>
                            <div data-v-562c5445="" class="list-item" id="a<%=sh.getId()%>" >
                                <!---->


                                <div data-v-562c5445="" class="item-box">
                                    <div data-v-562c5445="" class="item-table">
                                        <div data-v-562c5445="" class="item-row clearfix">

                                            <%--单选框--%>
                                            <div data-v-562c5445="" class="col col-check">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="checkbox" name="xz" value="<%=sh.getId()%>"><%--<i data-v-562c5445="" class="iconfont icon-checkbox icon-checkbox">√</i>--%></div>

                                            <div data-v-562c5445="" class="col col-img"><a data-v-562c5445="" href="javascript:void(0)">

                                                <%--第一个照片--%>
                                                <img data-v-562c5445="" alt="" src="/myWeb/image/<%=sh.getCommId()%>.jpg" width="80" height="80"></a></div><div data-v-562c5445="" class="col col-name"><div data-v-562c5445="" class="tags"><!----><!----></div><div data-v-562c5445="" class="tags"></div><h3 data-v-562c5445="" class="name">

                                            <%--第一个信息--%>
                                            <a data-v-562c5445="" href="javascript:void(0)"><%=sh.getCommName()%><%=sh.getCommVersion()%>  <%=sh.getCommSpace()%> <%=sh.getCommColor()%></a></h3><!----><!----><!----><!----></div><div data-v-562c5445="" class="col col-price"><%=sh.getCommMoney()%>元<p data-v-562c5445="" class="pre-info"><!----></p></div>
                                            <div data-v-562c5445="" class="col col-num"><div data-v-562c5445="" class="change-goods-num clearfix"><a data-v-562c5445="" href="javascript:void(0)"><i data-v-562c5445="" class="iconfont"></i></a>

                                                <input data-v-562c5445="" type="text" autocomplete="off" class="goods-num" value="<%=total%>"><a data-v-562c5445="" href="javascript:void(0)"><i data-v-562c5445="" class="iconfont"></i></a><!----></div></div>
                                            <div data-v-562c5445="" class="col col-total"><%=(Integer.valueOf(sh.getCommMoney()))*total%>元<p data-v-562c5445="" class="pre-info"><!----></p></div><div data-v-562c5445="" class="col col-action"><a data-v-562c5445="" id="deleteShoppingCommA" <%--href=""--%> title="删除" class="del"><i data-v-562c5445="" class="iconfont"></i></a></div></div></div><!----><!----><!----><!----><!---->
                                </div>
                            </div>






                            <%

                                    sum += (Integer.valueOf(sh.getCommMoney()))*total;
                                }
                            %>







                                <%--第二个--%>
        <%--<div data-v-562c5445="" class="list-item"><!---->

                            <div data-v-562c5445="" class="item-box"><div data-v-562c5445="" class="item-table"><div data-v-562c5445="" class="item-row clearfix">

                                &lt;%&ndash;单选框&ndash;%&gt;
                                &lt;%&ndash;<div data-v-562c5445="" class="col col-check"><i data-v-562c5445="" class="iconfont icon-checkbox icon-checkbox">√</i></div>&ndash;%&gt;
                                <div data-v-562c5445="" class="col col-check"><input type="checkbox" name="xz">&lt;%&ndash;<i data-v-562c5445="" class="iconfont icon-checkbox icon-checkbox-selected">√</i>&ndash;%&gt;</div>
                                <div data-v-562c5445="" class="col col-img">

                                &lt;%&ndash;第二个照片&ndash;%&gt;
                                <a data-v-562c5445="" href="javascript:void(0)"><img data-v-562c5445="" alt="" src="" width="80" height="80"></a></div><div data-v-562c5445="" class="col col-name"><div data-v-562c5445="" class="tags"><!----><!----></div><div data-v-562c5445="" class="tags"></div><h3 data-v-562c5445="" class="name">

                                    &lt;%&ndash;第二个信息&ndash;%&gt;
                            <a data-v-562c5445="" href="javascript:void(0)">小米真无线蓝牙耳机Air2 SE 白色</a></h3><!----><!----><!----><!----></div><div data-v-562c5445="" class="col col-price">169元<p data-v-562c5445="" class="pre-info"><!----></p></div><div data-v-562c5445="" class="col col-num"><div data-v-562c5445="" class="change-goods-num clearfix"><a data-v-562c5445="" href="javascript:void(0)"><i data-v-562c5445="" class="iconfont"></i></a>


                            <input data-v-562c5445="" type="text" autocomplete="off" class="goods-num" value="1"><a data-v-562c5445="" href="javascript:void(0)"><i data-v-562c5445="" class="iconfont"></i></a><!----></div></div><div data-v-562c5445="" class="col col-total">169元<p data-v-562c5445="" class="pre-info"><!----></p></div><div data-v-562c5445="" class="col col-action"><a data-v-562c5445="" href="javascript:void(0);" title="删除" class="del"><i data-v-562c5445="" class="iconfont"></i></a></div></div></div><!----><!----><!----><!----><!---->
                            </div>

     </div>--%>















                            <!----><!----><!----></div></div><div data-v-562c5445="" class="raise-buy-box"></div><div data-v-562c5445="" class="cart-bar clearfix cart-bar-fixed"><div data-v-562c5445="" class="section-left">
                    <a data-v-562c5445="" href="/myWeb/workbench/tran/tranLogin.do?userName=<%=userName%>&password=123" class="back-shopping">继续购物</a>
                   <%-- <span data-v-562c5445="" class="cart-total">共 <i data-v-562c5445="">2</i> 件商品，已选择 <i data-v-562c5445="">1</i>件</span>--%></div>
                    <!----><span data-v-562c5445="" class="total-price">合计：<em data-v-562c5445="" id="sumId">0</em>元<a data-v-562c5445=""  id="payId" class="btn btn-a btn-primary">去结算</a></span>
                    <div data-v-562c5445="" class="no-select-tip" style="display: none;">请勾选需要结算的商品<i data-v-562c5445="" class="arrow arrow-a"></i><i data-v-562c5445="" class="arrow arrow-b"></i></div></div></div><div data-v-562c5445="" class="cart-recommend"><div data-v-1956af42="" data-v-562c5445="" class="mi-recommend cart-recommend">










                    <div data-v-1956af42="" class="swiper-recommend-pagination" style="display: none;"></div><div data-v-1956af42="" class="swiper-recommend-controls" style="display: none;"><span data-v-1956af42="" class="swiper-recommend-prev"><em data-v-1956af42="" class="iconfont-arrow-left-big"></em></span><span data-v-1956af42="" class="swiper-recommend-next"><em data-v-1956af42="" class="iconfont-arrow-right-big">

                </em></span></div></div></div></div><!---->
    </div>
    </div>
    </div>























    <div ref="J_siteFooter"></div>
</div>
<script type="text/javascript" src=""></script><script type="text/javascript" src="//s02.mifile.cn/assets/js/buy/cart.c2b6ee54.js"></script>

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

<script type="text/javascript" src="https://cdn.bootcdn.net/ajax/libs/jquery/1.12.4/jquery.js"></script>

<script type="text/javascript">

    $(function () {
        //alert("123")
        //页面加载的时候展示数据
        /*$.ajax({
            url:"/myWeb/workbenc ]h/tran/shoppingShow.do",



            es
            type:"",
            dataType:"json",
            success : function (data) {

            }

        })*/
        //window.location="/myWeb/workbench/tran/shoppingShow.do"


    })


</script>

<script type="text/javascript">
    $(function () {

        $("#deleteShoppingCommA").click(function () {

            alert("删除")
        })

        $("#payId").click(function () {
            //alert("结算")
            var $xz = $("input[name=xz]:checked");

            var value = "";
            for (var i = 0; i < $xz.length; i++) {
                //alert($($xz[i]).val())

                $("#a"+$($xz[i]).val()).hide()

                //拼字符串id=value&id=value
                value += "id=" + $($xz[i]).val()
                if (i < $xz.length - 1) {
                    value += "&";
                }
            }
            //alert(value)
            //拿到要结算的商品ids，有的商品数量不为1
            //遍历ids，通过每一个id拿到commId和userName

            //通过commId和userName拿到他买的所有这个手机List<Shopping>，遍历
            //创建交易历史，
            //拿到所有的shoppingId，通过shoppingId删除信息
            // 结束遍历


            //结束遍历
            //更新购物车数据

            $.ajax({
                url:"/myWeb/workbench/tran/tranPay.do",
                data:value,
                type:"post",
                dataType:"json",
                success : function (data) {

                    var url = "/myWeb/workbench/tranOrder.jsp?text=text"
                    $.each(data,function (i,n) {
                        //alert(data.length())
                        url += "&id="
                        url += n

                    })
                    //alert(url)
                    window.location=url;

                }

            })

        })


    })


    //为全选按钮绑定事件
    $("#qx").click(function () {

        $("input[name=xz]").prop("checked",this.checked)
        //alert("全选")
        var $xz = $("input[name=xz]:checked");
        //放一个再次确定按钮
        var value = "";
        for (var i = 0; i < $xz.length; i++) {
            //alert($($xz[i]).val())
            //拼字符串id=value&id=value
            value += "id=" + $($xz[i]).val()
            if (i < $xz.length - 1) {
                value += "&";
            }
        }
        //alert(value)
        $.ajax({
            url:"/myWeb/workbench/tran/sumOne.do",
            data:value,
            type:"get",
            dataType:"json",
            success : function (data) {
                //回调一个数字
                //alert(data)
                $("#sumId").text(data)
            }

        })

    })


    //为每个挑勾框绑定 点击或取消全选挑勾
    $("input[name=xz]").on('click',function() {
        var $subs = $("input[name=xz]");


        var $xxx = $("input[name=xz]:checked");
        if($xxx.length==0){
            $("#sumId").text("0")
        }

        $("#qx").prop("checked" , $subs.length == $subs.filter(":checked").length ? true :false);
        //alert("单选")
        var $xz = $("input[name=xz]:checked");
        //
        var value = "";
        for (var i = 0; i < $xz.length; i++) {
            //alert($($xz[i]).val())
            //拼字符串id=value&id=value
            value += "id=" + $($xz[i]).val()
            if (i < $xz.length - 1) {
                value += "&";
            }
        }
        //alert(value)
        $.ajax({
            url:"/myWeb/workbench/tran/sumOne.do",
            data:value,
            type:"get",
            dataType:"json",
            success : function (data) {
                //回调一个数字
                //alert(data)
                $("#sumId").text(data)
            }

        })


    });

    //$("#sumId").text("500")





</script>
</body>
</html>
