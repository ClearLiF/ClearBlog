package com.lfq.web.controller.test;

import com.lfq.config.DirComponent;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

/**
 * @author: 李琪
 * @date: 2020/3/9
 * @description 一般类
 */
@Controller//声明rest风格的控制器
//@EnableAutoConfiguration// 相当于写了配置文件
@RequestMapping("test")
public class Demo01Controller extends DirComponent {


    @RequestMapping("home")
    public String  hello(){
        return "views/home/index";

    }

}
