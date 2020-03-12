package com.lfq;

import static org.junit.Assert.assertTrue;

import org.junit.After;
import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;
import org.springframework.test.context.web.WebAppConfiguration;

/**
 * Unit test for simple App.
 */
@RunWith(SpringRunner.class)
@SpringBootTest(classes = App.class)
@WebAppConfiguration
public class AppTest
{
    @Before
    public void init(){
        System.out.println("开始测试");
    }
    /**
     * Rigorous Test :-)
     */
    @Test
    public void shouldAnswerWithTrue()
    {
        assertTrue( true );
    }
    @After
    public void after(){
        System.out.println("测试结束");
    }
    @Test
    public void test1(){

        System.out.println("dwqdqw");
    }
}
