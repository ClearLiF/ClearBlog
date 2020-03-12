package com.lfq.service.impl;

import com.lfq.service.BlogService;
import com.lfq.service.base.BaseServiceImpl;
import com.lfq.generate.Article;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 * @author: 李琪
 * @date: 2020/3/12
 * @description 一般类
 */
@Service
@Transactional
public class BlogServiceImpl extends BaseServiceImpl<Article> implements BlogService {


    @Override
    public int deleteByPrimaryKey(String id) {
        return 0;
    }

    @Override
    public int insert(Article record) {
        return 0;
    }

    @Override
    public int insertSelective(Article record) {
        return 0;
    }

    @Override
    public Article selectByPrimaryKey(String id) {
        return null;
    }

    @Override
    public int updateByPrimaryKeySelective(Article record) {
        return 0;
    }

    @Override
    public int updateByPrimaryKey(Article record) {
        return 0;
    }
}
