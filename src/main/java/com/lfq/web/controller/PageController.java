package com.lfq.web.controller;

import com.lfq.dto.PageBeanDTO;
import com.lfq.generate.Article;
import com.lfq.service.PageService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

/**
 * @author: 李琪
 * @date: 2020/3/17
 * @description 一般类
 */
@RestController
@Slf4j
@RequestMapping("page")
public class PageController {
    @Value("${pageBeanSize}")
    private Integer  pageBeanSize;
    PageService<Article> service;
    @Autowired
    public void setService(PageService<Article> service) {
        this.service = service;
    }
    @ResponseBody
    @RequestMapping("/{type}/{currentPage}")
    public Object getPage(@PathVariable("type") String type,
                          @PathVariable("currentPage") Integer currentPage){
        PageBeanDTO<Article> pageBeanDTO = new PageBeanDTO<Article>();
        pageBeanDTO.setCurrentPage(currentPage);
        pageBeanDTO.setPageSize(pageBeanSize);
        if (!type.equals("undefined")){
            pageBeanDTO.setType(type);
        }
        try {
            pageBeanDTO = service.selectPage(pageBeanDTO);
            log.info("查询的值为"+pageBeanDTO);
            return  pageBeanDTO;

        }catch (Exception e){
            log.error("分页查询有异常");
        }
        return null;
    }

}
