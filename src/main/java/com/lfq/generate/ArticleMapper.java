package com.lfq.generate;

import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface ArticleMapper {
    int deleteByPrimaryKey(String id);

    int insert(Article record);

    int  insertSelective(Article record);

    Article selectByPrimaryKey(String id);

    int updateByPrimaryKeySelective(Article record);

    int updateByPrimaryKey(Article record);

    List<Article> selectPageArticle(@Param("begin") Integer begin,
                                    @Param("size") Integer size);
    List<Article> selectPageArticle2(@Param("begin") Integer begin,
                                    @Param("size") Integer size,@Param("sort") String sort);
    List<Article> selectArticleByUser(@Param("id") String id,@Param("userId") String userId);
    int countArticle();
}