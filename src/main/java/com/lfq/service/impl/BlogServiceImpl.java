package com.lfq.service.impl;

import com.lfq.config.DirComponent;
import com.lfq.dto.ArticleDTO;
import com.lfq.generate.Sysfield;
import com.lfq.service.BlogService;
import com.lfq.service.base.BaseServiceImpl;
import com.lfq.generate.Article;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.io.File;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/**
 * @author: 李琪
 * @date: 2020/3/12
 * @description 一般类
 */
@Service
@Slf4j
@Transactional
public class BlogServiceImpl extends BaseServiceImpl<Article> implements BlogService {
    @Value("${uploadDir}")
    private String uploadDir;
    @Value("${uploadDirReal}")
    private String uploadDirReal;
    @Value("${uploadDirRealMapper}")
    protected String uploadDirRealMapper;
    @Value("${uploadDirMapper}")
    protected String uploadDirMapper;
    @Override
    public int deleteByPrimaryKey(String id) {
        return 0;
    }

    @Override
    public int insert(Article record) {
        articlemapper.insertSelective(record);
        return 0;
    }
    public int insert(ArticleDTO record, String html) {
        int status=0;
        Article article = new Article();
        article.setAuthor(record.getUserId());
        article.setAuthority(1);
        article.setTitle(record.getTitle());
        article.setBody(record.getMarkdownContent().replaceAll(uploadDirMapper,uploadDirRealMapper));
        article.setStatu(0);
        article.setViews(0L);
        article.setLikeCount(0L);
        //保存为当前时间
        article.setCreatetime(new Date());
        List<String> list = getMatchString("<img.*?>", html, false);
        if (list.size()!=0){
            status=replacePhoto(list);
            article.setIcon(uploadDirRealMapper+list.get(0));
        }else {
            article.setIcon(uploadDirRealMapper+"clear.png");
        }
        String selective = null;
        try {
            article.setId("");
            articlemapper.insertSelective(article);
            log.info("文章的id为"+article.getId());
            log.info("文章的id为"+record.getTypeId());
            sortArticleMapper.insertSelective(record.getTypeId(),article.getId());
        } catch (Exception e) {
            status=-1;
            log.error("文章保存错误"+this.getClass().getSimpleName());
            log.error(e.getMessage());
        }
        return status;
    }

    @Override
    public List<Sysfield> selectByParentId(String MyColums, String ParentId) {
        return null;
    }

    @Override
    public List<Article> selectArticleByUser(String id, String userId) {
        try {
            return articlemapper.selectArticleByUser(id,userId);
        } catch (Exception e) {
            log.error("读取作者的其他文章出现错误");
            return new ArrayList<>();
        }
    }


    @Override
    public int insertSelective(Article record) {
        return 0;
    }

    @Override
    public Article selectByPrimaryKey(String id) {
        return articlemapper.selectByPrimaryKey(id);
    }

    @Override
    public int updateByPrimaryKeySelective(Article record) {
        return 0;
    }

    @Override
    public int updateByPrimaryKey(Article record) {
        return 0;
    }

    /**
     * 无建议(默认)
     * @description
     * @author ClearLi
     * @date 2020/3/13 8:21
     * @param list
     * @return int
     */
    private int replacePhoto(List<String > list){
        int status=0;
        for (String s : list) {
            log.info("处理的东西"+uploadDir+s);
            File file = new File(uploadDir + s);
            status= replacePhoto(file);
        }
           /* File startFiles=new File(uploadDir);
        File[] files = startFiles.listFiles();
        for (File file : files) {
            if (replacePhoto(file)==-1){
                status=-1;
            }
        }*/
        return status;
    }
    private int  replacePhoto(File startFile){

        // File startFile=new File("D:/IDEAWorkSpace2/cacheImg/1.txt");

        File endDirection=new File(uploadDirReal);
        if(!endDirection.exists()) {
            endDirection.mkdirs();
        }
        File endFile=new File(endDirection+ File.separator+ startFile.getName());
        try {
            if (startFile.renameTo(endFile)) {
                log.info("文件移动正常"+startFile.getAbsolutePath());
            }else {
                log.error("文件移动不正行"+startFile.getAbsolutePath());
            }
        }catch(Exception e) {
            // System.out.println("文件移动出现异常！起始路径：{"+startFile.getAbsolutePath()+"}");
            return -1;
        }
        return 0;
    }
    public static List<String> getMatchString(String regex, String string, boolean isDistinguish){
        List<String> pics = new ArrayList<>();
        Pattern compile = null;
        if (isDistinguish){
            compile = Pattern.compile(regex);
        }else{
            compile = Pattern.compile(regex, Pattern.CASE_INSENSITIVE);
        }
        Matcher matcher = compile.matcher(string);
        while (matcher.find()){
            String img = matcher.group();
//            pics.add(img); // 如果只需要标签，那到这一步就可以了，如果直接需要图片URL，copy代码到最后
            /**
             * reg_html_img_src_http: 获取src中 "" 图片地址的正则("\"http?(.*?)(\"|>|\\s+)")
             *
             * 获取标签中src的正则表达式("src\\s*=\\s*\"?(.*?)(\"|>|\\s+)")
             */
            String reg_html_img_src_http = "src=\\s*\"?(.*?)(\"|>|\\s+)";
            Matcher m = Pattern.compile(reg_html_img_src_http).matcher(img);
            m.find();
            String group = m.group();
            pics.add(group.substring(16, group.length() - 1));
        }
        return pics;
    }

}
