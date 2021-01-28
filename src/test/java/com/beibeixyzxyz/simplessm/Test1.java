package com.beibeixyzxyz.simplessm;

import com.beibeixyzxyz.simplessm.dao.EmployeeMapper;
import com.beibeixyzxyz.simplessm.pojo.Employee;
import com.beibeixyzxyz.simplessm.service.EmployeeService;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class Test1 {
    @Test
    public void test1(){
        ClassPathXmlApplicationContext ctx = new ClassPathXmlApplicationContext("classpath:applicationContext.xml");
        EmployeeMapper bean = ctx.getBean(EmployeeMapper.class);
        System.out.println(bean.selectAll());
        ctx.close();
    }

}