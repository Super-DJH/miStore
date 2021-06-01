package com.Day.StuQue.web.controller;



import com.Day.StuQue.dao.CommodityDao;
import com.Day.StuQue.domain.Commodity;
import com.Day.StuQue.domain.CommodityType;
import com.Day.StuQue.domain.Shopping;
import com.Day.StuQue.domain.User;
import com.Day.StuQue.service.CommodityService;
import com.Day.StuQue.service.UserService;
import com.Day.StuQue.service.impl.CommodityServiceImpl;
import com.Day.StuQue.service.impl.UserServiceImpl;
import com.Day.StuQue.util.PrintJson;
import com.Day.StuQue.util.ServiceFactory;
import com.Day.StuQue.util.UUIDUtil;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.sun.xml.internal.stream.StaxErrorReporter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class CommodityController extends HttpServlet {



    @Override
    protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        System.out.println("进入到商品活动控制器");
        String value = request.getServletPath();
        System.out.println(value);
        if ("/comm/getCommodityTypeList.do".equals(value)){
            getCommodityTypeList(request,response);
        }else if ("/comm/getCommodityListAndTypeNamByTypeId.do".equals(value)){
            getCommodityListAndTypeNamByTypeId(request,response);
        }else if ("/comm/getCommodityById.do".equals(value)){
            getCommodityById(request,response);
        }else if ("/comm/update.do".equals(value)){
            update(request,response);
        }else if ("/comm/search.do".equals(value)){
            search(request,response);
        }else if ("/comm/delete.do".equals(value)){
            delete(request,response);
        }else if ("/comm/add.do".equals(value)){
            add(request,response);
        }else if ("/comm/addShipping.do".equals(value)){
            addShipping(request,response);
        }else if ("/comm/getShippingListByUserName.do".equals(value)){
            getShippingListByUserName(request,response);
        }
    }

    private void getShippingListByUserName(HttpServletRequest request, HttpServletResponse response) {
        System.out.println("购物车商品展示");
        String userName = request.getParameter("userName");
        CommodityService cs = (CommodityService) ServiceFactory.getService(new CommodityServiceImpl());
        List<Shopping> shList = cs.getShippingListByUserName(userName);
        PrintJson.printJsonObj(response,shList);

    }

    private void addShipping(HttpServletRequest request, HttpServletResponse response) {
        System.out.println("添加到购物车");
        String commId = request.getParameter("commId");
        String commTypeId = request.getParameter("commTypeId");
        String userName = request.getParameter("userName");

        CommodityService cs = (CommodityService) ServiceFactory.getService(new CommodityServiceImpl());

        boolean result = cs.addShipping(commId,commTypeId,userName);

        PrintJson.printJsonFlag(response,result);
    }

    private void delete(HttpServletRequest request, HttpServletResponse response) {
        System.out.println("进入到删除商品信息");
        String id = request.getParameter("id");
        CommodityService cs = (CommodityService) ServiceFactory.getService(new CommodityServiceImpl());
        boolean result = cs.delete(id);
        PrintJson.printJsonFlag(response,result);
    }

    private void add(HttpServletRequest request, HttpServletResponse response) {
        System.out.println("进入到新增商品");
        String id = UUIDUtil.getUUID();
        String name = request.getParameter("name");
        String version = request.getParameter("version");
        String space = request.getParameter("space");
        String size = request.getParameter("size");
        String color = request.getParameter("color");
        String money = request.getParameter("money");
        String typeId = request.getParameter("typeId");

        Commodity comm = new Commodity(id,name,version,space,size,color,money,typeId);
        CommodityService cs = (CommodityService) ServiceFactory.getService(new CommodityServiceImpl());
        boolean result = cs.add(comm);
        PrintJson.printJsonFlag(response,result);

    }

    private void search(HttpServletRequest request, HttpServletResponse response) {
        System.out.println("进入模糊查询");
        String name =request.getParameter("name");
        String version =request.getParameter("version");
        String space =request.getParameter("space");
        String size =request.getParameter("size");
        String color =request.getParameter("color");
        String money =request.getParameter("money");

        Commodity comm = new Commodity();
        comm.setName(name);
        comm.setVersion(version);
        comm.setSpace(space);
        comm.setSize(size);
        comm.setColor(color);
        comm.setMoney(money);

        CommodityService cs = (CommodityService) ServiceFactory.getService(new CommodityServiceImpl());
        List<Commodity> commList = cs.search(comm);
        PrintJson.printJsonObj(response,commList);




    }

    private void update(HttpServletRequest request, HttpServletResponse response) {
        System.out.println("更改商品信息");
        String id = request.getParameter("id");
        String name = request.getParameter("name");
        String version = request.getParameter("version");
        String space = request.getParameter("space");
        String size = request.getParameter("size");
        String color = request.getParameter("color");
        String money = request.getParameter("money");
        String typeId = request.getParameter("typeId");

        Commodity comm = new Commodity();
        comm.setId(id);
        comm.setName(name);
        comm.setVersion(version);
        comm.setSpace(space);
        comm.setSize(size);
        comm.setColor(color);
        comm.setMoney(money);
        comm.setTypeId(typeId);

        CommodityService cs = (CommodityService) ServiceFactory.getService(new CommodityServiceImpl());
        boolean result = cs.update(comm);
        PrintJson.printJsonFlag(response,result);

    }

    private void getCommodityById(HttpServletRequest request, HttpServletResponse response) {
        System.out.println("展示要修改的商品信息");
        String id = request.getParameter("id");
        CommodityService cs = (CommodityService) ServiceFactory.getService(new CommodityServiceImpl());
        Commodity comm  = cs.getCommodityById(id);
        PrintJson.printJsonObj(response,comm);
    }

    private void getCommodityListAndTypeNamByTypeId(HttpServletRequest request, HttpServletResponse response) {
        System.out.println("展示商品信息");
        String typeId = request.getParameter("typeId");

        //第几页
        String pageNo = request.getParameter("pageNo");
        //每页展现的数量
        String pageSizer = request.getParameter("pageSize");
        int pageSize = Integer.valueOf(pageSizer);


        //sql语句中分页查询limit后的数字为 “略过的个数” 和 “每页展现的数量”

        //略过的个数=（第几页-1）*每页展现的数量
        int omSize = (Integer.valueOf(pageNo)-1)*Integer.valueOf(pageSize);

        Map<String,Object> map2 = new HashMap<>();
        map2.put("omSize",omSize);
        map2.put("pageSize",pageSize);
        map2.put("typeId",typeId);

        CommodityService cs = (CommodityService) ServiceFactory.getService(new CommodityServiceImpl());
        Map<String,Object> map = cs.getCommodityListAndTypeNamByTypeId(map2);
        PrintJson.printJsonObj(response,map);
    }

    private void getCommodityTypeList(HttpServletRequest request, HttpServletResponse response) {
        System.out.println("展示商品类型信息");
        CommodityService cs = (CommodityService) ServiceFactory.getService(new CommodityServiceImpl());
        List<CommodityType> commTypeList = cs.getCommodityTypeList();
        PrintJson.printJsonObj(response,commTypeList);
    }


}
