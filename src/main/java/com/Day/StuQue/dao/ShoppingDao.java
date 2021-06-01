package com.Day.StuQue.dao;


import com.Day.StuQue.domain.CommodityType;
import com.Day.StuQue.domain.Shopping;

import java.util.List;

public interface ShoppingDao {


    int add(Shopping sh);

    List<Shopping> getShippingListByUserName(String userName);

    int getCount(Shopping sh);

    List<Shopping> getShoppingListGroupByCommId(String userName);

    int getCountGroupBycommId(Shopping shopping);

    Shopping getShoppingById(String id);

    int getSumMoney(Shopping sh);

    List<Shopping> getShListByCidUname(Shopping sh);

    int delete(String shoppingId);
}
