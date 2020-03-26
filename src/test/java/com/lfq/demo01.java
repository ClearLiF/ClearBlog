package com.lfq;

import com.lfq.generate.Article;
import com.lfq.generate.Comment;
import com.lfq.generate.Sort;
import com.lfq.generate.User;
import com.lfq.service.BlogService;
import com.lfq.service.CommentService;
import com.lfq.service.SortService;
import com.lfq.service.UserService;
import lombok.extern.slf4j.Slf4j;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;
import org.springframework.test.context.web.WebAppConfiguration;

import java.util.Date;
import java.util.List;

/**
 * @author: 李琪
 * @date: 2020/3/12
 * @description 一般类
 */
@RunWith(SpringRunner.class)
@SpringBootTest(classes = App.class)
@Slf4j
public class demo01   {
    @Autowired
    private UserService userService ;
    @Autowired
    private BlogService blogService;
    @Autowired
    private SortService sortService;

    @Test
    public void test1(){
        log.info("测试");
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
    @Test
    public void test4(){
        System.out.println("测试下划线-----------------");
        System.out.println(blogService.selectByParentId("City", "610000"));

    }
    @Test
    public void test5(){
        System.out.println("测试下划线-----------------");
        System.out.println(userService.insertSelective(new User()));
        //System.out.println(userService.findUsername("clear1"));
    }
    @Test
    public void test6(){
        System.out.println(userService.loginUser("", "111111","l18512863192@gmail.com"));
    }
    @Test
    public void test7(){
        List<Sort> sorts = sortService.selectAllByForeignKey();
        for (Sort sort : sorts) {
            System.out.println(sort);
            System.out.println("分割线-----------------------");
            System.out.println(sort.getSorts().size());
        }
    }
    @Autowired
    private CommentService commentService;
    @Test
    public void test8(){
        List<Comment> comments = commentService.selectByArticle("3cf35b3e-6b59-11ea-9647-00ffc23825e9");
        System.out.println(comments.size());
       // System.out.println(comments);
        for (Comment comment : comments) {
            System.out.println(comment);
        }
    }

}
