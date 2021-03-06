package com.lfq.service;


import com.lfq.dto.ArticleDTO;
import com.lfq.generate.Sysfield;
import com.lfq.service.base.IBaseService;
import com.lfq.generate.Article;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * @author: 李琪
 * @date: 2020/3/12
 * @description 一般接口
 */
public interface BlogService extends IBaseService<Article> {

    public int insert(ArticleDTO record, String html);
    List<Sysfield> selectByParentId(String MyColums , String  ParentId);
    List<Article> selectArticleByUser(String id,String userId);


}
