package com.code2dipi.employeesecurity.dao;

import com.code2dipi.employeesecurity.entity.Role;

public interface RoleDao {

	public Role findRoleByName(String theRoleName);
	
}
