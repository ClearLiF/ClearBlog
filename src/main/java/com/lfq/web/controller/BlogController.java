package com.lfq.web.controller;

import com.lfq.config.DirComponent;
import com.lfq.generate.Sysfield;
import com.lfq.generate.User;
import com.lfq.service.BlogService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

/**
 * @author: 李琪
 * @date: 2020/3/9
 * @description 一般类
 */
@Controller//声明rest风格的控制器
@RequestMapping("blog")
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


    @RequestMapping(value = "toBlogHome")
    public  String   ToBlogHome(HttpServletRequest request, Model model){
        User user = (User) request.getSession().getAttribute("user");
        if (user!=null){
            model.addAttribute("user",user);
        }else {
            model.addAttribute("user","null");
        }
        return "views/blog/blogHome";
    }


}
