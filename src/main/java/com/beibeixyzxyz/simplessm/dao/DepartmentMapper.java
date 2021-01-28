package com.beibeixyzxyz.simplessm.dao;

import com.beibeixyzxyz.simplessm.pojo.Department;
import java.util.List;

public interface DepartmentMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Department record);

    Department selectByPrimaryKey(Integer id);

    List<Department> selectAll();

    int updateByPrimaryKey(Department record);
}