package com.lfq.service.base;

import com.lfq.generate.ArticleMapper;
import com.lfq.generate.UserMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 * @author: 李琪
 * @date: 2020/3/8
 * @description 一般类
 */
@Service
@Transactional
public abstract class BaseServiceImpl<T> implements IBaseService<T> {
    protected ArticleMapper articlemapper;

    protected UserMapper usermapper;
    @Autowired
    public void setArticlemapper(ArticleMapper articlemapper) {
        this.articlemapper = articlemapper;
    }
    @Autowired
    public void setUsermapper(UserMapper usermapper) {
        this.usermapper = usermapper;
    }
}
