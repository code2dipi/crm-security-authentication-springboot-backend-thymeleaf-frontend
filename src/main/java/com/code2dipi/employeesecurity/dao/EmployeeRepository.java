package com.code2dipi.employeesecurity.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.code2dipi.employeesecurity.entity.Employee;

public interface EmployeeRepository extends JpaRepository<Employee, Integer> {

	public List<Employee> findAllByOrderByLastNameAsc();
	
	public List<Employee> findByFirstNameContainsOrLastNameContainsAllIgnoreCase(String name, String lName);

}
