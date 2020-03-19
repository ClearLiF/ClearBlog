package com.lfq.web.controller;

import com.lfq.config.DirComponent;
import com.lfq.dto.ArticleDTO;
import com.lfq.dto.UploadResultDTO;
import com.lfq.generate.Article;
import com.lfq.generate.User;
import com.lfq.service.BlogService;
import com.lfq.service.SortService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;
import java.io.File;
import java.io.IOException;
import java.util.Date;
import java.util.UUID;

/**
 * @author: clear
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
    /**
     * 无建议(默认)
     * @description 转发到博客主页面
     * @author ClearLi
     * @date 2020/3/19 19:55
     * @param request 返回{用户json，类型json}
     * @return java.lang.Object
     */
    @ResponseBody
    @RequestMapping(value = "toBlogHome")
    public  Object  ToBlogHome(HttpServletRequest request){
        User user = getUser(request);
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
    /**
     * 无建议(默认)
     * @description 转发到博客编辑页面
     * @author ClearLi
     * @date 2020/3/19 19:54
     * @param request 返回ModelAndView 转发到博客编辑页面
     * @return java.lang.Object
     */
    @ResponseBody
    @RequestMapping(value = "toBlogEdit")
    public  Object   ToBlogEdit(HttpServletRequest request){
        //获取当前登录id
        User user =getUser(request);
        ModelAndView mv = new ModelAndView();
        mv.setViewName("views/blog/blogEdit");
        if (user!=null){
            log.info("传入用户"+user);
            mv.addObject("user",user);
        }else {
            log.info("用户为空");
            mv.addObject("user","null");
        }
        mv.addObject("sort",sortService.selectAllByForeignKey());
        //mv.addObject("sort",sortService.selectAllByForeignKey());
        return mv;
    }
    /**
     * 无建议(默认)
     * @description 缓存图片方法
     * @author ClearLi
     * @date 2020/3/19 19:53
     * @param file 缓存图片，待文章保存时将缓存图片取出
     * @return com.lfq.dto.UploadResultDTO
     */
    @ResponseBody
    @PostMapping("imageUpload")
    public UploadResultDTO uploadImage(@RequestParam("editormd-image-file") MultipartFile file ){
        log.info("开始上传图片");
        UploadResultDTO resultDTO = new UploadResultDTO();
        String originalFilename = file.getOriginalFilename();
        //String dest = System.currentTimeMillis() + "_" + originalFilename;
        String s = originalFilename.substring(originalFilename.lastIndexOf("."));
        String dest  =  UUID.randomUUID().toString().concat(s);
        try {
            file.transferTo(new File(uploadDir + dest));
            resultDTO.setSuccess(1);
            resultDTO.setMessage("图片上传成功！");
            resultDTO.setUrl(uploadDirMapper + dest);
            System.out.println("成功");
        } catch (IOException e) {
            log.error(e.getMessage());
            resultDTO.setSuccess(0);
            resultDTO.setMessage("图片上传失败！");
        }
        return resultDTO;
    }

    /**
     * 无建议(默认)
     * @description 保存文章
     * @author ClearLi
     * @date 2020/3/19 19:52
     * @param articleDTO 关于文章的中间信息
     * @param results 返回前端json数据
     * @return java.lang.String
     */
    @RequestMapping(value = "editorContent",method = RequestMethod.POST)
    @ResponseBody
    public String  articleContent(@RequestBody @Valid ArticleDTO articleDTO, BindingResult results){
        if (results.hasErrors()){
            log.error(results.getFieldError().getDefaultMessage());
            return results.getFieldError().getDefaultMessage();
        }
        log.info("保存文章");
        log.info(articleDTO.getHtmlContent());
       blogService.insert(articleDTO, articleDTO.getHtmlContent());

        ModelAndView mv = new ModelAndView();
        return "Success";

    }
    private User getUser(HttpServletRequest request){
       return  (User) request.getSession().getAttribute("user");
    }


}
