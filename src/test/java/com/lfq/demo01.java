package com.lfq;

import com.lfq.service.UserService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;
import org.springframework.test.context.web.WebAppConfiguration;

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

    @Test
    public void test1(){
        System.out.println(userService);

        System.out.println(userService.selectByPrimaryKey("2fbbc3c5-6425-11ea-bffb-00ffc23825e9"));


    }

}
