package com.lfq;

import org.junit.Test;

import java.io.File;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.AbstractMap;
import java.util.Date;
import java.util.Map;

/**
 * @author: 李琪
 * @date: 2020/3/13
 * @description 一般类
 */
public class Demo03 {
    @Test
    public void test1(){
        File startFile=new File("D:/IDEAWorkSpace2/cacheImg/cfd52481-05e9-4d43-9b10-5592da013943.png");
        System.out.println(startFile);
    }
    @Test
    public void test2() throws ParseException {
        SimpleDateFormat sdf =   new SimpleDateFormat( "yyyy-MM-dd");
        Date date = sdf.parse( "2017-03-14" );
        System.out.println(sdf.format(date));
        System.out.println(date.toString());
    }

}
