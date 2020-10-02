package com.code2dipi.employeesecurity.dao;

import com.code2dipi.employeesecurity.entity.User;

public interface UserDao {

    public User findByUserName(String userName);
    
    public void save(User user);
    
}
