package com.code2dipi.employeesecurity.service;

import org.springframework.security.core.userdetails.UserDetailsService;

import com.code2dipi.employeesecurity.entity.User;
import com.code2dipi.employeesecurity.user.CrmUser;

public interface UserService extends UserDetailsService {

	public User findByUserName(String userName);

	public void save(CrmUser crmUser);
}
