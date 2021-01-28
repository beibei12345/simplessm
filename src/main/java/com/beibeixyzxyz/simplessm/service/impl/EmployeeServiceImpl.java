package com.beibeixyzxyz.simplessm.service.impl;

import com.beibeixyzxyz.simplessm.dao.EmployeeMapper;
import com.beibeixyzxyz.simplessm.pojo.Employee;
import com.beibeixyzxyz.simplessm.service.EmployeeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
public class EmployeeServiceImpl implements EmployeeService {
    @Autowired
    private EmployeeMapper employeeMapper;

    @Override
    public Employee selectEmployeeById(Integer id) {
        return employeeMapper.selectByPrimaryKey(id);
    }

    @Override
    public List<Employee> getAllEmployee() {
        return employeeMapper.selectAll();
    }

    @Override
    @Transactional
    public Integer insertTwoEmployee(Employee employee1, Employee employee2) {
        Integer n1 = employeeMapper.updateByPrimaryKey(employee1);
        Integer n2 = employeeMapper.updateByPrimaryKey(employee2);
        return n1+n2;
    }

}
