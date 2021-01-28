package com.beibeixyzxyz.simplessm.utils;

import org.mybatis.generator.api.MyBatisGenerator;
import org.mybatis.generator.config.Configuration;
import org.mybatis.generator.config.xml.ConfigurationParser;
import org.mybatis.generator.internal.DefaultShellCallback;

import java.io.File;
import java.util.ArrayList;
import java.util.List;

public class MBGMain {
    public static void main(String[] args) throws Exception{
        // 用于存储所有的警告信息
        List<String> warnings = new ArrayList<String>();
        // 是否重写
        boolean overwrite = true;
        // 加载配置文件
        File configFile = new File(MBGMain.class.getResource("/mbg.xml").toString().substring(6));
        // 实例化配置文件解析器
        ConfigurationParser cp = new ConfigurationParser(warnings);
        // 实例化配置文件
        Configuration config = cp.parseConfiguration(configFile);
        DefaultShellCallback callback = new DefaultShellCallback(overwrite);
        // 实例化生成器
        MyBatisGenerator myBatisGenerator = new MyBatisGenerator(config, callback, warnings);
        // 生成代码
        myBatisGenerator.generate(null);
    }
}
