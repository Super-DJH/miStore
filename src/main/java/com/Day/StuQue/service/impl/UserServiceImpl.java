package com.Day.StuQue.service.impl;



import com.Day.StuQue.dao.UserDao;
import com.Day.StuQue.domain.User;
import com.Day.StuQue.exception.LoginException;
import com.Day.StuQue.service.UserService;
import com.Day.StuQue.util.PrintJson;
import com.Day.StuQue.util.SqlSessionUtil;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;


public class UserServiceImpl implements UserService {
    private UserDao userDao = SqlSessionUtil.getSqlSession().getMapper(UserDao.class);





    //管理
    @Override
    public Map login(String username, String password)throws LoginException {
        boolean result = true;
        if (!"zhangsan".equals(username) || !"123".equals(password)){
            result = false;
            throw new LoginException("账号密码错误");
        }

        User user = userDao.getUserByName(username);

        Map<String,Object> map = new HashMap<>();
        map.put("success",result);
        map.put("user",user);

        return map;
    }

    @Override
    public Map<String,Object>  getUserList(Map<String,Object> map) {


        List<User> userList = userDao.getUserList(map);

        int total = userDao.getTotal();

        Map<String,Object> map2 = new HashMap<>();
        map2.put("userList",userList);
        map2.put("total",total);

        return map2;

    }

    @Override
    public boolean add(User user) {
        boolean flag = true;
        int a = userDao.add(user);
        if (a != 1){
            flag = false;
        }

        return flag;
    }

    @Override
    public boolean delete(String id) {
        boolean flag = true;
        int a = userDao.delete(id);
        if (a != 1){
            flag = false;
        }
        return flag;
    }

    @Override
    public User getUserById(String id) {
        User user = userDao.getUserById(id);

        return user;
    }

    @Override
    public boolean updateUser(User user) {
        boolean flag = true;

        int a = userDao.updateUser(user);
        if (a != 1){
            flag = false;
        }
        return flag;
    }



    //客户
    @Override
    public boolean tranLogin(String userName, String password) {
        boolean flag = false;
        User user = userDao.getUserByName(userName);
        if (user != null && "123".equals(password)){
            flag = true;
        }
        return flag;
    }
}
