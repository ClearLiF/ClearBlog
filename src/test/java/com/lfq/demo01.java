package com.lfq;

import com.lfq.generate.Article;
import com.lfq.service.BlogService;
import com.lfq.service.UserService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;
import org.springframework.test.context.web.WebAppConfiguration;

import java.util.Date;

/**
 * @author: 李琪
 * @date: 2020/3/12
 * @description 一般类
 */
@RunWith(SpringRunner.class)
@SpringBootTest(classes = App.class)
public class demo01   {
    @Autowired
    private UserService userService ;
    @Autowired
    private BlogService blogService;
    @Test
    public void test1(){
        System.out.println(userService);
        System.out.println(userService.selectByPrimaryKey("2fbbc3c5-6425-11ea-bffb-00ffc23825e9"));
    }
    @Test
    public void test2(){
        Article article = new Article();
        article.setAuthor("2fbbc3c5-6425-11ea-bffb-00ffc23825e9");
        article.setAuthority(1);
        article.setTitle("测试标题");
        article.setBody("\"dwqdqw\\n\" +\n" +
                "                \"## qwdqwdq\\n\" +\n" +
                "                \"###### qwdqdqw\\n\" +\n" +
                "                \"~~wqdqdqw~~\\n\" +\n" +
                "                \"![](/uploads/e82d65d1-2f9b-4ae3-980a-cc384fa1bf48)");
        article.setCreatetime(new Date());
        blogService.insert(article);

    }
    @Test
    public void test3(){
        System.out.println(blogService.selectByPrimaryKey("1d56dc5b-645e-11ea-bffb-00ffc23825e9"));

    }

}
