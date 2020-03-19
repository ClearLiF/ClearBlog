package com.lfq.web.controller;

import com.lfq.config.DirComponent;
import com.lfq.generate.Sysfield;
import com.lfq.generate.User;
import com.lfq.service.BlogService;
import com.lfq.service.SortService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

/**
 * @author: 李琪
 * @date: 2020/3/9
 * @description 一般类
 */
@Controller//声明rest风格的控制器
@RequestMapping("blog")
@Slf4j
//@EnableAutoConfiguration// 相当于写了配置文件
public class BlogController extends DirComponent {

    private BlogService blogService;
    @Autowired
    public void setBlogService(BlogService blogService) {
        this.blogService = blogService;
    }
    private SortService sortService;
    @Autowired
    public void setSortService(SortService sortService) {
        this.sortService = sortService;
    }
    @RequestMapping("home")
    public String  hello(){
        return "views/home/index";

    }

    @ResponseBody
    @RequestMapping(value = "toBlogHome")
    public  Object   ToBlogHome(HttpServletRequest request, Model model){
        User user = (User) request.getSession().getAttribute("user");
        ModelAndView mv = new ModelAndView();
        mv.setViewName("views/blog/blogHome");
        if (user!=null){
            log.info("传入用户"+user);
            mv.addObject("user",user);
        }else {
            mv.addObject("user","null");
        }
        mv.addObject("sort",sortService.selectAllByForeignKey());
        return mv;
    }


}
