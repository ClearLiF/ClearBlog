package com.lfq.web.controller;

import com.lfq.config.DirComponent;
import com.lfq.dto.ArticleDTO;
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
public class HelloController extends DirComponent {

    private BlogService blogService;
    @Autowired
    public void setBlogService(BlogService blogService) {
        this.blogService = blogService;
    }

    @RequestMapping("hello")
    public String  hello(){
        return "views/list";

    }
    @ResponseBody
    @PostMapping("imageUpload")
    public UploadResultDTO uploadImage(@RequestParam("editormd-image-file") MultipartFile file ){
        System.out.println("--------------无语");
        UploadResultDTO resultDTO = new UploadResultDTO();
        String originalFilename = file.getOriginalFilename();
        //String dest = System.currentTimeMillis() + "_" + originalFilename;
        String s = originalFilename.substring(originalFilename.lastIndexOf("."));
        String dest  =  UUID.randomUUID().toString().concat(s);
        try {
            file.transferTo(new File(uploadDir + dest));
            resultDTO.setSuccess(1);
            resultDTO.setMessage("图片上传成功！");
            resultDTO.setUrl("/uploadTmp/" + dest);
            System.out.println("成功");
        } catch (IOException e) {
            resultDTO.setSuccess(0);
            resultDTO.setMessage("图片上传失败！");
            e.printStackTrace();
        }
        return resultDTO;
    }

    @RequestMapping(value = "editorContent",method = RequestMethod.POST)
    @ResponseBody
    public String  articleContent(@RequestBody ArticleDTO articleDTO){

        /*System.out.println("MD文本");
        System.out.println(article.getMarkdownContent());
        System.out.println("HTML文本");
        System.out.println(article.getHtmlContent());

        ModelAndView mv = new ModelAndView();
        mv.addObject("html",article.getHtmlContent());
        mv.addObject("md",article.getMarkdownContent());
        mv.setViewName("views/blog");*/
        System.out.println("HTML文本");
        System.out.println(articleDTO.getHtmlContent());
        Article article = new Article();
        article.setAuthor("2fbbc3c5-6425-11ea-bffb-00ffc23825e9");
        article.setAuthority(1);
        article.setTitle(articleDTO.getTitle());
        article.setBody(articleDTO.getMarkdownContent().replaceAll(uploadDirMapper,uploadDirRealMapper));
        article.setCreatetime(new Date());
        blogService.insert(article, articleDTO.getHtmlContent());

        ModelAndView mv = new ModelAndView();
        return "Success";
      /*  mv.addObject("html",articleDTD.getHtmlContent());
        mv.addObject("md",articleDTD.getMarkdownContent());
        return  mv;*/
    }
    @RequestMapping("return")
    public ModelAndView returnView(Model model){
        ModelAndView mv = new ModelAndView();
        final Article article = blogService.selectByPrimaryKey("f4da1e5c-64cd-11ea-bffb-00ffc23825e9");

        mv.addObject("md",article.getBody());
        mv.setViewName("views/blog");
        return mv;
    }






   /* public static void main(String[] args) {
        SpringApplication.run(HelloController.class,args);
    }*/
}
