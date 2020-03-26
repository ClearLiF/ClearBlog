package com.lfq.service.base;

import com.lfq.generate.*;
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
    protected SysfieldMapper sysfieldMapper;
    protected UserMapper usermapper;
    protected SortArticleMapper sortArticleMapper;
    protected CommentMapper commentMapper;
    @Autowired
    public void setCommentMapper(CommentMapper commentMapper) {
        this.commentMapper = commentMapper;
    }

    @Autowired
    public void setSortArticleMapper(SortArticleMapper sortArticleMapper) {
        this.sortArticleMapper = sortArticleMapper;
    }

    @Autowired
    public void setSysfieldMapper(SysfieldMapper sysfieldMapper) {
        this.sysfieldMapper = sysfieldMapper;
    }
    @Autowired
    public void setArticlemapper(ArticleMapper articlemapper) {
        this.articlemapper = articlemapper;
    }
    @Autowired
    public void setUsermapper(UserMapper usermapper) {

        this.usermapper = usermapper;
    }


}
