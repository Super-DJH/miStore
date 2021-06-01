package com.Day.StuQue.service;


import com.Day.StuQue.domain.User;
import com.Day.StuQue.exception.LoginException;

import java.util.List;
import java.util.Map;

public interface UserService {


    Map login(String username, String password) throws LoginException;

    Map<String,Object> getUserList(Map<String,Object> map);

    boolean add(User user);

    boolean delete(String id);

    User getUserById(String id);

    boolean updateUser(User user);

    boolean tranLogin(String userName, String password);
}
