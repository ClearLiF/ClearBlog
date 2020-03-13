package com.lfq;

import org.junit.Test;

import java.io.File;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/**
 * @author: 李琪
 * @date: 2020/3/12
 * @description 一般类
 */
public class Demo02 {
    @Test
    public void test1(){

        //![](/uploads/678c2632-7e8e-4896-a40a-a62b2f13984a.png)
        //D:/IDEAWorkSpace2/cacheImg/
        //D:/IDEAWorkSpace2/blogImg/
        String s= "<h1 id=\"h1-u4F4Eu6D3Cu77A7u5F97u8D77u6211\"><a name=\"低洼瞧得起我\" class=\"reference-link\"></a><span class=\"header-link octicon octicon-link\"></span>低洼瞧得起我</h1><h3 id=\"h3-u4F4Eu6D3Cu77A7u5F97u8D77u6211\"><a name=\"低洼瞧得起我\" class=\"reference-link\"></a><span class=\"header-link octicon octicon-link\"></span>低洼瞧得起我</h3><p>低洼瞧得起我<br><img src=\"/uploadTmp/5bb4f000-3490-40b8-a300-a7cdce69ebba.png\" alt=\"\"><br>低洼瞧得起我<img src=\"/uploads/86050000-b5f0-40de-9df7-4cd3d3341b42.png\" alt=\"\"></p>\n";
        // File file = new File() String regex = "(?<=one)(?=123)";
        String regs = "!\\[]\\(";         //<img  src='aaa.jpg' /><img src=bbb.png/>
        Pattern pattern = Pattern.compile("<img\\s+src=(?:['\"])?(?<src>\\w+.(jpg|png))(?:['\"])?\\s*/>");
        Matcher matcher = pattern.matcher(s);
        while (matcher.find()) {
            System.out.println("dwqdwqd");
            System.out.println(matcher.group("src"));
        }
         List<String> list = getMatchString("<img.*?>", s, false);
        System.out.println(list.get(0));
        System.out.println(s.matches(regs));
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
    public int replacePhoto(String s ){
        int status=0;
        if (s.contains("![]")){
            File startFiles=new File("D:/IDEAWorkSpace2/cacheImg/");
            File[] files = startFiles.listFiles();
            for (File file : files) {
                if (replacePhoto(file)==-1){
                    status=-1;
                }
            }
        }
        return status;
    }
    public int  replacePhoto(File startFile){

           // File startFile=new File("D:/IDEAWorkSpace2/cacheImg/1.txt");

            File endDirection=new File("D:/IDEAWorkSpace2/blogImg/");
            if(!endDirection.exists()) {
                endDirection.mkdirs();
            }
            File endFile=new File(endDirection+ File.separator+ startFile.getName());
            try {
                if (startFile.renameTo(endFile)) {
                    //System.out.println("文件移动成功！目标路径：{"+endFile.getAbsolutePath()+"}");
                } else {
                    return -1;
                    //System.out.println("文件移动失败！起始路径：{"+startFile.getAbsolutePath()+"}");
                }
            }catch(Exception e) {
               // System.out.println("文件移动出现异常！起始路径：{"+startFile.getAbsolutePath()+"}");
                return -1;
            }
        return 0;
    }
    public static void main(String[] args)  {
        MyClass myClass1 = new MyClass();
        MyClass myClass2 = new MyClass();
        System.out.println(myClass1.i);
        System.out.println(myClass1.j);
        System.out.println(myClass2.i);
        System.out.println(myClass2.j);

    }

}
class MyClass {
    public final double i = Math.random();
    public static double j = Math.random();
}