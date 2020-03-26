package com.lfq.service.impl;

import com.lfq.dto.PageBeanDTO;
import com.lfq.generate.Article;
import com.lfq.generate.ArticleMapper;
import com.lfq.service.PageService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * @author: 李琪
 * @date: 2020/3/17
 * @description 一般类
 */
@Service
public class PageServiceImpl implements PageService<Article> {
    ArticleMapper articleMapper;
    @Autowired
    public void setArticleMapper(ArticleMapper articleMapper) {
        this.articleMapper = articleMapper;
    }
    @Override
    public PageBeanDTO<Article> selectPage(PageBeanDTO<Article> pageBeanDTO) {
        int start = (pageBeanDTO.getCurrentPage()-1)*pageBeanDTO.getPageSize();
        int length= pageBeanDTO.getPageSize();
        pageBeanDTO.setRows(articleMapper.selectPageArticle2(start,length,pageBeanDTO.getType()));
        int countArticle = articleMapper.countArticle();
        int pageNum = countArticle%pageBeanDTO.getPageSize()==0
                        ? countArticle/pageBeanDTO.getPageSize():
                        countArticle/pageBeanDTO.getPageSize()+1;
        pageBeanDTO.setTotalPages(pageNum);
        return pageBeanDTO;
    }
}
