package com.code2dipi.employeesecurity.service;

import java.util.List;

import com.code2dipi.employeesecurity.entity.Employee;

public interface EmployeeService {

	public List<Employee> findAll();
	
	public Employee findById(int theId);
	
	public void save(Employee theEmployee);
	
	public void deleteById(int theId);

	public List<Employee> searchBy(String theName);
	
}
