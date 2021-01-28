package com.beibeixyzxyz.simplessm.controller;

import com.beibeixyzxyz.simplessm.pojo.Employee;
import com.beibeixyzxyz.simplessm.service.EmployeeService;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class EmployeeController {
    @Autowired
    private EmployeeService employeeService;

    @RequestMapping("/getAEmployee")
    public String getAEmployee(@Param("id") Integer id, Model model){
        Employee employee = employeeService.selectEmployeeById(id);
        model.addAttribute("emp",employee);
        return "empDetails";
    }

    @RequestMapping("/list")
    public String getAllEmployee(Model model){
        model.addAttribute("emps",employeeService.getAllEmployee());
        return "list";
    }
}
