package com.lfq;

import lombok.extern.slf4j.Slf4j;
import org.junit.Test;

/**
 * @author: 李琪
 * @date: 2020/3/16
 * @description 一般类
 */
@Slf4j
public class Demo04 {
    @Test
    public void test1(){
        log.error("测试");
    }
    @Test
    public void test2(){
         String uuid="3a056df1-81bc-4bdd-a8cc-a4e7e77c47d8.png";

            if (uuid.matches("(\\w{8}-\\w{4}-\\w{4}-\\w{4}-\\w{12}\\.\\w{3}?)")){
                System.out.println("匹配上了");
            }


    }
}
