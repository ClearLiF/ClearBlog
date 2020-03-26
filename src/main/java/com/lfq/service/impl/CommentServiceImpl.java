package com.lfq.service.impl;

import com.lfq.generate.Comment;
import com.lfq.service.CommentService;
import com.lfq.service.base.BaseServiceImpl;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.Date;
import java.util.List;

/**
 * @author: CLEARLi
 * @date: 2020/3/21
 * @description 一般类
 */
@Service
@Slf4j
@Transactional
public class CommentServiceImpl extends BaseServiceImpl<Comment> implements CommentService {
    @Override
    public int deleteByPrimaryKey(String id) {
        return 0;
    }

    @Override
    public int insert(Comment record) {
        return 0;
    }

    @Override
    public int insertSelective(Comment record) {
        return commentMapper.insertSelective(record);
    }

    @Override
    public Comment selectByPrimaryKey(String id) {
        return null;
    }

    @Override
    public int updateByPrimaryKeySelective(Comment record) {
        return 0;
    }

    @Override
    public int updateByPrimaryKey(Comment record) {
        return 0;
    }

    @Override
    public String   insertComment(String comment, String articleId, String pid, String userId, Date date) {
        Comment commentObj = new Comment();
        commentObj.setBody(comment);
        commentObj.setArticleId(articleId);
        commentObj.setParentComment(pid);
        commentObj.setUseId(userId);
        commentObj.setCreatetime(date);
        log.info(commentObj.toString());
        commentMapper.insertSelective(commentObj);
        return commentObj.getId();
    }
    public List<Comment> selectByArticle(String article){
        return commentMapper.selectByArticle(article);
    }
}
