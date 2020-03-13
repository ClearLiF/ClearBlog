package com.lfq.config;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurationSupport;

/**
 * @author: 李琪
 * @date: 2020/3/11
 * @description 一般类
 */
@Configuration

public class WebMvcConfig extends WebMvcConfigurationSupport {
    @Value("${uploadDirReal}")
    private String uploadDirReal;
    @Value("${uploadDir}")
    private String uploadDir;
    @Override
    public void addResourceHandlers(ResourceHandlerRegistry registry) {
        //  /uploads/  映射到D盘的uploads文件夹下
        registry.addResourceHandler("/uploads/**").addResourceLocations("file:"+uploadDirReal);
        registry.addResourceHandler("/uploadTmp/**").addResourceLocations("file:"+uploadDir);
        //  js css 所在文件static映射，方便页面引用js css文件
        registry.addResourceHandler("/**").addResourceLocations("classpath:/static/");
        super.addResourceHandlers(registry);

    }
}