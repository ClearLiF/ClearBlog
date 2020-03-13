package com.lfq.service.impl;

import com.lfq.service.BlogService;
import com.lfq.service.base.BaseServiceImpl;
import com.lfq.generate.Article;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.io.File;
import java.util.ArrayList;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/**
 * @author: 李琪
 * @date: 2020/3/12
 * @description 一般类
 */
@Service
@Transactional
public class BlogServiceImpl extends BaseServiceImpl<Article> implements BlogService {
    @Value("${uploadDir}")
    private String uploadDir;
    @Value("${uploadDirReal}")
    private String uploadDirReal;
    @Override
    public int deleteByPrimaryKey(String id) {
        return 0;
    }

    @Override
    public int insert(Article record) {

        articlemapper.insertSelective(record);
        int i = replacePhoto(record.getBody());
        return 0;
    }
    public int insert(Article record,String html) {
        List<String> list = getMatchString("<img.*?>", html, false);

        articlemapper.insertSelective(record);
        int i = replacePhoto(record.getBody());
        return 0;
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
     * @description 将缓存中的图片转移到永久路径下
     * @author ClearLi
     * @date 2020/3/12 22:47
     * @param s 判断的字符串
     * @return int
     */

    private int replacePhoto(String s ){
        int status=0;
        if (s.contains("![]")){
            File startFiles=new File(uploadDir);
            File[] files = startFiles.listFiles();
            for (File file : files) {
                if (replacePhoto(file)==-1){
                    status=-1;
                }
            }
        }
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
                System.out.println("文件移动正常");
            }else {
                System.out.println("不正常");
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
            pics.add(group.substring(5, group.length() - 1));
        }
        return pics;
    }

}
