package com.Day.StuQue.dao;


import com.Day.StuQue.domain.Commodity;

import java.util.List;
import java.util.Map;

public interface CommodityDao {


    List<Commodity> getCommodityListByTypeId(Map<String,Object> map2);

    Commodity getCommodityById(String id);

    int update(Commodity comm);

    List<Commodity> search(Commodity comm);

    int getTotal();

    int add(Commodity comm);

    int delete(String id);

    List<Commodity> getListByTypeId(String typeId);
}
