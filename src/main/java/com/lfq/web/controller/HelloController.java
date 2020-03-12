package com.lfq.web.controller;

import com.lfq.dto.Article;
import com.lfq.dto.UploadResultDTO;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.UUID;

/**
 * @author: 李琪
 * @date: 2020/3/9
 * @description 一般类
 */
@Controller//声明rest风格的控制器
//@EnableAutoConfiguration// 相当于写了配置文件
public class HelloController {
    @Value("${uploadDir}")
    private String uploadDir;

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

        String dest  =  UUID.randomUUID().toString();
        try {
            file.transferTo(new File(uploadDir + dest));
            resultDTO.setSuccess(1);
            resultDTO.setMessage("图片上传成功！");
            resultDTO.setUrl("/uploads/" + dest);
            System.out.println("成功");
        } catch (IOException e) {
            resultDTO.setSuccess(0);
            resultDTO.setMessage("图片上传失败！");
            e.printStackTrace();
        }
        return resultDTO;
    }

    @RequestMapping(value = "editorContent",method = RequestMethod.POST)
    public ModelAndView articleContent(@RequestBody Article article){
        System.out.println("MD文本");
        System.out.println(article.getMarkdownContent());
        System.out.println("HTML文本");
        System.out.println(article.getHtmlContent());

        ModelAndView mv = new ModelAndView();
        mv.addObject("html",article.getHtmlContent());
        mv.addObject("md",article.getMarkdownContent());
        mv.setViewName("views/blog");
        return  mv;
    }
    @RequestMapping("return")
    @ResponseBody
    public ModelAndView returnView(Model model){
        ModelAndView mv = new ModelAndView();
        mv.addObject("md","dwqdqw\n" +
                "## qwdqwdq\n" +
                "###### qwdqdqw\n" +
                "~~wqdqdqw~~\n" +
                "![](/uploads/e82d65d1-2f9b-4ae3-980a-cc384fa1bf48)");
        mv.addObject("html","<h2 id=\"h2-u540Au889Cu5E26u6211\"><a name=\"吊袜带我\" class=\"reference-link\"></a><span class=\"header-link octicon octicon-link\"></span>吊袜带我</h2>\n");
        mv.setViewName("views/blog");
        return mv;
    }






   /* public static void main(String[] args) {
        SpringApplication.run(HelloController.class,args);
    }*/
}
