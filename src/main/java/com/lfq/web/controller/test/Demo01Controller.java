package com.lfq.web.controller.test;

import com.lfq.config.DirComponent;
import com.lfq.dto.ArticleDTD;
import com.lfq.dto.UploadResultDTO;
import com.lfq.generate.Article;
import com.lfq.service.BlogService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import java.io.File;
import java.io.IOException;
import java.util.Date;
import java.util.UUID;

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
