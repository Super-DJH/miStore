package com.Day.StuQue.web.controller;



import com.Day.StuQue.domain.Commodity;
import com.Day.StuQue.domain.Tran_his;
import com.Day.StuQue.domain.User;
import com.Day.StuQue.service.CommodityService;
import com.Day.StuQue.service.UserService;
import com.Day.StuQue.service.impl.CommodityServiceImpl;
import com.Day.StuQue.service.impl.UserServiceImpl;
import com.Day.StuQue.util.PrintJson;
import com.Day.StuQue.util.ServiceFactory;
import com.Day.StuQue.util.UUIDUtil;
import com.fasterxml.jackson.databind.ObjectMapper;
import org.apache.ibatis.session.SqlSession;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;

public class UserController extends HttpServlet {

    @Override
    protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        System.out.println("进入到，管理/客户，活动控制器");
        String value = request.getServletPath();
        System.out.println(value);
        if ("/user/login.do".equals(value)){
            login(request,response);
        }else if ("/user/getUserList.do".equals(value)){
            getUserList(request,response);
        }else if ("/user/add.do".equals(value)){
            add(request,response);
        }else if ("/user/delete.do".equals(value)){
            delete(request,response);
        }else if ("/user/update.do".equals(value)){
            update(request,response);
        }else if ("/user/updateUser.do".equals(value)){
            updateUser(request,response);
        }else if ("/user/out.do".equals(value)){
            out(request,response);
        }
        //客户相关
        else if ("/workbench/tran/tranLogin.do".equals(value)){
            tranLogin(request,response);
        }else if ("/workbench/tran/tranShow.do".equals(value)){
            tranShow(request,response);
        }else if ("/workbench/tran/tranAddShopping.do".equals(value)){
            tranAddShopping(request,response);
        }else if ("/workbench/tran/sumOne.do".equals(value)){
            sumOne(request,response);
        }/*else if ("/workbench/tran/shoppingShow.do".equals(value)){
            shoppingShow(request,response);
        }*/else if ("/workbench/tran/tranPay.do".equals(value)){
            tranPay(request,response);
        }else if ("/workbench/tran/getOrderList.do".equals(value)){
            getOrderList(request,response);
        }else if ("/workbench/tran/getHisListAll.do".equals(value)){
            getHisListAll(request,response);
        }
    }

    private void getHisListAll(HttpServletRequest request, HttpServletResponse response) {
        System.out.println("获取所有的订单信息");
        String userName = (String) request.getSession().getAttribute("userName");
        CommodityService cs = (CommodityService) ServiceFactory.getService(new CommodityServiceImpl());
        List<Tran_his> thList = cs.getHisListAll(userName);
        PrintJson.printJsonObj(response,thList);
    }

    private void getOrderList(HttpServletRequest request, HttpServletResponse response) {
        System.out.println("获取订单列表");
        String [] ids = request.getParameterValues("id");
        CommodityService cs = (CommodityService) ServiceFactory.getService(new CommodityServiceImpl());
        List<Tran_his> thList = cs.getOrderList(ids);
        PrintJson.printJsonObj(response,thList);
    }

    private void tranPay(HttpServletRequest request, HttpServletResponse response) {
        System.out.println("开始结算");
        String [] ids = request.getParameterValues("id");
        CommodityService cs = (CommodityService) ServiceFactory.getService(new CommodityServiceImpl());
        List<String> tran_hisIdList = cs.tranPay(ids);
        /*System.out.println("---------------------------------------------------------");
        System.out.println(result);
        System.out.println("---------------------------------------------------------");*/
        PrintJson.printJsonObj(response,tran_hisIdList);
    }

    /*private void shoppingShow(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        System.out.println("展现购物车");
        String userName = (String) request.getSession().getAttribute("userName");
        CommodityService cs = (CommodityService) ServiceFactory.getService(new CommodityServiceImpl());
        List<Map<String,Object>> mapList = cs.shoppingShow(userName);
        request.setAttribute("ml",mapList);
        request.getRequestDispatcher("/workbench/tranShopping.jsp").forward(request,response);
    }*/

    private void sumOne(HttpServletRequest request, HttpServletResponse response) {
        String [] ids = request.getParameterValues("id");
        CommodityService cs = (CommodityService) ServiceFactory.getService(new CommodityServiceImpl());
        int result = cs.sumOne(ids);
        PrintJson.printJsonObj(response,result);
    }

    //
    private void tranAddShopping(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String commId = request.getParameter("id");
        String userName = (String) request.getSession().getAttribute("userName");

        CommodityService cs = (CommodityService) ServiceFactory.getService(new CommodityServiceImpl());
        List<Map<String,Object>> mapList = cs.tranAddShopping(commId,userName);
        request.setAttribute("ml",mapList);
        request.getRequestDispatcher("/workbench/tranShopping.jsp").forward(request,response);
        /*boolean flag = cs.tranAddShopping(commId,userName);
        if (flag){
            response.sendRedirect("/myWeb/workbench/tranShopping.jsp");
        }else {
            System.out.println("加入购物车失败");
        }*/

    }

    private void tranShow(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String id = request.getParameter("id");

        CommodityService cs = (CommodityService) ServiceFactory.getService(new CommodityServiceImpl());
        Commodity comm = cs.getCommodityById(id);
        request.setAttribute("c",comm);
        request.getRequestDispatcher("/workbench/tranShow.jsp").forward(request,response);



    }

    //客户
    private void tranLogin(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String userName = request.getParameter("userName");
        String password = request.getParameter("password");

        UserService us = (UserService) ServiceFactory.getService(new UserServiceImpl());
        boolean result = us.tranLogin(userName,password);
        if (result == true){
            CommodityService cs = (CommodityService) ServiceFactory.getService(new CommodityServiceImpl());
            Map<String,Object> map = cs.getMapByTypeName();

            request.getSession().setAttribute("userName",userName);
            request.getSession().setAttribute("m",map);
            /*Set<String>set = map.keySet();
            for (String key : set) {
                List<Commodity> commList = (List<Commodity>) map.get(key);
                request.getSession().setAttribute(key,commList);
                System.out.println("=====================================================================");
                System.out.println(key+commList);
                System.out.println("=====================================================================");
            }
            request.getSession().setAttribute("userName",userName);*/
            request.getRequestDispatcher("/workbench/tranDetail.jsp").forward(request,response);
        }else {
            System.out.println("用户名/密码有误");
            response.sendRedirect("/myWeb/workbench/tranIndex.jsp");
        }

    }


    //管理
    private void out(HttpServletRequest request, HttpServletResponse response) throws IOException {
        response.sendRedirect("/myWeb/commodityType.jsp");
    }

    private void updateUser(HttpServletRequest request, HttpServletResponse response) {

        String id  = request.getParameter("id");
        String name  = request.getParameter("name");
        String sex  = request.getParameter("sex");
        String tel  = request.getParameter("tel");
        String addr  = request.getParameter("addr");
        String remark  = request.getParameter("remark");

        User user = new User(id,name,sex,tel,addr,remark);

        UserService us = (UserService) ServiceFactory.getService(new UserServiceImpl());
        boolean result = us.updateUser(user);
        PrintJson.printJsonFlag(response,result);


    }

    private void update(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id = request.getParameter("id");
        UserService us = (UserService) ServiceFactory.getService(new UserServiceImpl());
        User user = us.getUserById(id);
        request.setAttribute("u",user);
        //System.out.println("aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa"+user);
        request.getRequestDispatcher("/update.jsp").forward(request,response);
    }

    private void delete(HttpServletRequest request, HttpServletResponse response) {
        String id = request.getParameter("id");
        UserService us = (UserService) ServiceFactory.getService(new UserServiceImpl());
        boolean result = us.delete(id);
        PrintJson.printJsonFlag(response,result);
    }

    private void add(HttpServletRequest request, HttpServletResponse response) {
        System.out.println("开始新增用户");
        String id = UUIDUtil.getUUID();
        String name = request.getParameter("name");
        String sex = request.getParameter("sex");
        String tel = request.getParameter("tel");
        String addr = request.getParameter("addr");
        String remark = request.getParameter("remark");
        User user = new User(id,name,sex,tel,addr,remark);
        UserService us = (UserService) ServiceFactory.getService(new UserServiceImpl());
        boolean result = us.add(user);
        PrintJson.printJsonFlag(response,result);

    }


    private void getUserList(HttpServletRequest request, HttpServletResponse response) {

        //第几页
        String pageNo = request.getParameter("pageNo");
        //每页展现的数量
        String pageSizer = request.getParameter("pageSize");
        int pageSize = Integer.valueOf(pageSizer);


        //sql语句中分页查询limit后的数字为 “略过的个数” 和 “每页展现的数量”

        //略过的个数=（第几页-1）*每页展现的数量
        int omSize = (Integer.valueOf(pageNo)-1)*Integer.valueOf(pageSize);

        Map<String,Object> map = new HashMap<>();
        map.put("omSize",omSize);
        map.put("pageSize",pageSize);


        System.out.println("开始查询用户");
        UserService us = (UserService) ServiceFactory.getService(new UserServiceImpl());
        Map<String,Object> map2 = us.getUserList(map);
        PrintJson.printJsonObj(response,map2);
    }

    private void login(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        System.out.println("进入到登录验证");

        String userName = request.getParameter("userName");
        String passWord = request.getParameter("password");
        System.out.println(userName + passWord);
        UserService us = (UserService) ServiceFactory.getService(new UserServiceImpl());
        try {
            Map<String,Object> map = us.login(userName,passWord);
            boolean result = (boolean) map.get("success");
            User user = (User) map.get("user");
            request.getSession().setAttribute("user",user);
            PrintJson.printJsonFlag(response,result);
        }catch (Exception e){
            e.printStackTrace();
            String msg = e.getMessage();

            Map<String,Object> map = new HashMap<String, Object>();
            map.put("success",false);
            map.put("msg",msg);

            PrintJson.printJsonObj(response,map);
        }










        //PrintJson.printJsonFlag(response,result);
    }


}
