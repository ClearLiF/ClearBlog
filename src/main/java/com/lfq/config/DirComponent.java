package com.lfq.config;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Component;

/**
 * @author: 李琪
 * @date: 2020/3/13
 * @description 一般类
 */
@Component
public class DirComponent {
    @Value("${uploadDir}")
    protected String uploadDir;

    /*
    * uploadDirMapper=/uploadTmp/
uploadDirRealMapper=/uploads/
    * */
    @Value("${uploadDirMapper}")
    protected String uploadDirMapper;
    @Value("${uploadDirRealMapper}")
    protected String uploadDirRealMapper;
}
