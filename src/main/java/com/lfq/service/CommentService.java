package com.lfq.service;


import com.lfq.dto.ArticleDTO;
import com.lfq.generate.Article;
import com.lfq.generate.Comment;
import com.lfq.generate.Sysfield;
import com.lfq.service.base.IBaseService;

import java.util.Date;
import java.util.List;

/**
 * @author: 李琪
 * @date: 2020/3/12
 * @description 一般接口
 */
public interface CommentService extends IBaseService<Comment> {

    public String   insertComment(String comment, String articleId, String pid, String userId, Date date);
    List<Comment> selectByArticle(String article);
}
