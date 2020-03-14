package com.lfq.web.controller;

import com.lfq.config.DirComponent;
import com.lfq.generate.Sysfield;
import com.lfq.service.BlogService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

/**
 * @author: 李琪
 * @date: 2020/3/9
 * @description 一般类
 */
@Controller//声明rest风格的控制器
//@EnableAutoConfiguration// 相当于写了配置文件
public class BlogController extends DirComponent {

    private BlogService blogService;
    @Autowired
    public void setBlogService(BlogService blogService) {
        this.blogService = blogService;
    }

    @RequestMapping("home")
    public String  hello(){
        return "views/home/index";

    }
    /**
     * 无建议(默认)
     * @description 只允许post提交的查询地址
     * @author ClearLi
     * @date 2020/3/14 14:52
     * @param parentiD 父类id
     * @param MyColums 类型
     * @return java.lang.Object
     */
    @ResponseBody
    @RequestMapping(value = "getAddress",method = RequestMethod.POST,produces = "application/json;charset=UTF-8")
    public   Object GetAddress(String  parentiD, String MyColums){
        System.out.println(MyColums +"  测试 "+ parentiD);
        List<Sysfield> select = blogService.selectByParentId(MyColums, parentiD);
        System.out.println(select.size());
        return select;
    }


}
