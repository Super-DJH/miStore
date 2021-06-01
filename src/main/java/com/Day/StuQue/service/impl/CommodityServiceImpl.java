package com.Day.StuQue.service.impl;



import com.Day.StuQue.dao.*;

import com.Day.StuQue.domain.*;
import com.Day.StuQue.service.CommodityService;

import com.Day.StuQue.util.DateTimeUtil;
import com.Day.StuQue.util.SqlSessionUtil;
import com.Day.StuQue.util.UUIDUtil;

import java.io.StringReader;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;


public class CommodityServiceImpl implements CommodityService {
    private CommodityDao commodityDao = SqlSessionUtil.getSqlSession().getMapper(CommodityDao.class);
    private CommodityTypeDao commodityTypeDao = SqlSessionUtil.getSqlSession().getMapper(CommodityTypeDao.class);
    private UserDao userDao = SqlSessionUtil.getSqlSession().getMapper(UserDao.class);
    private ShoppingDao shoppingDao = SqlSessionUtil.getSqlSession().getMapper(ShoppingDao.class);
    private Tran_hisDao tran_hisDao = SqlSessionUtil.getSqlSession().getMapper(Tran_hisDao.class);


    @Override
    public List<CommodityType> getCommodityTypeList() {
        List<CommodityType> commTypeList = commodityTypeDao.getCommodityTypeList();

        return commTypeList;
    }

    @Override
    public Map<String,Object> getCommodityListAndTypeNamByTypeId(Map<String,Object> map2) {

        int omSize = (int) map2.get("omSize");
        int pageSize = (int) map2.get("pageSize");

        List<Commodity> commList = commodityDao.getCommodityListByTypeId(map2);

        int total = commodityDao.getTotal();

        String typeId = (String) map2.get("typeId");
        String typeName = commodityTypeDao.getTypeNameByTypeId(typeId);

        Map<String,Object> map = new HashMap<>();
        map.put("commList",commList);
        map.put("typeName",typeName);
        map.put("total",total);
        return map;
    }

    @Override
    public Commodity getCommodityById(String id) {
        Commodity comm = commodityDao.getCommodityById(id);
        return comm;
    }

    @Override
    public boolean update(Commodity comm) {
        boolean flag = true;

        int a = commodityDao.update(comm);
        if (a != 1){
            flag = false;
        }

        return flag;
    }

    @Override
    public List<Commodity> search(Commodity comm) {
        List<Commodity> commList = commodityDao.search(comm);
        return commList;
    }

    @Override
    public boolean add(Commodity comm) {
        boolean flag = true;

        int a = commodityDao.add(comm);
        if (a != 1){
            flag = false;
        }
        return flag;
    }

    @Override
    public boolean delete(String id) {
        boolean flag = true;

        int a = commodityDao.delete(id);
        if (a != 1){
            flag = false;
        }
        return flag;
    }

    @Override
    public boolean addShipping(String commId, String commTypeId, String userName) {

        boolean flag = true;



        Commodity comm = commodityDao.getCommodityById(commId);

        CommodityType commTy = commodityTypeDao.getCommodityTypeById(commTypeId);

        User user = userDao.getUserByName(userName);


        //开始添加购物车
        Shopping sh = new Shopping();
        sh.setId(UUIDUtil.getUUID());
        sh.setUserAddr(user.getAddr());
        sh.setUserName(user.getName());
        sh.setCommName(comm.getName());
        sh.setCommVersion(comm.getVersion());
        sh.setCommSpace(comm.getSpace());
        sh.setCommSize(comm.getSize());
        sh.setCommColor(comm.getColor());
        sh.setCommMoney(comm.getMoney());
        sh.setCommTypeName(commTy.getTypeName());
        sh.setUserId(user.getId());
        sh.setCommId(comm.getId());
        sh.setCommTypeId(commTy.getId());
        int a = shoppingDao.add(sh);
        if (a != 1){
            flag = false;
        }
        return flag ;
    }

    @Override
    public List<Shopping> getShippingListByUserName(String userName) {
        List<Shopping> shList = shoppingDao.getShippingListByUserName(userName);

        return shList;
    }

    @Override
    public Map<String, Object> getMapByTypeName() {

        Map<String,Object> map = new HashMap<>();

        //拿到所有的typeName
        List<CommodityType> commTyList = commodityTypeDao.getCommodityTypeList();
        for (CommodityType commodityType : commTyList) {

            String typeName = commodityType.getTypeName();
            String typeId = commodityType.getId();
            List<Commodity> commList = commodityDao.getListByTypeId(typeId);
            map.put(typeName,commList);
        }

        return map;
    }

    @Override
    public List<Map<String,Object>> tranAddShopping(String commId, String userName) {
    //public boolean  tranAddShopping(String commId, String userName) {


        Commodity comm = commodityDao.getCommodityById(commId);
        String typeId = comm.getTypeId();

        //int flag = 1;
        Shopping sho = new Shopping();
        sho.setUserName(userName);
        sho.setCommName(comm.getName());
        sho.setCommVersion(comm.getVersion());
        sho.setCommSpace(comm.getSpace());
        sho.setCommColor(comm.getColor());

        //int count = shoppingDao.getCount(sho);
        //int total = flag + count;

        CommodityType commTy = commodityTypeDao.getCommodityTypeById(typeId);

        User user = userDao.getUserByName(userName);


        //添加购物车
        Shopping sh = new Shopping();
        sh.setId(UUIDUtil.getUUID());
        sh.setUserAddr(user.getAddr());
        sh.setUserName(user.getName());
        sh.setCommName(comm.getName());
        sh.setCommVersion(comm.getVersion());
        sh.setCommSpace(comm.getSpace());
        sh.setCommSize(comm.getSize());
        sh.setCommColor(comm.getColor());
        sh.setCommMoney(comm.getMoney());
        sh.setCommTypeName(commTy.getTypeName());
        sh.setUserId(user.getId());
        sh.setCommId(comm.getId());
        sh.setCommTypeId(commTy.getId());
        int a = shoppingDao.add(sh);

        if (a != 1){
            System.out.println("失败");
            return null;
        }else {

            List<Shopping> TSList = shoppingDao.getShoppingListGroupByCommId(userName);
            List<Map<String,Object>> mapList = new ArrayList<>();

            for (Shopping shopping : TSList) {

                int total = shoppingDao.getCountGroupBycommId(shopping);
                Map<String,Object> m = new HashMap<>();
                m.put("total",total);
                m.put("sh",shopping);
                mapList.add(m);
            }




            return mapList;
        }


    }

    @Override
    public int sumOne(String[] ids) {
        int flag = 0;
        for (String id : ids) {

            Shopping sh  = shoppingDao.getShoppingById(id);

            int result = shoppingDao.getSumMoney(sh);

            flag += result;
        }





        return flag;
    }

    @Override
    public List<String> tranPay(String[] ids) {
        boolean flag = true;
        List<String> tran_hisIdList = new ArrayList<>();
        //1拿到要结算的商品ids，有的商品数量不为1
        //2遍历ids，通过每一个id拿到commId和userName

        //3通过commId和userName拿到他买的所有这个手机List<Shopping>，遍历
        //4创建交易历史，
        //4.5 返回交易历史的id

        //5拿到所有的shoppingId，通过shoppingId删除信息
        //6 结束遍历


        //7结束遍历
        //8更新购物车数据



        //1
        for (String id : ids) {
            Shopping sh = shoppingDao.getShoppingById(id);
            //2
            String commId = sh.getCommId();
            String userName = sh.getUserName();
            //3
            List<Shopping> shList = shoppingDao.getShListByCidUname(sh);
            for (Shopping shopping : shList) {
                Tran_his th = new Tran_his();
                //4
                th.setId(UUIDUtil.getUUID());
                th.setUserName(shopping.getUserName());
                th.setCommName(shopping.getCommName());
                th.setCommVersion(shopping.getCommVersion());
                th.setCommSpace(shopping.getCommSpace());
                th.setCommSize(shopping.getCommSize());
                th.setCommColor(shopping.getCommColor());
                th.setCommMoney(shopping.getCommMoney());
                th.setCreateTime(DateTimeUtil.getSysTime());
                th.setCreateBy("zhangsan");

                tran_hisIdList.add(th.getId());
                int a = tran_hisDao.add(th);
                if (a != 1){
                    flag = false;
                }
            }
            for (Shopping shopping : shList) {
                String shoppingId = shopping.getId();
                int a = shoppingDao.delete(shoppingId);
                if (a != 1){
                    flag = false;
                }
            }

        }

        if (flag){
            return tran_hisIdList;
        }else {
            return null;
        }


    }

    @Override
    public List<Tran_his> getOrderList(String[] ids) {

        List<Tran_his> thList = new ArrayList<>();
        for (String id : ids) {
            System.out.println("--------------------------------------------------------------");
            System.out.println(id);
            System.out.println("--------------------------------------------------------------");
            Tran_his th = tran_hisDao.getOrderListById(id);
            thList.add(th);
        }



        return thList;
    }

    @Override
    public List<Tran_his> getHisListAll(String userName) {
        List<Tran_his> thList = tran_hisDao.getHisListAll(userName);


        return thList;
    }

    /*@Override
    public List<Map<String, Object>> shoppingShow(String userName) {


        List<Shopping> TSList = shoppingDao.getShoppingListGroupByCommId(userName);

        List<Map<String,Object>> mapList = new ArrayList<>();

            for (Shopping shopping : TSList) {

                int total = shoppingDao.getCountGroupBycommId(shopping);
                System.out.println("--------------------------------------------------=================");
                System.out.println("--------------------------------------------------=================");
                System.out.println(total);
                System.out.println(shopping);
                System.out.println("--------------------------------------------------=================");
                System.out.println("--------------------------------------------------=================");
                Map<String,Object> m = new HashMap<>();
                m.put("total",total);
                m.put("sh",shopping);
                mapList.add(m);
            }

        return mapList;
    }*/
}
