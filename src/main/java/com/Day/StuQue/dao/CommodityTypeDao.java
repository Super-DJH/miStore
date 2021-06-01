package com.Day.StuQue.dao;


import com.Day.StuQue.domain.CommodityType;

import java.util.List;

public interface CommodityTypeDao {


    List<CommodityType> getCommodityTypeList();

    String getTypeNameByTypeId(String id);

    CommodityType getCommodityTypeById(String commTypeId);

}
