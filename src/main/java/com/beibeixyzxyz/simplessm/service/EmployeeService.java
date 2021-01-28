package com.beibeixyzxyz.simplessm.service;

import com.beibeixyzxyz.simplessm.pojo.Employee;

import java.util.List;

public interface EmployeeService {
    Employee selectEmployeeById(Integer id);

    List<Employee> getAllEmployee();

    Integer insertTwoEmployee(Employee employee1,Employee employee2);
}
