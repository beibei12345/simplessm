package com.beibeixyzxyz.simplessm.dao;

import com.beibeixyzxyz.simplessm.pojo.Employee;
import java.util.List;

public interface EmployeeMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Employee record);

    Employee selectByPrimaryKey(Integer id);

    List<Employee> selectAll();

    int updateByPrimaryKey(Employee record);
}