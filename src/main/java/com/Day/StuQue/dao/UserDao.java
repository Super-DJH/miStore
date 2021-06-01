package com.Day.StuQue.dao;

import com.Day.StuQue.domain.User;

import java.util.List;
import java.util.Map;

public interface UserDao {

    List<User> getUserList(Map<String,Object> map);

    User getUserByName(String username);

    int add(User user);

    int delete(String id);

    User getUserById(String id);

    int updateUser(User user);

    int getTotal();
}
