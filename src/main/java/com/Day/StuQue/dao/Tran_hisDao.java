package com.Day.StuQue.dao;


import com.Day.StuQue.domain.Tran_his;

import java.util.List;

public interface Tran_hisDao {


    int add(Tran_his th);

    Tran_his getOrderListById(String id);

    List<Tran_his> getHisListAll(String userName);
}
