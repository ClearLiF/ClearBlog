package com.lfq.web.controller;

import com.lfq.dto.StatusDTO;
import com.lfq.generate.Comment;
import com.lfq.service.CommentService;

import lombok.extern.slf4j.Slf4j;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * @author: CLEARLi
 * @date: 2020/3/21
 * @description 一般类
 */
@Slf4j
@Controller
@RequestMapping("comment")
public class CommentController {
    private CommentService commentService;
    @Autowired
    public void setCommentService(CommentService commentService) {
        this.commentService = commentService;
    }

    @ResponseBody
    @RequestMapping("save")
    public Object saveComment(@RequestParam(value = "comment",defaultValue = "默认评论") String comment,
                              @RequestParam(value = "articleId") String articleId,
                              @RequestParam(value = "pid",defaultValue = "") String pid,
                              @RequestParam(value = "user",defaultValue = "f922bcac-6b89-11ea-9647-00ffc23825e9") String userId){
        //System.out.println(comment+articleId+pid+userId);
        Map<String ,Object> map = new HashMap<>();
        Date date = new Date();
        try {
           String insertComment = commentService.insertComment(comment,articleId,pid,userId,date);
            map.put("time", date.getTime());
            log.info("commentId"+insertComment);
            map.put("commentId",insertComment);
            map.put("status",StatusDTO.REGISTER_STATUS_SUCCESS);
        } catch (Exception e) {
           log.error(e.getMessage());
           map.put("status", StatusDTO.REGISTER_STATUS_FLA);
        }


        return map;
    }
    @RequestMapping("getComment")
    @ResponseBody
    public Object getComment(String articleId){
        log.info("文章的id"+articleId);
        // System.out.println("评论大小"+ comments.size());
        //Map<String,Object> map = new HashMap<>();
        //map.put("comments",comments);
        /* for (Comment comment : comments) {
            System.out.println(comment.getParentComment());
            if (comment.getParentComment()==null) {
                comment.setParentComment("0");
                System.out.println("----"+comment.getParentComment());
            }
        }*/
        return commentService.selectByArticle(articleId);
    }
}
