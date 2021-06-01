package com.Day.StuQue.service;


import com.Day.StuQue.domain.Commodity;
import com.Day.StuQue.domain.CommodityType;
import com.Day.StuQue.domain.Shopping;
import com.Day.StuQue.domain.Tran_his;

import java.util.List;
import java.util.Map;

public interface CommodityService {


    List<CommodityType> getCommodityTypeList();

    Map<String,Object> getCommodityListAndTypeNamByTypeId(Map<String,Object> map2);

    Commodity getCommodityById(String id);

    boolean update(Commodity comm);

    List<Commodity> search(Commodity comm);

    boolean add(Commodity comm);

    boolean delete(String id);

    boolean addShipping(String commId, String commTypeId, String userName);

    List<Shopping> getShippingListByUserName(String userName);

    Map<String, Object> getMapByTypeName();

    List<Map<String,Object>> tranAddShopping(String commId, String userName);
    //boolean  tranAddShopping(String commId, String userName);

    int sumOne(String[] ids);

    List<String> tranPay(String[] ids);

    List<Tran_his> getOrderList(String[] ids);

    List<Tran_his> getHisListAll(String userName);

    //List<Map<String, Object>> shoppingShow(String userName);
}
