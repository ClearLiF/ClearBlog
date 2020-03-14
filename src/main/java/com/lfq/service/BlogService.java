package com.lfq.service;


import com.lfq.generate.Sysfield;
import com.lfq.service.base.IBaseService;
import com.lfq.generate.Article;

import java.util.List;

/**
 * @author: 李琪
 * @date: 2020/3/12
 * @description 一般接口
 */
public interface BlogService extends IBaseService<Article> {

    public int insert(Article record,String html);
    List<Sysfield> selectByParentId(String MyColums , String  ParentId);
}
